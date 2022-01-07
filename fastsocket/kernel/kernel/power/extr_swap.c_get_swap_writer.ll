; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_swap.c_get_swap_writer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_swap.c_get_swap_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_map_handle = type { i64, i32, %struct.swap_map_page* }
%struct.swap_map_page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@root_swap = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_map_handle*)* @get_swap_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_swap_writer(%struct.swap_map_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.swap_map_handle*, align 8
  store %struct.swap_map_handle* %0, %struct.swap_map_handle** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i64 @get_zeroed_page(i32 %4)
  %6 = inttoptr i64 %5 to %struct.swap_map_page*
  %7 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %8 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %7, i32 0, i32 2
  store %struct.swap_map_page* %6, %struct.swap_map_page** %8, align 8
  %9 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %10 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %9, i32 0, i32 2
  %11 = load %struct.swap_map_page*, %struct.swap_map_page** %10, align 8
  %12 = icmp ne %struct.swap_map_page* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load i32, i32* @root_swap, align 4
  %18 = call i32 @alloc_swapdev_block(i32 %17)
  %19 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %20 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %22 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %16
  %26 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %27 = call i32 @release_swap_writer(%struct.swap_map_handle* %26)
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %16
  %31 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %32 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %25, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @alloc_swapdev_block(i32) #1

declare dso_local i32 @release_swap_writer(%struct.swap_map_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
