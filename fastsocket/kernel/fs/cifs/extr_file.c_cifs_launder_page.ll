; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_launder_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_launder_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.writeback_control = type { i64, i64, i32, i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Launder page: %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @cifs_launder_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_launder_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.writeback_control, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call i64 @page_offset(%struct.page* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  store i64 %13, i64* %5, align 8
  %14 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 3
  %20 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.page* %21)
  %23 = load %struct.page*, %struct.page** %2, align 8
  %24 = call i64 @clear_page_dirty_for_io(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.page*, %struct.page** %2, align 8
  %28 = call i32 @cifs_writepage_locked(%struct.page* %27, %struct.writeback_control* %6)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.page*, %struct.page** %2, align 8
  %31 = load %struct.page*, %struct.page** %2, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cifs_fscache_invalidate_page(%struct.page* %30, i32 %35)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @cFYI(i32, i8*, %struct.page*) #1

declare dso_local i64 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @cifs_writepage_locked(%struct.page*, %struct.writeback_control*) #1

declare dso_local i32 @cifs_fscache_invalidate_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
