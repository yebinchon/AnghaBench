; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dat.c_nilfs_dat_prepare_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dat.c_nilfs_dat_prepare_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_req = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_dat_entry = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_dat_prepare_end(%struct.inode* %0, %struct.nilfs_palloc_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_palloc_req*, align 8
  %6 = alloca %struct.nilfs_dat_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nilfs_palloc_req* %1, %struct.nilfs_palloc_req** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %13 = call i32 @nilfs_dat_prepare_entry(%struct.inode* %11, %struct.nilfs_palloc_req* %12, i32 0)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %68

24:                                               ; preds = %2
  %25 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %26 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @KM_USER0, align 4
  %31 = call i8* @kmap_atomic(i32 %29, i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %34 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %37 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode* %32, i32 %35, %struct.TYPE_2__* %38, i8* %39)
  store %struct.nilfs_dat_entry* %40, %struct.nilfs_dat_entry** %6, align 8
  %41 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %6, align 8
  %42 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le64_to_cpu(i32 %43)
  store i8* %44, i8** %7, align 8
  %45 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %6, align 8
  %46 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le64_to_cpu(i32 %47)
  %49 = ptrtoint i8* %48 to i64
  store i64 %49, i64* %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @KM_USER0, align 4
  %52 = call i32 @kunmap_atomic(i8* %50, i32 %51)
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %24
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %58 = call i32 @nilfs_palloc_prepare_free_entry(%struct.inode* %56, %struct.nilfs_palloc_req* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %64 = call i32 @nilfs_dat_abort_entry(%struct.inode* %62, %struct.nilfs_palloc_req* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %24
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %61, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @nilfs_dat_prepare_entry(%struct.inode*, %struct.nilfs_palloc_req*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode*, i32, %struct.TYPE_2__*, i8*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @nilfs_palloc_prepare_free_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @nilfs_dat_abort_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
