; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_do_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_do_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i64, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i64 0, align 8
@TCP_MIB_INERRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_v4_do_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TCP_ESTABLISHED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @TCP_CHECK_TIMER(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @tcp_hdr(%struct.sk_buff* %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @tcp_rcv_established(%struct.sock* %16, %struct.sk_buff* %17, i32 %19, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  store %struct.sock* %26, %struct.sock** %6, align 8
  br label %91

27:                                               ; preds = %13
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call i32 @TCP_CHECK_TIMER(%struct.sock* %28)
  store i32 0, i32* %3, align 4
  br label %103

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i64 @tcp_hdrlen(%struct.sk_buff* %34)
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i64 @tcp_checksum_complete(%struct.sk_buff* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %30
  br label %98

42:                                               ; preds = %37
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TCP_LISTEN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %42
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call %struct.sock* @tcp_v4_hnd_req(%struct.sock* %49, %struct.sk_buff* %50)
  store %struct.sock* %51, %struct.sock** %7, align 8
  %52 = load %struct.sock*, %struct.sock** %7, align 8
  %53 = icmp ne %struct.sock* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %95

55:                                               ; preds = %48
  %56 = load %struct.sock*, %struct.sock** %7, align 8
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = icmp ne %struct.sock* %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load %struct.sock*, %struct.sock** %7, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sock_rps_save_rxhash(%struct.sock* %60, i32 %63)
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = load %struct.sock*, %struct.sock** %7, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i64 @tcp_child_process(%struct.sock* %65, %struct.sock* %66, %struct.sk_buff* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %71, %struct.sock** %6, align 8
  br label %91

72:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %103

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73, %42
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = call i32 @TCP_CHECK_TIMER(%struct.sock* %75)
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i32 @tcp_hdr(%struct.sk_buff* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @tcp_rcv_state_process(%struct.sock* %77, %struct.sk_buff* %78, i32 %80, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load %struct.sock*, %struct.sock** %4, align 8
  store %struct.sock* %87, %struct.sock** %6, align 8
  br label %91

88:                                               ; preds = %74
  %89 = load %struct.sock*, %struct.sock** %4, align 8
  %90 = call i32 @TCP_CHECK_TIMER(%struct.sock* %89)
  store i32 0, i32* %3, align 4
  br label %103

91:                                               ; preds = %86, %70, %25
  %92 = load %struct.sock*, %struct.sock** %6, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call i32 @tcp_v4_send_reset(%struct.sock* %92, %struct.sk_buff* %93)
  br label %95

95:                                               ; preds = %98, %91, %54
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  store i32 0, i32* %3, align 4
  br label %103

98:                                               ; preds = %41
  %99 = load %struct.sock*, %struct.sock** %4, align 8
  %100 = call i32 @sock_net(%struct.sock* %99)
  %101 = load i32, i32* @TCP_MIB_INERRS, align 4
  %102 = call i32 @TCP_INC_STATS_BH(i32 %100, i32 %101)
  br label %95

103:                                              ; preds = %95, %88, %72, %27
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @TCP_CHECK_TIMER(%struct.sock*) #1

declare dso_local i64 @tcp_rcv_established(%struct.sock*, %struct.sk_buff*, i32, i64) #1

declare dso_local i32 @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @tcp_checksum_complete(%struct.sk_buff*) #1

declare dso_local %struct.sock* @tcp_v4_hnd_req(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sock_rps_save_rxhash(%struct.sock*, i32) #1

declare dso_local i64 @tcp_child_process(%struct.sock*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @tcp_rcv_state_process(%struct.sock*, %struct.sk_buff*, i32, i64) #1

declare dso_local i32 @tcp_v4_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @TCP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
