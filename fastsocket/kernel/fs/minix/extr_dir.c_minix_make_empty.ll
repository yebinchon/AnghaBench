; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_make_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_make_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.minix_sb_info = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@MINIX_V3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minix_make_empty(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.minix_sb_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 2
  %15 = load %struct.address_space*, %struct.address_space** %14, align 8
  store %struct.address_space* %15, %struct.address_space** %6, align 8
  %16 = load %struct.address_space*, %struct.address_space** %6, align 8
  %17 = call %struct.page* @grab_cache_page(%struct.address_space* %16, i32 0)
  store %struct.page* %17, %struct.page** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.minix_sb_info* @minix_sb(i32 %20)
  store %struct.minix_sb_info* %21, %struct.minix_sb_info** %8, align 8
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = icmp ne %struct.page* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %114

27:                                               ; preds = %2
  %28 = load %struct.address_space*, %struct.address_space** %6, align 8
  %29 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %30 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 2, %31
  %33 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %34 = call i32 @__minix_write_begin(i32* null, %struct.address_space* %28, i32 0, i32 %32, i32 %33, %struct.page** %7, i32* null)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.page*, %struct.page** %7, align 8
  %39 = call i32 @unlock_page(%struct.page* %38)
  br label %110

40:                                               ; preds = %27
  %41 = load %struct.page*, %struct.page** %7, align 8
  %42 = load i32, i32* @KM_USER0, align 4
  %43 = call i8* @kmap_atomic(%struct.page* %41, i32 %42)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %46 = call i32 @memset(i8* %44, i32 0, i32 %45)
  %47 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %48 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MINIX_V3, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %40
  %53 = load i8*, i8** %9, align 8
  %54 = bitcast i8* %53 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %11, align 8
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strcpy(i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %66 = call %struct.TYPE_5__* @minix_next_entry(%struct.TYPE_5__* %64, %struct.minix_sb_info* %65)
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %11, align 8
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @strcpy(i32 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %100

76:                                               ; preds = %40
  %77 = load i8*, i8** %9, align 8
  %78 = bitcast i8* %77 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %12, align 8
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @strcpy(i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %89 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %90 = call %struct.TYPE_5__* @minix_next_entry(%struct.TYPE_5__* %88, %struct.minix_sb_info* %89)
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %12, align 8
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @strcpy(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %76, %52
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* @KM_USER0, align 4
  %103 = call i32 @kunmap_atomic(i8* %101, i32 %102)
  %104 = load %struct.page*, %struct.page** %7, align 8
  %105 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %106 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 2, %107
  %109 = call i32 @dir_commit_chunk(%struct.page* %104, i32 0, i32 %108)
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %100, %37
  %111 = load %struct.page*, %struct.page** %7, align 8
  %112 = call i32 @page_cache_release(%struct.page* %111)
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %24
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i32) #1

declare dso_local %struct.minix_sb_info* @minix_sb(i32) #1

declare dso_local i32 @__minix_write_begin(i32*, %struct.address_space*, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @minix_next_entry(%struct.TYPE_5__*, %struct.minix_sb_info*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
