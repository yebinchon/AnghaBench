; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_merge_extent_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_merge_extent_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_map_tree = type { i32 }
%struct.extent_map = type { i64, i64, i32, i32, i64 }

@EXTENT_MAP_LAST_BYTE = common dso_local global i64 0, align 8
@EXTENT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_map_tree*, %struct.extent_map*, %struct.extent_map*, i64, i64)* @merge_extent_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_extent_mapping(%struct.extent_map_tree* %0, %struct.extent_map* %1, %struct.extent_map* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.extent_map_tree*, align 8
  %7 = alloca %struct.extent_map*, align 8
  %8 = alloca %struct.extent_map*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.extent_map_tree* %0, %struct.extent_map_tree** %6, align 8
  store %struct.extent_map* %1, %struct.extent_map** %7, align 8
  store %struct.extent_map* %2, %struct.extent_map** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %14 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %20 = call i64 @extent_map_end(%struct.extent_map* %19)
  %21 = icmp sge i64 %18, %20
  br label %22

22:                                               ; preds = %17, %5
  %23 = phi i1 [ true, %5 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %28 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %33 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %36 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %38 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EXTENT_MAP_LAST_BYTE, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %22
  %43 = load i32, i32* @EXTENT_FLAG_COMPRESSED, align 4
  %44 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %45 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %44, i32 0, i32 3
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %51 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %56 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 8
  br label %61

61:                                               ; preds = %48, %42, %22
  %62 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %63 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %64 = call i32 @add_extent_mapping(%struct.extent_map_tree* %62, %struct.extent_map* %63)
  ret i32 %64
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @extent_map_end(%struct.extent_map*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @add_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
