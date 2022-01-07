; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_should_defrag_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_should_defrag_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_map = type { i64, i32 }

@EXTENT_MAP_LAST_BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32*, i32*, i32*)* @should_defrag_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_defrag_range(%struct.inode* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.extent_map*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %13, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %77

22:                                               ; preds = %6
  %23 = load i32*, i32** %12, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.extent_map* @defrag_lookup_extent(%struct.inode* %24, i32 %25)
  store %struct.extent_map* %26, %struct.extent_map** %14, align 8
  %27 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %28 = icmp ne %struct.extent_map* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %77

30:                                               ; preds = %22
  %31 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %32 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @EXTENT_MAP_LAST_BYTE, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  br label %60

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %40 = call i32 @defrag_check_next_extent(%struct.inode* %38, %struct.extent_map* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %44, %37
  %50 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %51 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55, %49
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %58, %55, %44
  br label %60

60:                                               ; preds = %59, %36
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %65 = call i32 @extent_map_end(%struct.extent_map* %64)
  %66 = load i32*, i32** %13, align 8
  store i32 %65, i32* %66, align 4
  br label %73

67:                                               ; preds = %60
  %68 = load i32*, i32** %11, align 8
  store i32 0, i32* %68, align 4
  %69 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %70 = call i32 @extent_map_end(%struct.extent_map* %69)
  %71 = load i32*, i32** %12, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %13, align 8
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %63
  %74 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %75 = call i32 @free_extent_map(%struct.extent_map* %74)
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %29, %21
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local %struct.extent_map* @defrag_lookup_extent(%struct.inode*, i32) #1

declare dso_local i32 @defrag_check_next_extent(%struct.inode*, %struct.extent_map*) #1

declare dso_local i32 @extent_map_end(%struct.extent_map*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
