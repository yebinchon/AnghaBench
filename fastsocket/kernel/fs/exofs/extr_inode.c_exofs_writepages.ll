; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_inode.c_exofs_writepages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_inode.c_exofs_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.writeback_control = type { i64, i64 }
%struct.page_collect = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [85 x i8] c"inode(0x%lx) wbc->start=0x%llx wbc->end=0x%llx m->nrpages=%lu start=0x%lx end=0x%lx\0A\00", align 1
@writepage_strip = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"write_cache_pages => %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @exofs_writepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exofs_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.page_collect, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %11 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %12 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %15 = ashr i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %17 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LLONG_MAX, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.address_space*, %struct.address_space** %4, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %29 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %32 = ashr i64 %30, %31
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i64 [ %26, %21 ], [ %32, %27 ]
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37, %33
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub nsw i64 %41, %42
  %44 = add nsw i64 %43, 1
  %45 = call i64 @min(i64 %44, i64 32)
  store i64 %45, i64* %9, align 8
  br label %50

46:                                               ; preds = %37
  %47 = load %struct.address_space*, %struct.address_space** %4, align 8
  %48 = getelementptr inbounds %struct.address_space, %struct.address_space* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.address_space*, %struct.address_space** %4, align 8
  %52 = getelementptr inbounds %struct.address_space, %struct.address_space* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %57 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %60 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.address_space*, %struct.address_space** %4, align 8
  %63 = getelementptr inbounds %struct.address_space, %struct.address_space* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @EXOFS_DBGMSG(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %58, i64 %61, i64 %64, i64 %65, i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.address_space*, %struct.address_space** %4, align 8
  %70 = getelementptr inbounds %struct.address_space, %struct.address_space* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = call i32 @_pcol_init(%struct.page_collect* %6, i64 %68, %struct.TYPE_2__* %71)
  %73 = load %struct.address_space*, %struct.address_space** %4, align 8
  %74 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %75 = load i32, i32* @writepage_strip, align 4
  %76 = call i32 @write_cache_pages(%struct.address_space* %73, %struct.writeback_control* %74, i32 %75, %struct.page_collect* %6)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %50
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @EXOFS_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %85

83:                                               ; preds = %50
  %84 = call i32 @write_exec(%struct.page_collect* %6)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @EXOFS_DBGMSG(i8*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @_pcol_init(%struct.page_collect*, i64, %struct.TYPE_2__*) #1

declare dso_local i32 @write_cache_pages(%struct.address_space*, %struct.writeback_control*, i32, %struct.page_collect*) #1

declare dso_local i32 @EXOFS_ERR(i8*, i32) #1

declare dso_local i32 @write_exec(%struct.page_collect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
