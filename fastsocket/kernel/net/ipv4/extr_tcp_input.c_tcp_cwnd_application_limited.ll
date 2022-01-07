; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_cwnd_application_limited.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_cwnd_application_limited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tcp_sock = type { i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i64 }

@TCP_CA_Open = common dso_local global i64 0, align 8
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@tcp_time_stamp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_cwnd_application_limited(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_CA_Open, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %14
  %20 = load i32, i32* @SOCK_NOSPACE, align 4
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @test_bit(i32 %20, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %19
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call i32 @__sk_dst_get(%struct.sock* %29)
  %31 = call i32 @tcp_init_cwnd(%struct.tcp_sock* %28, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @max(i64 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %27
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = call i32 @tcp_current_ssthresh(%struct.sock* %43)
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = ashr i32 %51, 1
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %42, %27
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %19, %14, %1
  %59 = load i32, i32* @tcp_time_stamp, align 4
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %61 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @tcp_init_cwnd(%struct.tcp_sock*, i32) #1

declare dso_local i32 @__sk_dst_get(%struct.sock*) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @tcp_current_ssthresh(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
