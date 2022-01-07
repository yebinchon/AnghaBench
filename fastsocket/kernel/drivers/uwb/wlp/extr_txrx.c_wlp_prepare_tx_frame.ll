; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_txrx.c_wlp_prepare_tx_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_txrx.c_wlp_prepare_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wlp = type { i32 }
%struct.sk_buff = type { i64 }
%struct.uwb_dev_addr = type { i32 }
%struct.ethhdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@wlp_wss_send_copy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to handle broadcast frame from WLP client.\0A\00", align 1
@wlp_wss_prep_hdr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to prepare skb for transmission. \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_prepare_tx_frame(%struct.device* %0, %struct.wlp* %1, %struct.sk_buff* %2, %struct.uwb_dev_addr* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wlp*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.uwb_dev_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ethhdr*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.wlp* %1, %struct.wlp** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.uwb_dev_addr* %3, %struct.uwb_dev_addr** %8, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ethhdr*
  store %struct.ethhdr* %17, %struct.ethhdr** %10, align 8
  %18 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %19 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @is_multicast_ether_addr(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %4
  %24 = load %struct.wlp*, %struct.wlp** %6, align 8
  %25 = getelementptr inbounds %struct.wlp, %struct.wlp* %24, i32 0, i32 0
  %26 = load i32, i32* @wlp_wss_send_copy, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call i32 @wlp_eda_for_each(i32* %25, i32 %26, %struct.sk_buff* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = call i64 (...) @printk_ratelimit()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  br label %65

38:                                               ; preds = %23
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %39)
  store i32 1, i32* %9, align 4
  br label %64

41:                                               ; preds = %4
  %42 = load %struct.wlp*, %struct.wlp** %6, align 8
  %43 = getelementptr inbounds %struct.wlp, %struct.wlp* %42, i32 0, i32 0
  %44 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %45 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %8, align 8
  %48 = load i32, i32* @wlp_wss_prep_hdr, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call i32 @wlp_eda_for_virtual(i32* %43, i32 %46, %struct.uwb_dev_addr* %47, i32 %48, %struct.sk_buff* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %41
  %57 = call i64 (...) @printk_ratelimit()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56
  br label %65

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %38
  br label %65

65:                                               ; preds = %64, %62, %37
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @wlp_eda_for_each(i32*, i32, %struct.sk_buff*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @wlp_eda_for_virtual(i32*, i32, %struct.uwb_dev_addr*, i32, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
