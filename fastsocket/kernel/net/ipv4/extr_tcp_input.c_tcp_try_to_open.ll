; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_try_to_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_try_to_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@FLAG_ECE = common dso_local global i32 0, align 4
@TCP_CA_CWR = common dso_local global i64 0, align 8
@TCP_CA_Open = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @tcp_try_to_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_try_to_open(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %5, align 8
  %8 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %9 = call i32 @tcp_verify_left_out(%struct.tcp_sock* %8)
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %11 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %14, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @FLAG_ECE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i32 @tcp_enter_cwr(%struct.sock* %28, i32 1)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TCP_CA_CWR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = call i32 @tcp_try_keep_open(%struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TCP_CA_Open, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %48 = call i32 @tcp_moderate_cwnd(%struct.tcp_sock* %47)
  br label %49

49:                                               ; preds = %46, %37
  br label %54

50:                                               ; preds = %30
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @tcp_cwnd_down(%struct.sock* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %49
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_verify_left_out(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_enter_cwr(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_try_keep_open(%struct.sock*) #1

declare dso_local i32 @tcp_moderate_cwnd(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_cwnd_down(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
