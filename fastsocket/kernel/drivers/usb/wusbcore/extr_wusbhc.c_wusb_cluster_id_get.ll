; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wusbhc.c_wusb_cluster_id_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wusbhc.c_wusb_cluster_id_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wusb_cluster_ids_lock = common dso_local global i32 0, align 4
@wusb_cluster_id_table = common dso_local global i32 0, align 4
@CLUSTER_IDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wusb_cluster_id_get() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @spin_lock(i32* @wusb_cluster_ids_lock)
  %3 = load i32, i32* @wusb_cluster_id_table, align 4
  %4 = load i64, i64* @CLUSTER_IDS, align 8
  %5 = call i64 @find_first_zero_bit(i32 %3, i64 %4)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @CLUSTER_IDS, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %16

10:                                               ; preds = %0
  %11 = load i64, i64* %1, align 8
  %12 = load i32, i32* @wusb_cluster_id_table, align 4
  %13 = call i32 @set_bit(i64 %11, i32 %12)
  %14 = load i64, i64* %1, align 8
  %15 = sub nsw i64 255, %14
  store i64 %15, i64* %1, align 8
  br label %16

16:                                               ; preds = %10, %9
  %17 = call i32 @spin_unlock(i32* @wusb_cluster_ids_lock)
  %18 = load i64, i64* %1, align 8
  ret i64 %18
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
