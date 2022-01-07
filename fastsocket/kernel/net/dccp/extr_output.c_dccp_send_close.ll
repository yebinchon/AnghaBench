; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_send_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_send_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dccp_sock = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DCCP_ROLE_SERVER = common dso_local global i64 0, align 8
@DCCP_PKT_CLOSEREQ = common dso_local global i32 0, align 4
@DCCP_PKT_CLOSE = common dso_local global i32 0, align 4
@ICSK_TIME_RETRANS = common dso_local global i32 0, align 4
@DCCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@DCCP_RTO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_send_close(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %8)
  store %struct.dccp_sock* %9, %struct.dccp_sock** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.sk_buff* @alloc_skb(i32 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = icmp eq %struct.sk_buff* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %79

28:                                               ; preds = %16
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @skb_reserve(%struct.sk_buff* %29, i32 %34)
  %36 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %37 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DCCP_ROLE_SERVER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %28
  %42 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %43 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @DCCP_PKT_CLOSEREQ, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %56

51:                                               ; preds = %41, %28
  %52 = load i32, i32* @DCCP_PKT_CLOSE, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = call i32 @dccp_write_xmit(%struct.sock* %60, i32 1)
  %62 = load %struct.sock*, %struct.sock** %3, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call i32 @dccp_skb_entail(%struct.sock* %62, %struct.sk_buff* %63)
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %66, i32 %67)
  %69 = call i32 @dccp_transmit_skb(%struct.sock* %65, %struct.sk_buff* %68)
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  %71 = load i32, i32* @ICSK_TIME_RETRANS, align 4
  %72 = load i32, i32* @DCCP_TIMEOUT_INIT, align 4
  %73 = load i32, i32* @DCCP_RTO_MAX, align 4
  %74 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %70, i32 %71, i32 %72, i32 %73)
  br label %79

75:                                               ; preds = %56
  %76 = load %struct.sock*, %struct.sock** %3, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @dccp_transmit_skb(%struct.sock* %76, %struct.sk_buff* %77)
  br label %79

79:                                               ; preds = %27, %75, %59
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_write_xmit(%struct.sock*, i32) #1

declare dso_local i32 @dccp_skb_entail(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_transmit_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
