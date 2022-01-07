; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_timer.c_tcp_probe_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_timer.c_tcp_probe_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i32, i32, i32 }
%struct.tcp_sock = type { i64 }

@sysctl_tcp_retries2 = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_probe_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_probe_timer(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %7)
  store %struct.inet_connection_sock* %8, %struct.inet_connection_sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %4, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call i32 @tcp_send_head(%struct.sock* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %21 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %70

22:                                               ; preds = %15
  %23 = load i32, i32* @sysctl_tcp_retries2, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = load i32, i32* @SOCK_DEAD, align 4
  %26 = call i64 @sock_flag(%struct.sock* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %22
  %29 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %30 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %33 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %31, %34
  %36 = load i32, i32* @TCP_RTO_MAX, align 4
  %37 = icmp slt i32 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @tcp_orphan_retries(%struct.sock* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %28
  %46 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %47 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sle i32 %48, %49
  br label %51

51:                                               ; preds = %45, %28
  %52 = phi i1 [ true, %28 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 @tcp_out_of_resources(%struct.sock* %42, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %70

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %22
  %59 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %60 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.sock*, %struct.sock** %2, align 8
  %66 = call i32 @tcp_write_err(%struct.sock* %65)
  br label %70

67:                                               ; preds = %58
  %68 = load %struct.sock*, %struct.sock** %2, align 8
  %69 = call i32 @tcp_send_probe0(%struct.sock* %68)
  br label %70

70:                                               ; preds = %19, %56, %67, %64
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_send_head(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @tcp_orphan_retries(%struct.sock*, i32) #1

declare dso_local i64 @tcp_out_of_resources(%struct.sock*, i32) #1

declare dso_local i32 @tcp_write_err(%struct.sock*) #1

declare dso_local i32 @tcp_send_probe0(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
