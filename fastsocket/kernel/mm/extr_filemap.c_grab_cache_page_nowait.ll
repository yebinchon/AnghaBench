; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_grab_cache_page_nowait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_grab_cache_page_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@__GFP_FS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @grab_cache_page_nowait(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.address_space*, %struct.address_space** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.page* @find_get_page(%struct.address_space* %7, i32 %8)
  store %struct.page* %9, %struct.page** %6, align 8
  %10 = load %struct.page*, %struct.page** %6, align 8
  %11 = icmp ne %struct.page* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call i64 @trylock_page(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %17, %struct.page** %3, align 8
  br label %42

18:                                               ; preds = %12
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = call i32 @page_cache_release(%struct.page* %19)
  store %struct.page* null, %struct.page** %3, align 8
  br label %42

21:                                               ; preds = %2
  %22 = load %struct.address_space*, %struct.address_space** %4, align 8
  %23 = call i32 @mapping_gfp_mask(%struct.address_space* %22)
  %24 = load i32, i32* @__GFP_FS, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call %struct.page* @__page_cache_alloc(i32 %26)
  store %struct.page* %27, %struct.page** %6, align 8
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = icmp ne %struct.page* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.page*, %struct.page** %6, align 8
  %32 = load %struct.address_space*, %struct.address_space** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @GFP_NOFS, align 4
  %35 = call i64 @add_to_page_cache_lru(%struct.page* %31, %struct.address_space* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = call i32 @page_cache_release(%struct.page* %38)
  store %struct.page* null, %struct.page** %6, align 8
  br label %40

40:                                               ; preds = %37, %30, %21
  %41 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %41, %struct.page** %3, align 8
  br label %42

42:                                               ; preds = %40, %18, %16
  %43 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %43
}

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i32) #1

declare dso_local i64 @trylock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local %struct.page* @__page_cache_alloc(i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local i64 @add_to_page_cache_lru(%struct.page*, %struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
