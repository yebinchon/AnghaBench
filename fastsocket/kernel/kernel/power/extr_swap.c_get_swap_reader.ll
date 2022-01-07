; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_swap.c_get_swap_reader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_swap.c_get_swap_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_map_handle = type { i64, %struct.swap_map_page* }
%struct.swap_map_page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_map_handle*, i32)* @get_swap_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_swap_reader(%struct.swap_map_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swap_map_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.swap_map_handle* %0, %struct.swap_map_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load i32, i32* @__GFP_WAIT, align 4
  %14 = load i32, i32* @__GFP_HIGH, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @get_zeroed_page(i32 %15)
  %17 = inttoptr i64 %16 to %struct.swap_map_page*
  %18 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %19 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %18, i32 0, i32 1
  store %struct.swap_map_page* %17, %struct.swap_map_page** %19, align 8
  %20 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %21 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %20, i32 0, i32 1
  %22 = load %struct.swap_map_page*, %struct.swap_map_page** %21, align 8
  %23 = icmp ne %struct.swap_map_page* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %42

27:                                               ; preds = %12
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %30 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %29, i32 0, i32 1
  %31 = load %struct.swap_map_page*, %struct.swap_map_page** %30, align 8
  %32 = call i32 @bio_read_page(i32 %28, %struct.swap_map_page* %31, i32* null)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %37 = call i32 @release_swap_reader(%struct.swap_map_handle* %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %27
  %40 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %41 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %35, %24, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @bio_read_page(i32, %struct.swap_map_page*, i32*) #1

declare dso_local i32 @release_swap_reader(%struct.swap_map_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
