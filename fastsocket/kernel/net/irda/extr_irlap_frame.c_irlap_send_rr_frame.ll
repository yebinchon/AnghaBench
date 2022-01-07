; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_send_rr_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_send_rr_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rr_frame = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@CMD_FRAME = common dso_local global i32 0, align 4
@RR = common dso_local global i32 0, align 4
@PF_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irlap_send_rr_frame(%struct.irlap_cb* %0, i32 %1) #0 {
  %3 = alloca %struct.irlap_cb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rr_frame*, align 8
  store %struct.irlap_cb* %0, %struct.irlap_cb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.sk_buff* @alloc_skb(i32 8, i32 %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i64 @skb_put(%struct.sk_buff* %13, i32 2)
  %15 = inttoptr i64 %14 to %struct.rr_frame*
  store %struct.rr_frame* %15, %struct.rr_frame** %6, align 8
  %16 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %17 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rr_frame*, %struct.rr_frame** %6, align 8
  %20 = getelementptr inbounds %struct.rr_frame, %struct.rr_frame* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* @CMD_FRAME, align 4
  br label %26

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = load %struct.rr_frame*, %struct.rr_frame** %6, align 8
  %29 = getelementptr inbounds %struct.rr_frame, %struct.rr_frame* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @RR, align 4
  %33 = load i32, i32* @PF_BIT, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %36 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 5
  %39 = or i32 %34, %38
  %40 = load %struct.rr_frame*, %struct.rr_frame** %6, align 8
  %41 = getelementptr inbounds %struct.rr_frame, %struct.rr_frame* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @irlap_queue_xmit(%struct.irlap_cb* %42, %struct.sk_buff* %43)
  br label %45

45:                                               ; preds = %26, %11
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
