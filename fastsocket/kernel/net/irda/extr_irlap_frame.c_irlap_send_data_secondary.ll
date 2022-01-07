; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_send_data_secondary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_send_data_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32* }

@I_FRAME = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RSP_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irlap_send_data_secondary(%struct.irlap_cb* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.irlap_cb*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.irlap_cb* %0, %struct.irlap_cb** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I_FRAME, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %2
  %14 = load i32, i32* @I_FRAME, align 4
  %15 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %16 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 1
  %19 = or i32 %14, %18
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @skb_get(%struct.sk_buff* %24)
  %26 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %27 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %26, i32 0, i32 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @skb_queue_tail(i32* %27, %struct.sk_buff* %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = icmp eq %struct.sk_buff* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %13
  br label %68

36:                                               ; preds = %13
  %37 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %38 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = srem i32 %40, 8
  %42 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %43 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %46 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %48 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load i32, i32* @RSP_FRAME, align 4
  %54 = call i32 @irlap_send_i_frame(%struct.irlap_cb* %51, %struct.sk_buff* %52, i32 %53)
  br label %68

55:                                               ; preds = %2
  %56 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @skb_get(%struct.sk_buff* %57)
  %59 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %60 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RSP_FRAME, align 4
  %63 = call i32 @irlap_send_ui_frame(%struct.irlap_cb* %56, i32 %58, i32 %61, i32 %62)
  %64 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %65 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %35, %55, %36
  ret void
}

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @irlap_send_i_frame(%struct.irlap_cb*, %struct.sk_buff*, i32) #1

declare dso_local i32 @irlap_send_ui_frame(%struct.irlap_cb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
