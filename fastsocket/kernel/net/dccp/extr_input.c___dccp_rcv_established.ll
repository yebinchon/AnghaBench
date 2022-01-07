; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c___dccp_rcv_established.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c___dccp_rcv_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i32 }
%struct.dccp_sock = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DCCP_ROLE_LISTEN = common dso_local global i32 0, align 4
@DCCP_ROLE_CLIENT = common dso_local global i32 0, align 4
@DCCP_PKT_SYNCACK = common dso_local global i32 0, align 4
@DCCP_MIB_INERRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32)* @__dccp_rcv_established to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dccp_rcv_established(%struct.sock* %0, %struct.sk_buff* %1, %struct.dccp_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dccp_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.dccp_hdr* %2, %struct.dccp_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %11)
  store %struct.dccp_sock* %12, %struct.dccp_sock** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call %struct.TYPE_3__* @dccp_hdr(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %83 [
    i32 132, label %17
    i32 133, label %17
    i32 136, label %21
    i32 130, label %22
    i32 134, label %26
    i32 135, label %33
    i32 131, label %40
    i32 129, label %48
    i32 128, label %75
  ]

17:                                               ; preds = %4, %4
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call i32 @dccp_enqueue_skb(%struct.sock* %18, %struct.sk_buff* %19)
  store i32 0, i32* %5, align 4
  br label %89

21:                                               ; preds = %4
  br label %86

22:                                               ; preds = %4
  %23 = load %struct.sock*, %struct.sock** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i32 @dccp_rcv_reset(%struct.sock* %23, %struct.sk_buff* %24)
  store i32 0, i32* %5, align 4
  br label %89

26:                                               ; preds = %4
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call i32 @dccp_rcv_closereq(%struct.sock* %27, %struct.sk_buff* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %89

32:                                               ; preds = %26
  br label %86

33:                                               ; preds = %4
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call i32 @dccp_rcv_close(%struct.sock* %34, %struct.sk_buff* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %89

39:                                               ; preds = %33
  br label %86

40:                                               ; preds = %4
  %41 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %42 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DCCP_ROLE_LISTEN, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %67

47:                                               ; preds = %40
  br label %56

48:                                               ; preds = %4
  %49 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %50 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DCCP_ROLE_CLIENT, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %67

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %47
  %57 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %58 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dccp_delta_seqno(i32 %59, i32 %63)
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %54, %46
  %68 = load %struct.sock*, %struct.sock** %6, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dccp_send_sync(%struct.sock* %68, i32 %72, i32 128)
  br label %74

74:                                               ; preds = %67, %56
  br label %83

75:                                               ; preds = %4
  %76 = load %struct.sock*, %struct.sock** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DCCP_PKT_SYNCACK, align 4
  %82 = call i32 @dccp_send_sync(%struct.sock* %76, i32 %80, i32 %81)
  br label %86

83:                                               ; preds = %4, %74
  %84 = load i32, i32* @DCCP_MIB_INERRS, align 4
  %85 = call i32 @DCCP_INC_STATS_BH(i32 %84)
  br label %86

86:                                               ; preds = %83, %75, %39, %32, %21
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i32 @__kfree_skb(%struct.sk_buff* %87)
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %38, %31, %22, %17
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_enqueue_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_rcv_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_rcv_closereq(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_rcv_close(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_delta_seqno(i32, i32) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_send_sync(%struct.sock*, i32, i32) #1

declare dso_local i32 @DCCP_INC_STATS_BH(i32) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
