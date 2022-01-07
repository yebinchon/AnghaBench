; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_remember_stamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_remember_stamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_sock = type { i64 }
%struct.tcp_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.rtable = type { i64, %struct.inet_peer* }
%struct.inet_peer = type { i64, i64 }

@TCP_PAWS_MSL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_v4_remember_stamp(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inet_sock*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.rtable*, align 8
  %7 = alloca %struct.inet_peer*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.inet_sock* @inet_sk(%struct.sock* %9)
  store %struct.inet_sock* %10, %struct.inet_sock** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i64 @__sk_dst_get(%struct.sock* %13)
  %15 = inttoptr i64 %14 to %struct.rtable*
  store %struct.rtable* %15, %struct.rtable** %6, align 8
  store %struct.inet_peer* null, %struct.inet_peer** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.rtable*, %struct.rtable** %6, align 8
  %17 = icmp ne %struct.rtable* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.rtable*, %struct.rtable** %6, align 8
  %20 = getelementptr inbounds %struct.rtable, %struct.rtable* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.inet_sock*, %struct.inet_sock** %4, align 8
  %23 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18, %1
  %27 = load %struct.inet_sock*, %struct.inet_sock** %4, align 8
  %28 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.inet_peer* @inet_getpeer(i64 %29, i32 1)
  store %struct.inet_peer* %30, %struct.inet_peer** %7, align 8
  store i32 1, i32* %8, align 4
  br label %43

31:                                               ; preds = %18
  %32 = load %struct.rtable*, %struct.rtable** %6, align 8
  %33 = getelementptr inbounds %struct.rtable, %struct.rtable* %32, i32 0, i32 1
  %34 = load %struct.inet_peer*, %struct.inet_peer** %33, align 8
  %35 = icmp ne %struct.inet_peer* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.rtable*, %struct.rtable** %6, align 8
  %38 = call i32 @rt_bind_peer(%struct.rtable* %37, i32 1)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.rtable*, %struct.rtable** %6, align 8
  %41 = getelementptr inbounds %struct.rtable, %struct.rtable* %40, i32 0, i32 1
  %42 = load %struct.inet_peer*, %struct.inet_peer** %41, align 8
  store %struct.inet_peer* %42, %struct.inet_peer** %7, align 8
  br label %43

43:                                               ; preds = %39, %26
  %44 = load %struct.inet_peer*, %struct.inet_peer** %7, align 8
  %45 = icmp ne %struct.inet_peer* %44, null
  br i1 %45, label %46, label %93

46:                                               ; preds = %43
  %47 = load %struct.inet_peer*, %struct.inet_peer** %7, align 8
  %48 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %49, %53
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %46
  %57 = load %struct.inet_peer*, %struct.inet_peer** %7, align 8
  %58 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TCP_PAWS_MSL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i64 (...) @get_seconds()
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %56
  %65 = load %struct.inet_peer*, %struct.inet_peer** %7, align 8
  %66 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %69 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sle i64 %67, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %64, %46
  %74 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %75 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.inet_peer*, %struct.inet_peer** %7, align 8
  %79 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %81 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.inet_peer*, %struct.inet_peer** %7, align 8
  %85 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %73, %64, %56
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.inet_peer*, %struct.inet_peer** %7, align 8
  %91 = call i32 @inet_putpeer(%struct.inet_peer* %90)
  br label %92

92:                                               ; preds = %89, %86
  store i32 1, i32* %2, align 4
  br label %94

93:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %92
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @__sk_dst_get(%struct.sock*) #1

declare dso_local %struct.inet_peer* @inet_getpeer(i64, i32) #1

declare dso_local i32 @rt_bind_peer(%struct.rtable*, i32) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @inet_putpeer(%struct.inet_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
