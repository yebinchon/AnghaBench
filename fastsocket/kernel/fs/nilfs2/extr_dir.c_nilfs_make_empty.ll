; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dir.c_nilfs_make_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dir.c_nilfs_make_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.nilfs_dir_entry = type { i32, i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c".\00\00\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"..\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_make_empty(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nilfs_dir_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load %struct.address_space*, %struct.address_space** %13, align 8
  store %struct.address_space* %14, %struct.address_space** %6, align 8
  %15 = load %struct.address_space*, %struct.address_space** %6, align 8
  %16 = call %struct.page* @grab_cache_page(%struct.address_space* %15, i32 0)
  store %struct.page* %16, %struct.page** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @nilfs_chunk_size(%struct.inode* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.page*, %struct.page** %7, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %100

24:                                               ; preds = %2
  %25 = load %struct.page*, %struct.page** %7, align 8
  %26 = load %struct.address_space*, %struct.address_space** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @nilfs_prepare_chunk(%struct.page* %25, %struct.address_space* %26, i32 0, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.page*, %struct.page** %7, align 8
  %34 = call i32 @unlock_page(%struct.page* %33)
  br label %96

35:                                               ; preds = %24
  %36 = load %struct.page*, %struct.page** %7, align 8
  %37 = load i32, i32* @KM_USER0, align 4
  %38 = call i8* @kmap_atomic(%struct.page* %36, i32 %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @memset(i8* %39, i32 0, i32 %40)
  %42 = load i8*, i8** %11, align 8
  %43 = bitcast i8* %42 to %struct.nilfs_dir_entry*
  store %struct.nilfs_dir_entry* %43, %struct.nilfs_dir_entry** %9, align 8
  %44 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %9, align 8
  %45 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = call i32 @NILFS_DIR_REC_LEN(i32 1)
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %9, align 8
  %49 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %9, align 8
  %51 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4)
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @cpu_to_le64(i32 %56)
  %58 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %9, align 8
  %59 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %9, align 8
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = call i32 @nilfs_set_de_type(%struct.nilfs_dir_entry* %60, %struct.inode* %61)
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @NILFS_DIR_REC_LEN(i32 1)
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = bitcast i8* %66 to %struct.nilfs_dir_entry*
  store %struct.nilfs_dir_entry* %67, %struct.nilfs_dir_entry** %9, align 8
  %68 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %9, align 8
  %69 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %68, i32 0, i32 0
  store i32 2, i32* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @NILFS_DIR_REC_LEN(i32 1)
  %72 = sub i32 %70, %71
  %73 = call i8* @cpu_to_le16(i32 %72)
  %74 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %9, align 8
  %75 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @cpu_to_le64(i32 %78)
  %80 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %9, align 8
  %81 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %9, align 8
  %83 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @memcpy(i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %86 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %9, align 8
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = call i32 @nilfs_set_de_type(%struct.nilfs_dir_entry* %86, %struct.inode* %87)
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* @KM_USER0, align 4
  %91 = call i32 @kunmap_atomic(i8* %89, i32 %90)
  %92 = load %struct.page*, %struct.page** %7, align 8
  %93 = load %struct.address_space*, %struct.address_space** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @nilfs_commit_chunk(%struct.page* %92, %struct.address_space* %93, i32 0, i32 %94)
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %35, %32
  %97 = load %struct.page*, %struct.page** %7, align 8
  %98 = call i32 @page_cache_release(%struct.page* %97)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %21
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i32) #1

declare dso_local i32 @nilfs_chunk_size(%struct.inode*) #1

declare dso_local i32 @nilfs_prepare_chunk(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @NILFS_DIR_REC_LEN(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @nilfs_set_de_type(%struct.nilfs_dir_entry*, %struct.inode*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @nilfs_commit_chunk(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
