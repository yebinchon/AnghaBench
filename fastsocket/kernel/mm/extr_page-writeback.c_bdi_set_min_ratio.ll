; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_bdi_set_min_ratio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_bdi_set_min_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backing_dev_info = type { i32, i64 }

@bdi_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bdi_min_ratio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdi_set_min_ratio(%struct.backing_dev_info* %0, i32 %1) #0 {
  %3 = alloca %struct.backing_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.backing_dev_info* %0, %struct.backing_dev_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 @spin_lock_bh(i32* @bdi_lock)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %9 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ugt i32 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %17 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = sub nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @bdi_min_ratio, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %23, %24
  %26 = icmp ult i32 %25, 100
  br i1 %26, label %27, label %37

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @bdi_min_ratio, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* @bdi_min_ratio, align 4
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %34 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  br label %40

37:                                               ; preds = %15
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %27
  br label %41

41:                                               ; preds = %40, %12
  %42 = call i32 @spin_unlock_bh(i32* @bdi_lock)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
