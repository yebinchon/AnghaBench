; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/lib/extr_loss_interval.c_tfrc_lh_update_i_mean.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/lib/extr_loss_interval.c_tfrc_lh_update_i_mean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tfrc_loss_hist = type { i64 }
%struct.sk_buff = type { i32 }
%struct.tfrc_loss_interval = type { i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tfrc_lh_update_i_mean(%struct.tfrc_loss_hist* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tfrc_loss_hist*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tfrc_loss_interval*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tfrc_loss_hist* %0, %struct.tfrc_loss_hist** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %4, align 8
  %10 = call %struct.tfrc_loss_interval* @tfrc_lh_peek(%struct.tfrc_loss_hist* %9)
  store %struct.tfrc_loss_interval* %10, %struct.tfrc_loss_interval** %6, align 8
  %11 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %4, align 8
  %12 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.tfrc_loss_interval*, %struct.tfrc_loss_interval** %6, align 8
  %15 = icmp eq %struct.tfrc_loss_interval* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.tfrc_loss_interval*, %struct.tfrc_loss_interval** %6, align 8
  %19 = getelementptr inbounds %struct.tfrc_loss_interval, %struct.tfrc_loss_interval* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @dccp_delta_seqno(i32 %20, i32 %24)
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.tfrc_loss_interval*, %struct.tfrc_loss_interval** %6, align 8
  %29 = getelementptr inbounds %struct.tfrc_loss_interval, %struct.tfrc_loss_interval* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %64

34:                                               ; preds = %17
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_3__* @dccp_hdr(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tfrc_loss_interval*, %struct.tfrc_loss_interval** %6, align 8
  %40 = getelementptr inbounds %struct.tfrc_loss_interval, %struct.tfrc_loss_interval* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @SUB16(i32 %38, i32 %41)
  %43 = icmp sgt i32 %42, 4
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.tfrc_loss_interval*, %struct.tfrc_loss_interval** %6, align 8
  %46 = getelementptr inbounds %struct.tfrc_loss_interval, %struct.tfrc_loss_interval* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %34
  %48 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %4, align 8
  %49 = call i32 @tfrc_lh_length(%struct.tfrc_loss_hist* %48)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %64

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.tfrc_loss_interval*, %struct.tfrc_loss_interval** %6, align 8
  %55 = getelementptr inbounds %struct.tfrc_loss_interval, %struct.tfrc_loss_interval* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %4, align 8
  %57 = call i32 @tfrc_lh_calc_i_mean(%struct.tfrc_loss_hist* %56)
  %58 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %4, align 8
  %59 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp slt i64 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %52, %51, %33, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.tfrc_loss_interval* @tfrc_lh_peek(%struct.tfrc_loss_hist*) #1

declare dso_local i64 @dccp_delta_seqno(i32, i32) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @SUB16(i32, i32) #1

declare dso_local %struct.TYPE_3__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @tfrc_lh_length(%struct.tfrc_loss_hist*) #1

declare dso_local i32 @tfrc_lh_calc_i_mean(%struct.tfrc_loss_hist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
