; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dat.c_nilfs_dat_commit_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dat.c_nilfs_dat_commit_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_req = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_dat_entry = type { i32, i32, i32 }

@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_dat_commit_end(%struct.inode* %0, %struct.nilfs_palloc_req* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_palloc_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_dat_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nilfs_palloc_req* %1, %struct.nilfs_palloc_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %13 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @KM_USER0, align 4
  %18 = call i8* @kmap_atomic(i32 %16, i32 %17)
  store i8* %18, i8** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %21 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %24 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode* %19, i32 %22, %struct.TYPE_2__* %25, i8* %26)
  store %struct.nilfs_dat_entry* %27, %struct.nilfs_dat_entry** %7, align 8
  %28 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %7, align 8
  %29 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le64_to_cpu(i32 %30)
  store i64 %31, i64* %8, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %3
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i64 @nilfs_mdt_cno(%struct.inode* %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp sgt i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  br label %42

42:                                               ; preds = %34, %3
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @cpu_to_le64(i64 %43)
  %45 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %7, align 8
  %46 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %7, align 8
  %48 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le64_to_cpu(i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* @KM_USER0, align 4
  %53 = call i32 @kunmap_atomic(i8* %51, i32 %52)
  %54 = load i64, i64* %10, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %59 = call i32 @nilfs_dat_commit_free(%struct.inode* %57, %struct.nilfs_palloc_req* %58)
  br label %64

60:                                               ; preds = %42
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %63 = call i32 @nilfs_dat_commit_entry(%struct.inode* %61, %struct.nilfs_palloc_req* %62)
  br label %64

64:                                               ; preds = %60, %56
  ret void
}

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode*, i32, %struct.TYPE_2__*, i8*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @nilfs_mdt_cno(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @nilfs_dat_commit_free(%struct.inode*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @nilfs_dat_commit_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
