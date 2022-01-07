; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_readpage_worker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_readpage_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Bytes read %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*, i32*)* @cifs_readpage_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_readpage_worker(%struct.file* %0, %struct.page* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i32 @cifs_readpage_from_fscache(%struct.TYPE_7__* %14, %struct.page* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %83

20:                                               ; preds = %3
  %21 = load %struct.page*, %struct.page** %5, align 8
  %22 = call i32 @page_cache_get(%struct.page* %21)
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = call i8* @kmap(%struct.page* %23)
  store i8* %24, i8** %7, align 8
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @cifs_read(%struct.file* %25, i8* %26, i32 %27, i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %78

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @current_fs_time(i32 %44)
  %46 = load %struct.file*, %struct.file** %4, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %45, i32* %52, align 4
  %53 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %36
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @memset(i8* %60, i32 0, i32 %63)
  br label %65

65:                                               ; preds = %56, %36
  %66 = load %struct.page*, %struct.page** %5, align 8
  %67 = call i32 @flush_dcache_page(%struct.page* %66)
  %68 = load %struct.page*, %struct.page** %5, align 8
  %69 = call i32 @SetPageUptodate(%struct.page* %68)
  %70 = load %struct.file*, %struct.file** %4, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load %struct.page*, %struct.page** %5, align 8
  %77 = call i32 @cifs_readpage_to_fscache(%struct.TYPE_7__* %75, %struct.page* %76)
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %65, %32
  %79 = load %struct.page*, %struct.page** %5, align 8
  %80 = call i32 @kunmap(%struct.page* %79)
  %81 = load %struct.page*, %struct.page** %5, align 8
  %82 = call i32 @page_cache_release(%struct.page* %81)
  br label %83

83:                                               ; preds = %78, %19
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @cifs_readpage_from_fscache(%struct.TYPE_7__*, %struct.page*) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @cifs_read(%struct.file*, i8*, i32, i32*) #1

declare dso_local i32 @cFYI(i32, i8*, i32) #1

declare dso_local i32 @current_fs_time(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @cifs_readpage_to_fscache(%struct.TYPE_7__*, %struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
