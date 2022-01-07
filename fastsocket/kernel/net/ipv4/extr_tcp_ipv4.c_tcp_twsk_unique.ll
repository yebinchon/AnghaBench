; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_twsk_unique.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_twsk_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_timewait_sock = type { i32, i32, i32 }
%struct.tcp_sock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@sysctl_tcp_tw_reuse = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_twsk_unique(%struct.sock* %0, %struct.sock* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tcp_timewait_sock*, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.sock*, %struct.sock** %6, align 8
  %11 = call %struct.tcp_timewait_sock* @tcp_twsk(%struct.sock* %10)
  store %struct.tcp_timewait_sock* %11, %struct.tcp_timewait_sock** %8, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %12)
  store %struct.tcp_sock* %13, %struct.tcp_sock** %9, align 8
  %14 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %15 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* @sysctl_tcp_tw_reuse, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %21
  %25 = call i32 (...) @get_seconds()
  %26 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %27 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %61

31:                                               ; preds = %24, %18
  %32 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %33 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 65535
  %36 = add nsw i32 %35, 2
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %31
  %47 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %48 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %54 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = call i32 @sock_hold(%struct.sock* %59)
  store i32 1, i32* %4, align 4
  br label %62

61:                                               ; preds = %24, %21, %3
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.tcp_timewait_sock* @tcp_twsk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
