; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_defrag_check_next_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_defrag_check_next_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_map = type { i64, i64, i64 }

@EXTENT_MAP_LAST_BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.extent_map*)* @defrag_check_next_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defrag_check_next_extent(%struct.inode* %0, %struct.extent_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.extent_map*, align 8
  %6 = alloca %struct.extent_map*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.extent_map* %1, %struct.extent_map** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.extent_map*, %struct.extent_map** %5, align 8
  %9 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.extent_map*, %struct.extent_map** %5, align 8
  %12 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i64 @i_size_read(%struct.inode* %15)
  %17 = icmp sge i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load %struct.extent_map*, %struct.extent_map** %5, align 8
  %22 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.extent_map*, %struct.extent_map** %5, align 8
  %25 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call %struct.extent_map* @defrag_lookup_extent(%struct.inode* %20, i64 %27)
  store %struct.extent_map* %28, %struct.extent_map** %6, align 8
  %29 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %30 = icmp ne %struct.extent_map* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %33 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EXTENT_MAP_LAST_BYTE, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %19
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %40 = call i32 @free_extent_map(%struct.extent_map* %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.extent_map* @defrag_lookup_extent(%struct.inode*, i64) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
