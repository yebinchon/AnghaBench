; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dat.c_nilfs_dat_abort_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dat.c_nilfs_dat_abort_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_req = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_dat_entry = type { i32, i32 }

@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_dat_abort_end(%struct.inode* %0, %struct.nilfs_palloc_req* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nilfs_palloc_req*, align 8
  %5 = alloca %struct.nilfs_dat_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nilfs_palloc_req* %1, %struct.nilfs_palloc_req** %4, align 8
  %9 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %10 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @KM_USER0, align 4
  %15 = call i8* @kmap_atomic(i32 %13, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %18 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %21 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode* %16, i32 %19, %struct.TYPE_2__* %22, i8* %23)
  store %struct.nilfs_dat_entry* %24, %struct.nilfs_dat_entry** %5, align 8
  %25 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %5, align 8
  %26 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le64_to_cpu(i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %5, align 8
  %30 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le64_to_cpu(i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @KM_USER0, align 4
  %35 = call i32 @kunmap_atomic(i8* %33, i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = call i64 @nilfs_mdt_cno(%struct.inode* %37)
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %46 = call i32 @nilfs_palloc_abort_free_entry(%struct.inode* %44, %struct.nilfs_palloc_req* %45)
  br label %47

47:                                               ; preds = %43, %40, %2
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %50 = call i32 @nilfs_dat_abort_entry(%struct.inode* %48, %struct.nilfs_palloc_req* %49)
  ret void
}

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode*, i32, %struct.TYPE_2__*, i8*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i64 @nilfs_mdt_cno(%struct.inode*) #1

declare dso_local i32 @nilfs_palloc_abort_free_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @nilfs_dat_abort_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
