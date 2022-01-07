; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_slab_order.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_slab_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slub_min_order = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MAX_OBJS_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @slab_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slab_order(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @slub_min_order, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load i32, i32* %12, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %17, %18
  %20 = load i32, i32* @MAX_OBJS_PER_PAGE, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MAX_OBJS_PER_PAGE, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i32 @get_order(i32 %25)
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %74

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = call i64 @fls(i32 %33)
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = sub nsw i64 %34, %35
  %37 = call i32 @max(i32 %29, i64 %36)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %69, %28
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %38
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %43, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %69

54:                                               ; preds = %42
  %55 = load i64, i64* %13, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = urem i64 %55, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %13, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = udiv i64 %62, %64
  %66 = icmp ule i64 %61, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %72

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %38

72:                                               ; preds = %67, %38
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %22
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i64 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
