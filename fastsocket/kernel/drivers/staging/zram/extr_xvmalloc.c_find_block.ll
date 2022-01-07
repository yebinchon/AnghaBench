; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_find_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_find_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xv_pool = type { i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.page* }
%struct.page = type { i32 }

@BITS_PER_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xv_pool*, i64, %struct.page**, i64*)* @find_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_block(%struct.xv_pool* %0, i64 %1, %struct.page** %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.xv_pool*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.xv_pool* %0, %struct.xv_pool** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.page** %2, %struct.page*** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %16 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %138

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @get_index(i64 %21)
  store i64 %22, i64* %13, align 8
  %23 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %24 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @BITS_PER_LONG, align 8
  %28 = udiv i64 %26, %27
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @BITS_PER_LONG, align 8
  %33 = urem i64 %31, %32
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @test_bit(i64 %34, i64* %11)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %20
  %38 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %39 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.page*, %struct.page** %43, align 8
  %45 = load %struct.page**, %struct.page*** %8, align 8
  store %struct.page* %44, %struct.page** %45, align 8
  %46 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %47 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i64, i64* %13, align 8
  store i64 %54, i64* %5, align 8
  br label %138

55:                                               ; preds = %20
  %56 = load i64, i64* %14, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %11, align 8
  %60 = lshr i64 %59, %58
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* @BITS_PER_LONG, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %55
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @__ffs(i64 %68)
  %70 = add i64 %69, 1
  %71 = load i64, i64* %13, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %13, align 8
  %73 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %74 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load %struct.page*, %struct.page** %78, align 8
  %80 = load %struct.page**, %struct.page*** %8, align 8
  store %struct.page* %79, %struct.page** %80, align 8
  %81 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %82 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %9, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i64, i64* %13, align 8
  store i64 %89, i64* %5, align 8
  br label %138

90:                                               ; preds = %64, %55
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @BITS_PER_LONG, align 8
  %93 = udiv i64 %91, %92
  store i64 %93, i64* %12, align 8
  %94 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %95 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %12, align 8
  %98 = add i64 %97, 1
  %99 = lshr i64 %96, %98
  store i64 %99, i64* %10, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %90
  store i64 0, i64* %5, align 8
  br label %138

103:                                              ; preds = %90
  %104 = load i64, i64* %10, align 8
  %105 = call i64 @__ffs(i64 %104)
  %106 = add i64 %105, 1
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %12, align 8
  %109 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %110 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %11, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* @BITS_PER_LONG, align 8
  %117 = mul i64 %115, %116
  %118 = load i64, i64* %11, align 8
  %119 = call i64 @__ffs(i64 %118)
  %120 = add i64 %117, %119
  store i64 %120, i64* %13, align 8
  %121 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %122 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i64, i64* %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load %struct.page*, %struct.page** %126, align 8
  %128 = load %struct.page**, %struct.page*** %8, align 8
  store %struct.page* %127, %struct.page** %128, align 8
  %129 = load %struct.xv_pool*, %struct.xv_pool** %6, align 8
  %130 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %129, i32 0, i32 2
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i64, i64* %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %9, align 8
  store i64 %135, i64* %136, align 8
  %137 = load i64, i64* %13, align 8
  store i64 %137, i64* %5, align 8
  br label %138

138:                                              ; preds = %103, %102, %67, %37, %19
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local i64 @get_index(i64) #1

declare dso_local i64 @test_bit(i64, i64*) #1

declare dso_local i64 @__ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
