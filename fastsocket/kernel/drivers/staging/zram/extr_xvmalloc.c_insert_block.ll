; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_insert_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_insert_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xv_pool = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.page* }
%struct.page = type { i32 }
%struct.block_header = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, %struct.page*, %struct.page* }

@BITS_PER_LONG = common dso_local global i64 0, align 8
@KM_USER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xv_pool*, %struct.page*, i64, %struct.block_header*)* @insert_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_block(%struct.xv_pool* %0, %struct.page* %1, i64 %2, %struct.block_header* %3) #0 {
  %5 = alloca %struct.xv_pool*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.block_header*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.block_header*, align 8
  store %struct.xv_pool* %0, %struct.xv_pool** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.block_header* %3, %struct.block_header** %8, align 8
  %12 = load %struct.block_header*, %struct.block_header** %8, align 8
  %13 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @get_index_for_insert(i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @BITS_PER_LONG, align 8
  %18 = udiv i64 %16, %17
  store i64 %18, i64* %9, align 8
  %19 = load %struct.block_header*, %struct.block_header** %8, align 8
  %20 = getelementptr inbounds %struct.block_header, %struct.block_header* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store %struct.page* null, %struct.page** %21, align 8
  %22 = load %struct.block_header*, %struct.block_header** %8, align 8
  %23 = getelementptr inbounds %struct.block_header, %struct.block_header* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.xv_pool*, %struct.xv_pool** %5, align 8
  %26 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.page*, %struct.page** %30, align 8
  %32 = load %struct.block_header*, %struct.block_header** %8, align 8
  %33 = getelementptr inbounds %struct.block_header, %struct.block_header* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store %struct.page* %31, %struct.page** %34, align 8
  %35 = load %struct.xv_pool*, %struct.xv_pool** %5, align 8
  %36 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.block_header*, %struct.block_header** %8, align 8
  %43 = getelementptr inbounds %struct.block_header, %struct.block_header* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = load %struct.page*, %struct.page** %6, align 8
  %46 = load %struct.xv_pool*, %struct.xv_pool** %5, align 8
  %47 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store %struct.page* %45, %struct.page** %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.xv_pool*, %struct.xv_pool** %5, align 8
  %54 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i64 %52, i64* %58, align 8
  %59 = load %struct.block_header*, %struct.block_header** %8, align 8
  %60 = getelementptr inbounds %struct.block_header, %struct.block_header* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load %struct.page*, %struct.page** %61, align 8
  %63 = icmp ne %struct.page* %62, null
  br i1 %63, label %64, label %86

64:                                               ; preds = %4
  %65 = load %struct.block_header*, %struct.block_header** %8, align 8
  %66 = getelementptr inbounds %struct.block_header, %struct.block_header* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load %struct.page*, %struct.page** %67, align 8
  %69 = load %struct.block_header*, %struct.block_header** %8, align 8
  %70 = getelementptr inbounds %struct.block_header, %struct.block_header* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @KM_USER1, align 4
  %74 = call %struct.block_header* @get_ptr_atomic(%struct.page* %68, i64 %72, i32 %73)
  store %struct.block_header* %74, %struct.block_header** %11, align 8
  %75 = load %struct.page*, %struct.page** %6, align 8
  %76 = load %struct.block_header*, %struct.block_header** %11, align 8
  %77 = getelementptr inbounds %struct.block_header, %struct.block_header* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store %struct.page* %75, %struct.page** %78, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.block_header*, %struct.block_header** %11, align 8
  %81 = getelementptr inbounds %struct.block_header, %struct.block_header* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  %83 = load %struct.block_header*, %struct.block_header** %11, align 8
  %84 = load i32, i32* @KM_USER1, align 4
  %85 = call i32 @put_ptr_atomic(%struct.block_header* %83, i32 %84)
  br label %100

86:                                               ; preds = %4
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @BITS_PER_LONG, align 8
  %89 = urem i64 %87, %88
  %90 = load %struct.xv_pool*, %struct.xv_pool** %5, align 8
  %91 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = call i32 @__set_bit(i64 %89, i32* %94)
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.xv_pool*, %struct.xv_pool** %5, align 8
  %98 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %97, i32 0, i32 0
  %99 = call i32 @__set_bit(i64 %96, i32* %98)
  br label %100

100:                                              ; preds = %86, %64
  ret void
}

declare dso_local i64 @get_index_for_insert(i32) #1

declare dso_local %struct.block_header* @get_ptr_atomic(%struct.page*, i64, i32) #1

declare dso_local i32 @put_ptr_atomic(%struct.block_header*, i32) #1

declare dso_local i32 @__set_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
