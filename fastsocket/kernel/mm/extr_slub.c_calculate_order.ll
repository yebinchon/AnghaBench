; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_calculate_order.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_calculate_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slub_min_objects = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@slub_max_order = common dso_local global i32 0, align 4
@MAX_ORDER = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @calculate_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_order(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @slub_min_objects, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @nr_cpu_ids, align 4
  %13 = call i32 @fls(i32 %12)
  %14 = add nsw i32 %13, 1
  %15 = mul nsw i32 4, %14
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load i32, i32* @slub_max_order, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @min(i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %46, %16
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  store i32 16, i32* %6, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 4
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @slub_max_order, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @slab_order(i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @slub_max_order, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %70

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %6, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @slub_max_order, align 4
  %52 = call i32 @slab_order(i32 %50, i32 1, i32 %51, i32 1)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @slub_max_order, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %70

58:                                               ; preds = %49
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @MAX_ORDER, align 4
  %61 = call i32 @slab_order(i32 %59, i32 1, i32 %60, i32 1)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @MAX_ORDER, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @ENOSYS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %65, %56, %41
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @slab_order(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
