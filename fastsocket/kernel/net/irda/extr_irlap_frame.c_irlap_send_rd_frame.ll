; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_send_rd_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_send_rd_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rd_frame = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RD_RSP = common dso_local global i32 0, align 4
@PF_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irlap_send_rd_frame(%struct.irlap_cb* %0) #0 {
  %2 = alloca %struct.irlap_cb*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rd_frame*, align 8
  store %struct.irlap_cb* %0, %struct.irlap_cb** %2, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %5)
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i64 @skb_put(%struct.sk_buff* %11, i32 2)
  %13 = inttoptr i64 %12 to %struct.rd_frame*
  store %struct.rd_frame* %13, %struct.rd_frame** %4, align 8
  %14 = load %struct.irlap_cb*, %struct.irlap_cb** %2, align 8
  %15 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rd_frame*, %struct.rd_frame** %4, align 8
  %18 = getelementptr inbounds %struct.rd_frame, %struct.rd_frame* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @RD_RSP, align 4
  %20 = load i32, i32* @PF_BIT, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.rd_frame*, %struct.rd_frame** %4, align 8
  %23 = getelementptr inbounds %struct.rd_frame, %struct.rd_frame* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.irlap_cb*, %struct.irlap_cb** %2, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call i32 @irlap_queue_xmit(%struct.irlap_cb* %24, %struct.sk_buff* %25)
  br label %27

27:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @irlap_queue_xmit(%struct.irlap_cb*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
