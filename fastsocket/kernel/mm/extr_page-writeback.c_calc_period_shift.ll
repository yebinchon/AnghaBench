; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_calc_period_shift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_calc_period_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_dirty_bytes = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@vm_dirty_ratio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @calc_period_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_period_shift() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @vm_dirty_bytes, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @vm_dirty_bytes, align 4
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = sdiv i32 %5, %6
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %1, align 8
  br label %15

9:                                                ; preds = %0
  %10 = load i32, i32* @vm_dirty_ratio, align 4
  %11 = call i32 (...) @determine_dirtyable_memory()
  %12 = mul nsw i32 %10, %11
  %13 = sdiv i32 %12, 100
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %1, align 8
  br label %15

15:                                               ; preds = %9, %4
  %16 = load i64, i64* %1, align 8
  %17 = icmp ult i64 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i64 2, i64* %1, align 8
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i64, i64* %1, align 8
  %21 = sub i64 %20, 1
  %22 = call i32 @ilog2(i64 %21)
  %23 = add nsw i32 2, %22
  ret i32 %23
}

declare dso_local i32 @determine_dirtyable_memory(...) #1

declare dso_local i32 @ilog2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
