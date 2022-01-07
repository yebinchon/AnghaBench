; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_writepage_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_writepage_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"ppw - page not up to date\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @cifs_writepage_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_writepage_locked(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %7 = call i32 (...) @GetXid()
  store i32 %7, i32* %6, align 4
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @page_cache_get(%struct.page* %8)
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i32 @PageUptodate(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i32 @set_page_writeback(%struct.page* %16)
  br label %18

18:                                               ; preds = %32, %15
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %21 = call i32 @cifs_partialpagewrite(%struct.page* %19, i32 0, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %28 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WB_SYNC_ALL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %18

33:                                               ; preds = %26, %18
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %40 = load %struct.page*, %struct.page** %3, align 8
  %41 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %39, %struct.page* %40)
  br label %52

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.page*, %struct.page** %3, align 8
  %47 = call i32 @SetPageError(%struct.page* %46)
  br label %51

48:                                               ; preds = %42
  %49 = load %struct.page*, %struct.page** %3, align 8
  %50 = call i32 @SetPageUptodate(%struct.page* %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.page*, %struct.page** %3, align 8
  %55 = call i32 @end_page_writeback(%struct.page* %54)
  %56 = load %struct.page*, %struct.page** %3, align 8
  %57 = call i32 @page_cache_release(%struct.page* %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @FreeXid(i32 %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @GetXid(...) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i32 @cifs_partialpagewrite(%struct.page*, i32, i32) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @FreeXid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
