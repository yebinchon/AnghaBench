; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i64 }
%struct.TYPE_2__ = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostfs_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %12 = shl i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call i8* @kmap(%struct.page* %13)
  store i8* %14, i8** %5, align 8
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = call %struct.TYPE_2__* @FILE_HOSTFS_I(%struct.file* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %21 = call i32 @read_file(i32 %18, i64* %6, i8* %19, i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %46

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %30, %32
  %34 = call i32 @memset(i8* %29, i32 0, i64 %33)
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = call i32 @flush_dcache_page(%struct.page* %35)
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = call i32 @SetPageUptodate(%struct.page* %37)
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = call i64 @PageError(%struct.page* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = call i32 @ClearPageError(%struct.page* %43)
  br label %45

45:                                               ; preds = %42, %25
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.page*, %struct.page** %4, align 8
  %48 = call i32 @kunmap(%struct.page* %47)
  %49 = load %struct.page*, %struct.page** %4, align 8
  %50 = call i32 @unlock_page(%struct.page* %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @read_file(i32, i64*, i8*, i64) #1

declare dso_local %struct.TYPE_2__* @FILE_HOSTFS_I(%struct.file*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
