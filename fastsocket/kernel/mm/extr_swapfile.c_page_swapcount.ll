; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_page_swapcount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_page_swapcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.swap_info_struct = type { i32* }
%struct.TYPE_4__ = type { i32 }

@swap_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @page_swapcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_swapcount(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = call i32 @page_private(%struct.page* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.swap_info_struct* @swap_info_get(i32 %10)
  store %struct.swap_info_struct* %11, %struct.swap_info_struct** %4, align 8
  %12 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %13 = icmp ne %struct.swap_info_struct* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %16 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @swp_offset(i32 %19)
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @swap_count(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = call i32 @spin_unlock(i32* @swap_lock)
  br label %25

25:                                               ; preds = %14, %1
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local %struct.swap_info_struct* @swap_info_get(i32) #1

declare dso_local i32 @swap_count(i32) #1

declare dso_local i64 @swp_offset(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
