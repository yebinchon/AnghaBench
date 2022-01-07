; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ctl = type { i32, i64, i64, %struct.btrfs_free_space_entry* }
%struct.btrfs_free_space_entry = type { i32, i8*, i8* }

@ENOSPC = common dso_local global i32 0, align 4
@BTRFS_FREE_SPACE_BITMAP = common dso_local global i32 0, align 4
@BTRFS_FREE_SPACE_EXTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ctl*, i32, i32, i8*)* @io_ctl_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_ctl_add_entry(%struct.io_ctl* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_ctl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.btrfs_free_space_entry*, align 8
  store %struct.io_ctl* %0, %struct.io_ctl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.io_ctl*, %struct.io_ctl** %6, align 8
  %12 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %11, i32 0, i32 3
  %13 = load %struct.btrfs_free_space_entry*, %struct.btrfs_free_space_entry** %12, align 8
  %14 = icmp ne %struct.btrfs_free_space_entry* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOSPC, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %74

18:                                               ; preds = %4
  %19 = load %struct.io_ctl*, %struct.io_ctl** %6, align 8
  %20 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %19, i32 0, i32 3
  %21 = load %struct.btrfs_free_space_entry*, %struct.btrfs_free_space_entry** %20, align 8
  store %struct.btrfs_free_space_entry* %21, %struct.btrfs_free_space_entry** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @cpu_to_le64(i32 %22)
  %24 = load %struct.btrfs_free_space_entry*, %struct.btrfs_free_space_entry** %10, align 8
  %25 = getelementptr inbounds %struct.btrfs_free_space_entry, %struct.btrfs_free_space_entry* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @cpu_to_le64(i32 %26)
  %28 = load %struct.btrfs_free_space_entry*, %struct.btrfs_free_space_entry** %10, align 8
  %29 = getelementptr inbounds %struct.btrfs_free_space_entry, %struct.btrfs_free_space_entry* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @BTRFS_FREE_SPACE_BITMAP, align 4
  br label %36

34:                                               ; preds = %18
  %35 = load i32, i32* @BTRFS_FREE_SPACE_EXTENT, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load %struct.btrfs_free_space_entry*, %struct.btrfs_free_space_entry** %10, align 8
  %39 = getelementptr inbounds %struct.btrfs_free_space_entry, %struct.btrfs_free_space_entry* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.io_ctl*, %struct.io_ctl** %6, align 8
  %41 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %40, i32 0, i32 3
  %42 = load %struct.btrfs_free_space_entry*, %struct.btrfs_free_space_entry** %41, align 8
  %43 = getelementptr inbounds %struct.btrfs_free_space_entry, %struct.btrfs_free_space_entry* %42, i64 24
  store %struct.btrfs_free_space_entry* %43, %struct.btrfs_free_space_entry** %41, align 8
  %44 = load %struct.io_ctl*, %struct.io_ctl** %6, align 8
  %45 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 24
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  %50 = load %struct.io_ctl*, %struct.io_ctl** %6, align 8
  %51 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp uge i64 %53, 24
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %74

56:                                               ; preds = %36
  %57 = load %struct.io_ctl*, %struct.io_ctl** %6, align 8
  %58 = load %struct.io_ctl*, %struct.io_ctl** %6, align 8
  %59 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, 1
  %62 = call i32 @io_ctl_set_crc(%struct.io_ctl* %57, i64 %61)
  %63 = load %struct.io_ctl*, %struct.io_ctl** %6, align 8
  %64 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.io_ctl*, %struct.io_ctl** %6, align 8
  %67 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %74

71:                                               ; preds = %56
  %72 = load %struct.io_ctl*, %struct.io_ctl** %6, align 8
  %73 = call i32 @io_ctl_map_page(%struct.io_ctl* %72, i32 1)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %70, %55, %15
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @io_ctl_set_crc(%struct.io_ctl*, i64) #1

declare dso_local i32 @io_ctl_map_page(%struct.io_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
