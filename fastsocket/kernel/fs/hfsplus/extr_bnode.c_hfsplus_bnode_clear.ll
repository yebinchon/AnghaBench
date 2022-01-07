; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_bnode.c_hfsplus_bnode_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_bnode.c_hfsplus_bnode_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { %struct.page**, i64 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_clear(%struct.hfs_bnode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfs_bnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32, align 4
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %10 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %17 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %16, i32 0, i32 0
  %18 = load %struct.page**, %struct.page*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.page*, %struct.page** %18, i64 %22
  store %struct.page** %23, %struct.page*** %7, align 8
  %24 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %30, %31
  %33 = call i32 @min(i32 %28, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.page**, %struct.page*** %7, align 8
  %35 = load %struct.page*, %struct.page** %34, align 8
  %36 = call i64 @kmap(%struct.page* %35)
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @memset(i64 %39, i32 0, i32 %40)
  %42 = load %struct.page**, %struct.page*** %7, align 8
  %43 = load %struct.page*, %struct.page** %42, align 8
  %44 = call i32 @set_page_dirty(%struct.page* %43)
  %45 = load %struct.page**, %struct.page*** %7, align 8
  %46 = load %struct.page*, %struct.page** %45, align 8
  %47 = call i32 @kunmap(%struct.page* %46)
  br label %48

48:                                               ; preds = %53, %3
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @min(i32 %54, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.page**, %struct.page*** %7, align 8
  %59 = getelementptr inbounds %struct.page*, %struct.page** %58, i32 1
  store %struct.page** %59, %struct.page*** %7, align 8
  %60 = load %struct.page*, %struct.page** %59, align 8
  %61 = call i64 @kmap(%struct.page* %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @memset(i64 %61, i32 0, i32 %62)
  %64 = load %struct.page**, %struct.page*** %7, align 8
  %65 = load %struct.page*, %struct.page** %64, align 8
  %66 = call i32 @set_page_dirty(%struct.page* %65)
  %67 = load %struct.page**, %struct.page*** %7, align 8
  %68 = load %struct.page*, %struct.page** %67, align 8
  %69 = call i32 @kunmap(%struct.page* %68)
  br label %48

70:                                               ; preds = %48
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @kmap(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
