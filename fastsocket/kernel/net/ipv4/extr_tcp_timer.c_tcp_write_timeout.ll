; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_timer.c_tcp_write_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_timer.c_tcp_write_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.inet_connection_sock = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@sysctl_tcp_syn_retries = common dso_local global i32 0, align 4
@sysctl_tcp_retries1 = common dso_local global i32 0, align 4
@sysctl_tcp_retries2 = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_write_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_write_timeout(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* @TCPF_SYN_SENT, align 4
  %16 = load i32, i32* @TCPF_SYN_RECV, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %22 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 1
  %28 = call i32 @dst_negative_advice(i32* %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %31 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @sysctl_tcp_syn_retries, align 4
  %37 = sext i32 %36 to i64
  br label %38

38:                                               ; preds = %35, %34
  %39 = phi i64 [ %32, %34 ], [ %37, %35 ]
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %87

41:                                               ; preds = %1
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = load i32, i32* @sysctl_tcp_retries1, align 4
  %44 = call i64 @retransmits_timed_out(%struct.sock* %42, i32 %43, i32 0, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = call i32 @tcp_mtu_probing(%struct.inet_connection_sock* %47, %struct.sock* %48)
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 1
  %52 = call i32 @dst_negative_advice(i32* %51)
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* @sysctl_tcp_retries2, align 4
  store i32 %54, i32* %5, align 4
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = load i32, i32* @SOCK_DEAD, align 4
  %57 = call i64 @sock_flag(%struct.sock* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %53
  %60 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %61 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TCP_RTO_MAX, align 8
  %64 = icmp slt i64 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @tcp_orphan_retries(%struct.sock* %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %59
  %72 = load %struct.sock*, %struct.sock** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @retransmits_timed_out(%struct.sock* %72, i32 %73, i32 0, i32 0)
  %75 = icmp ne i64 %74, 0
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %71, %59
  %78 = phi i1 [ true, %59 ], [ %76, %71 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %6, align 4
  %80 = load %struct.sock*, %struct.sock** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @tcp_out_of_resources(%struct.sock* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 1, i32* %2, align 4
  br label %107

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %53
  br label %87

87:                                               ; preds = %86, %38
  %88 = load %struct.sock*, %struct.sock** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %98

93:                                               ; preds = %87
  %94 = load %struct.sock*, %struct.sock** %3, align 8
  %95 = call %struct.TYPE_2__* @sk_extended(%struct.sock* %94)
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  br label %98

98:                                               ; preds = %93, %92
  %99 = phi i32 [ 0, %92 ], [ %97, %93 ]
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @retransmits_timed_out(%struct.sock* %88, i32 %89, i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.sock*, %struct.sock** %3, align 8
  %105 = call i32 @tcp_write_err(%struct.sock* %104)
  store i32 1, i32* %2, align 4
  br label %107

106:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %103, %84
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @dst_negative_advice(i32*) #1

declare dso_local i64 @retransmits_timed_out(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @tcp_mtu_probing(%struct.inet_connection_sock*, %struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @tcp_orphan_retries(%struct.sock*, i32) #1

declare dso_local i64 @tcp_out_of_resources(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_2__* @sk_extended(%struct.sock*) #1

declare dso_local i32 @tcp_write_err(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
