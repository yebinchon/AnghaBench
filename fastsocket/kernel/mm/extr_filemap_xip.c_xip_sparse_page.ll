; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap_xip.c_xip_sparse_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap_xip.c_xip_sparse_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@__xip_sparse_page = common dso_local global %struct.page* null, align 8
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* ()* @xip_sparse_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @xip_sparse_page() #0 {
  %1 = alloca %struct.page*, align 8
  %2 = load %struct.page*, %struct.page** @__xip_sparse_page, align 8
  %3 = icmp ne %struct.page* %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @GFP_HIGHUSER, align 4
  %6 = load i32, i32* @__GFP_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.page* @alloc_page(i32 %7)
  store %struct.page* %8, %struct.page** %1, align 8
  %9 = load %struct.page*, %struct.page** %1, align 8
  %10 = icmp ne %struct.page* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load %struct.page*, %struct.page** %1, align 8
  store %struct.page* %12, %struct.page** @__xip_sparse_page, align 8
  br label %13

13:                                               ; preds = %11, %4
  br label %14

14:                                               ; preds = %13, %0
  %15 = load %struct.page*, %struct.page** @__xip_sparse_page, align 8
  ret %struct.page* %15
}

declare dso_local %struct.page* @alloc_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
