; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.h_metapage_nohomeok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.h_metapage_nohomeok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapage = type { i32, %struct.page* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.metapage*)* @metapage_nohomeok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @metapage_nohomeok(%struct.metapage* %0) #0 {
  %2 = alloca %struct.metapage*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.metapage* %0, %struct.metapage** %2, align 8
  %4 = load %struct.metapage*, %struct.metapage** %2, align 8
  %5 = getelementptr inbounds %struct.metapage, %struct.metapage* %4, i32 0, i32 1
  %6 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %6, %struct.page** %3, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i32 @lock_page(%struct.page* %7)
  %9 = load %struct.metapage*, %struct.metapage** %2, align 8
  %10 = getelementptr inbounds %struct.metapage, %struct.metapage* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.metapage*, %struct.metapage** %2, align 8
  %16 = call i32 @mark_metapage_dirty(%struct.metapage* %15)
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @page_cache_get(%struct.page* %17)
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @wait_on_page_writeback(%struct.page* %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call i32 @unlock_page(%struct.page* %22)
  ret void
}

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @mark_metapage_dirty(%struct.metapage*) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
