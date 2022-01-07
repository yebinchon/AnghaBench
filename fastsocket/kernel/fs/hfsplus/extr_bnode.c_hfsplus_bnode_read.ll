; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_bnode.c_hfsplus_bnode_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_bnode.c_hfsplus_bnode_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { %struct.page**, i64 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_read(%struct.hfs_bnode* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hfs_bnode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  %10 = alloca i32, align 4
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %12 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %19 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %18, i32 0, i32 0
  %20 = load %struct.page**, %struct.page*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.page*, %struct.page** %20, i64 %24
  store %struct.page** %25, %struct.page*** %9, align 8
  %26 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 @min(i32 %30, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.page**, %struct.page*** %9, align 8
  %38 = load %struct.page*, %struct.page** %37, align 8
  %39 = call i64 @kmap(%struct.page* %38)
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @memcpy(i8* %36, i64 %42, i32 %43)
  %45 = load %struct.page**, %struct.page*** %9, align 8
  %46 = load %struct.page*, %struct.page** %45, align 8
  %47 = call i32 @kunmap(%struct.page* %46)
  br label %48

48:                                               ; preds = %53, %4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr i8, i8* %55, i64 %56
  store i8* %57, i8** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @min(i32 %58, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.page**, %struct.page*** %9, align 8
  %64 = getelementptr inbounds %struct.page*, %struct.page** %63, i32 1
  store %struct.page** %64, %struct.page*** %9, align 8
  %65 = load %struct.page*, %struct.page** %64, align 8
  %66 = call i64 @kmap(%struct.page* %65)
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @memcpy(i8* %62, i64 %66, i32 %67)
  %69 = load %struct.page**, %struct.page*** %9, align 8
  %70 = load %struct.page*, %struct.page** %69, align 8
  %71 = call i32 @kunmap(%struct.page* %70)
  br label %48

72:                                               ; preds = %48
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i64 @kmap(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
