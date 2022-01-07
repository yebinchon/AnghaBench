; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_grow_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_grow_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xv_pool = type { i32, i32 }
%struct.page = type { i32 }
%struct.block_header = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@XV_ALIGN = common dso_local global i64 0, align 8
@BLOCK_FREE = common dso_local global i32 0, align 4
@PREV_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xv_pool*, i32)* @grow_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_pool(%struct.xv_pool* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xv_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.block_header*, align 8
  store %struct.xv_pool* %0, %struct.xv_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.page* @alloc_page(i32 %8)
  store %struct.page* %9, %struct.page** %6, align 8
  %10 = load %struct.page*, %struct.page** %6, align 8
  %11 = icmp ne %struct.page* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.xv_pool*, %struct.xv_pool** %4, align 8
  %21 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %20, i32 0, i32 1
  %22 = call i32 @stat_inc(i32* %21)
  %23 = load %struct.xv_pool*, %struct.xv_pool** %4, align 8
  %24 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = load i32, i32* @KM_USER0, align 4
  %28 = call %struct.block_header* @get_ptr_atomic(%struct.page* %26, i32 0, i32 %27)
  store %struct.block_header* %28, %struct.block_header** %7, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = load i64, i64* @XV_ALIGN, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load %struct.block_header*, %struct.block_header** %7, align 8
  %33 = getelementptr inbounds %struct.block_header, %struct.block_header* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.block_header*, %struct.block_header** %7, align 8
  %35 = load i32, i32* @BLOCK_FREE, align 4
  %36 = call i32 @set_flag(%struct.block_header* %34, i32 %35)
  %37 = load %struct.block_header*, %struct.block_header** %7, align 8
  %38 = load i32, i32* @PREV_FREE, align 4
  %39 = call i32 @clear_flag(%struct.block_header* %37, i32 %38)
  %40 = load %struct.block_header*, %struct.block_header** %7, align 8
  %41 = call i32 @set_blockprev(%struct.block_header* %40, i32 0)
  %42 = load %struct.xv_pool*, %struct.xv_pool** %4, align 8
  %43 = load %struct.page*, %struct.page** %6, align 8
  %44 = load %struct.block_header*, %struct.block_header** %7, align 8
  %45 = call i32 @insert_block(%struct.xv_pool* %42, %struct.page* %43, i32 0, %struct.block_header* %44)
  %46 = load %struct.block_header*, %struct.block_header** %7, align 8
  %47 = load i32, i32* @KM_USER0, align 4
  %48 = call i32 @put_ptr_atomic(%struct.block_header* %46, i32 %47)
  %49 = load %struct.xv_pool*, %struct.xv_pool** %4, align 8
  %50 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %19, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @stat_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.block_header* @get_ptr_atomic(%struct.page*, i32, i32) #1

declare dso_local i32 @set_flag(%struct.block_header*, i32) #1

declare dso_local i32 @clear_flag(%struct.block_header*, i32) #1

declare dso_local i32 @set_blockprev(%struct.block_header*, i32) #1

declare dso_local i32 @insert_block(%struct.xv_pool*, %struct.page*, i32, %struct.block_header*) #1

declare dso_local i32 @put_ptr_atomic(%struct.block_header*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
