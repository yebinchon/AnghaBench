; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dat.c_nilfs_dat_translate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dat.c_nilfs_dat_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_dat_entry = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_dat_translate(%struct.inode* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.nilfs_dat_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @nilfs_palloc_get_entry_block(%struct.inode* %13, i32 %14, i32 0, %struct.buffer_head** %8)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %4, align 4
  br label %54

20:                                               ; preds = %3
  %21 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @KM_USER0, align 4
  %25 = call i8* @kmap_atomic(i32 %23, i32 %24)
  store i8* %25, i8** %11, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode* %26, i32 %27, %struct.buffer_head* %28, i8* %29)
  store %struct.nilfs_dat_entry* %30, %struct.nilfs_dat_entry** %9, align 8
  %31 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %9, align 8
  %32 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le64_to_cpu(i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %47

40:                                               ; preds = %20
  %41 = load i64*, i64** %7, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* %10, align 8
  %45 = load i64*, i64** %7, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* @KM_USER0, align 4
  %50 = call i32 @kunmap_atomic(i8* %48, i32 %49)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = call i32 @brelse(%struct.buffer_head* %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %18
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @nilfs_palloc_get_entry_block(%struct.inode*, i32, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode*, i32, %struct.buffer_head*, i8*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
