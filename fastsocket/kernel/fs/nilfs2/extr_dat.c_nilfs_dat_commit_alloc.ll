; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dat.c_nilfs_dat_commit_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dat.c_nilfs_dat_commit_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_req = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_dat_entry = type { i8*, i8*, i8* }

@KM_USER0 = common dso_local global i32 0, align 4
@NILFS_CNO_MIN = common dso_local global i32 0, align 4
@NILFS_CNO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_dat_commit_alloc(%struct.inode* %0, %struct.nilfs_palloc_req* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nilfs_palloc_req*, align 8
  %5 = alloca %struct.nilfs_dat_entry*, align 8
  %6 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nilfs_palloc_req* %1, %struct.nilfs_palloc_req** %4, align 8
  %7 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %8 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @KM_USER0, align 4
  %13 = call i8* @kmap_atomic(i32 %11, i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %16 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %19 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode* %14, i32 %17, %struct.TYPE_2__* %20, i8* %21)
  store %struct.nilfs_dat_entry* %22, %struct.nilfs_dat_entry** %5, align 8
  %23 = load i32, i32* @NILFS_CNO_MIN, align 4
  %24 = call i8* @cpu_to_le64(i32 %23)
  %25 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %5, align 8
  %26 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @NILFS_CNO_MAX, align 4
  %28 = call i8* @cpu_to_le64(i32 %27)
  %29 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %5, align 8
  %30 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = call i8* @cpu_to_le64(i32 0)
  %32 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %5, align 8
  %33 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @KM_USER0, align 4
  %36 = call i32 @kunmap_atomic(i8* %34, i32 %35)
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %39 = call i32 @nilfs_palloc_commit_alloc_entry(%struct.inode* %37, %struct.nilfs_palloc_req* %38)
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %42 = call i32 @nilfs_dat_commit_entry(%struct.inode* %40, %struct.nilfs_palloc_req* %41)
  ret void
}

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode*, i32, %struct.TYPE_2__*, i8*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @nilfs_palloc_commit_alloc_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @nilfs_dat_commit_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
