; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostfs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %19 = load %struct.address_space*, %struct.address_space** %9, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %15, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  store i32 %25, i32* %17, align 4
  %26 = load %struct.page*, %struct.page** %13, align 8
  %27 = call i8* @kmap(%struct.page* %26)
  store i8* %27, i8** %16, align 8
  %28 = load %struct.file*, %struct.file** %8, align 8
  %29 = call %struct.TYPE_2__* @FILE_HOSTFS_I(%struct.file* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %16, align 8
  %33 = load i32, i32* %17, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @write_file(i32 %31, i32* %10, i8* %35, i32 %36)
  store i32 %37, i32* %18, align 4
  %38 = load %struct.page*, %struct.page** %13, align 8
  %39 = call i32 @kunmap(%struct.page* %38)
  %40 = load %struct.page*, %struct.page** %13, align 8
  %41 = call i32 @PageUptodate(%struct.page* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %7
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.page*, %struct.page** %13, align 8
  %49 = call i32 @SetPageUptodate(%struct.page* %48)
  br label %50

50:                                               ; preds = %47, %43, %7
  %51 = load i32, i32* %18, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.inode*, %struct.inode** %15, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.inode*, %struct.inode** %15, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %53, %50
  %64 = load %struct.page*, %struct.page** %13, align 8
  %65 = call i32 @unlock_page(%struct.page* %64)
  %66 = load %struct.page*, %struct.page** %13, align 8
  %67 = call i32 @page_cache_release(%struct.page* %66)
  %68 = load i32, i32* %18, align 4
  ret i32 %68
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @write_file(i32, i32*, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @FILE_HOSTFS_I(%struct.file*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
