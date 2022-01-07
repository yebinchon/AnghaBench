; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_bnode.c_hfsplus_bnode_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_bnode.c_hfsplus_bnode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { %struct.page**, i64 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_write(%struct.hfs_bnode* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %36 = load %struct.page**, %struct.page*** %9, align 8
  %37 = load %struct.page*, %struct.page** %36, align 8
  %38 = call i64 @kmap(%struct.page* %37)
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @memcpy(i64 %41, i8* %42, i32 %43)
  %45 = load %struct.page**, %struct.page*** %9, align 8
  %46 = load %struct.page*, %struct.page** %45, align 8
  %47 = call i32 @set_page_dirty(%struct.page* %46)
  %48 = load %struct.page**, %struct.page*** %9, align 8
  %49 = load %struct.page*, %struct.page** %48, align 8
  %50 = call i32 @kunmap(%struct.page* %49)
  br label %51

51:                                               ; preds = %56, %4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr i8, i8* %58, i64 %59
  store i8* %60, i8** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @min(i32 %61, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.page**, %struct.page*** %9, align 8
  %66 = getelementptr inbounds %struct.page*, %struct.page** %65, i32 1
  store %struct.page** %66, %struct.page*** %9, align 8
  %67 = load %struct.page*, %struct.page** %66, align 8
  %68 = call i64 @kmap(%struct.page* %67)
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @memcpy(i64 %68, i8* %69, i32 %70)
  %72 = load %struct.page**, %struct.page*** %9, align 8
  %73 = load %struct.page*, %struct.page** %72, align 8
  %74 = call i32 @set_page_dirty(%struct.page* %73)
  %75 = load %struct.page**, %struct.page*** %9, align 8
  %76 = load %struct.page*, %struct.page** %75, align 8
  %77 = call i32 @kunmap(%struct.page* %76)
  br label %51

78:                                               ; preds = %51
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @kmap(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
