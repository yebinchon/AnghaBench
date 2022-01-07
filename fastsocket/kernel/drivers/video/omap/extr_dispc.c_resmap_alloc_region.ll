; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_resmap_alloc_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_resmap_alloc_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.resmap** }
%struct.resmap = type { i32, i32 }

@dispc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DISPC_MEMTYPE_NUM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @resmap_alloc_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @resmap_alloc_region(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.resmap*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %11 = load %struct.resmap**, %struct.resmap*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc, i32 0, i32 0), align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.resmap*, %struct.resmap** %11, i64 %13
  %15 = load %struct.resmap*, %struct.resmap** %14, align 8
  store %struct.resmap* %15, %struct.resmap** %10, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DISPC_MEMTYPE_NUM, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.resmap*, %struct.resmap** %10, align 8
  %21 = icmp eq %struct.resmap* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %22, %19, %2
  %27 = phi i1 [ true, %19 ], [ true, %2 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @PAGE_ALIGN(i64 %30)
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = udiv i32 %31, %32
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %58, %26
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.resmap*, %struct.resmap** %10, align 8
  %38 = getelementptr inbounds %struct.resmap, %struct.resmap* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.resmap*, %struct.resmap** %10, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @resmap_page_reserved(%struct.resmap* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %57

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %5, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %61

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %35

61:                                               ; preds = %55, %35
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %5, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i64 0, i64* %3, align 8
  br label %83

67:                                               ; preds = %61
  %68 = load %struct.resmap*, %struct.resmap** %10, align 8
  %69 = getelementptr inbounds %struct.resmap, %struct.resmap* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = mul i32 %71, %72
  %74 = add i32 %70, %73
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = zext i32 %78 to i64
  %80 = mul i64 %77, %79
  %81 = call i32 @resmap_reserve_region(i64 %76, i64 %80)
  %82 = load i64, i64* %9, align 8
  store i64 %82, i64* %3, align 8
  br label %83

83:                                               ; preds = %67, %66
  %84 = load i64, i64* %3, align 8
  ret i64 %84
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i64 @resmap_page_reserved(%struct.resmap*, i32) #1

declare dso_local i32 @resmap_reserve_region(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
