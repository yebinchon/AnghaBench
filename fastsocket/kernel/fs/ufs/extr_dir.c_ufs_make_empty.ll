; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_dir.c_ufs_make_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_dir.c_ufs_make_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.address_space*, %struct.super_block* }
%struct.address_space = type { i32 }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.ufs_dir_entry = type { i32, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_make_empty(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ufs_dir_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 3
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %7, align 8
  %19 = load %struct.address_space*, %struct.address_space** %7, align 8
  %20 = call %struct.page* @grab_cache_page(%struct.address_space* %19, i32 0)
  store %struct.page* %20, %struct.page** %8, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.TYPE_4__* @UFS_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %125

32:                                               ; preds = %2
  %33 = load %struct.address_space*, %struct.address_space** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %36 = call i32 @__ufs_write_begin(i32* null, %struct.address_space* %33, i32 0, i32 %34, i32 %35, %struct.page** %8, i32* null)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.page*, %struct.page** %8, align 8
  %41 = call i32 @unlock_page(%struct.page* %40)
  br label %121

42:                                               ; preds = %32
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = call i32 @kmap(%struct.page* %43)
  %45 = load %struct.page*, %struct.page** %8, align 8
  %46 = call i64 @page_address(%struct.page* %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %50 = call i32 @memset(i8* %48, i32 0, i32 %49)
  %51 = load i8*, i8** %11, align 8
  %52 = bitcast i8* %51 to %struct.ufs_dir_entry*
  store %struct.ufs_dir_entry* %52, %struct.ufs_dir_entry** %10, align 8
  %53 = load %struct.super_block*, %struct.super_block** %6, align 8
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @cpu_to_fs32(%struct.super_block* %53, i32 %56)
  %58 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %59 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.super_block*, %struct.super_block** %6, align 8
  %61 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ufs_set_de_type(%struct.super_block* %60, %struct.ufs_dir_entry* %61, i32 %64)
  %66 = load %struct.super_block*, %struct.super_block** %6, align 8
  %67 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %68 = call i32 @ufs_set_de_namlen(%struct.super_block* %66, %struct.ufs_dir_entry* %67, i32 1)
  %69 = load %struct.super_block*, %struct.super_block** %6, align 8
  %70 = call i64 @UFS_DIR_REC_LEN(i32 1)
  %71 = call i8* @cpu_to_fs16(%struct.super_block* %69, i64 %70)
  %72 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %73 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %75 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strcpy(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %79 = bitcast %struct.ufs_dir_entry* %78 to i8*
  %80 = load %struct.super_block*, %struct.super_block** %6, align 8
  %81 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %82 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @fs16_to_cpu(%struct.super_block* %80, i8* %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %79, i64 %85
  %87 = bitcast i8* %86 to %struct.ufs_dir_entry*
  store %struct.ufs_dir_entry* %87, %struct.ufs_dir_entry** %10, align 8
  %88 = load %struct.super_block*, %struct.super_block** %6, align 8
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_fs32(%struct.super_block* %88, i32 %91)
  %93 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %94 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.super_block*, %struct.super_block** %6, align 8
  %96 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ufs_set_de_type(%struct.super_block* %95, %struct.ufs_dir_entry* %96, i32 %99)
  %101 = load %struct.super_block*, %struct.super_block** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = call i64 @UFS_DIR_REC_LEN(i32 1)
  %105 = sub nsw i64 %103, %104
  %106 = call i8* @cpu_to_fs16(%struct.super_block* %101, i64 %105)
  %107 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %108 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.super_block*, %struct.super_block** %6, align 8
  %110 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %111 = call i32 @ufs_set_de_namlen(%struct.super_block* %109, %struct.ufs_dir_entry* %110, i32 2)
  %112 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %113 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @strcpy(i32 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.page*, %struct.page** %8, align 8
  %117 = call i32 @kunmap(%struct.page* %116)
  %118 = load %struct.page*, %struct.page** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @ufs_commit_chunk(%struct.page* %118, i32 0, i32 %119)
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %42, %39
  %122 = load %struct.page*, %struct.page** %8, align 8
  %123 = call i32 @page_cache_release(%struct.page* %122)
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %29
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i32) #1

declare dso_local %struct.TYPE_4__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @__ufs_write_begin(i32*, %struct.address_space*, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

declare dso_local i32 @ufs_set_de_type(%struct.super_block*, %struct.ufs_dir_entry*, i32) #1

declare dso_local i32 @ufs_set_de_namlen(%struct.super_block*, %struct.ufs_dir_entry*, i32) #1

declare dso_local i8* @cpu_to_fs16(%struct.super_block*, i64) #1

declare dso_local i64 @UFS_DIR_REC_LEN(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @fs16_to_cpu(%struct.super_block*, i8*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @ufs_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
