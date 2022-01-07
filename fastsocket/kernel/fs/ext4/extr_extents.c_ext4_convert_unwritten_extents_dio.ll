; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_convert_unwritten_extents_dio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_convert_unwritten_extents_dio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent*, %struct.ext4_extent_header* }
%struct.ext4_extent = type { i32 }
%struct.ext4_extent_header = type { i32 }

@.str = private unnamed_addr constant [83 x i8] c"ext4_convert_unwritten_extents_endio: inode %lu, logicalblock %llu, max_blocks %u\0A\00", align 1
@EXT4_EXT_DATA_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i64, i32, %struct.ext4_ext_path*)* @ext4_convert_unwritten_extents_dio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_convert_unwritten_extents_dio(i32* %0, %struct.inode* %1, i64 %2, i32 %3, %struct.ext4_ext_path* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca %struct.ext4_extent*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_extent_header*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ext4_ext_path* %4, %struct.ext4_ext_path** %10, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call i32 @ext_depth(%struct.inode* %17)
  store i32 %18, i32* %15, align 4
  %19 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %20 = load i32, i32* %15, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %19, i64 %21
  %23 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %22, i32 0, i32 1
  %24 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %23, align 8
  store %struct.ext4_extent_header* %24, %struct.ext4_extent_header** %14, align 8
  %25 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %25, i64 %27
  %29 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %28, i32 0, i32 0
  %30 = load %struct.ext4_extent*, %struct.ext4_extent** %29, align 8
  store %struct.ext4_extent* %30, %struct.ext4_extent** %11, align 8
  %31 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %32 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le32_to_cpu(i32 %33)
  store i64 %34, i64* %12, align 8
  %35 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %36 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @ext_debug(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %40, i32 %41)
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %5
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %46, %5
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @EXT4_EXT_DATA_VALID, align 4
  %57 = call i32 @ext4_split_unwritten_extents(i32* %51, %struct.inode* %52, %struct.ext4_ext_path* %53, i64 %54, i32 %55, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %108

61:                                               ; preds = %50
  %62 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %63 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %62)
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %67 = call %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode* %64, i64 %65, %struct.ext4_ext_path* %66)
  store %struct.ext4_ext_path* %67, %struct.ext4_ext_path** %10, align 8
  %68 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %69 = call i64 @IS_ERR(%struct.ext4_ext_path* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %73 = call i32 @PTR_ERR(%struct.ext4_ext_path* %72)
  store i32 %73, i32* %16, align 4
  br label %108

74:                                               ; preds = %61
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = call i32 @ext_depth(%struct.inode* %75)
  store i32 %76, i32* %15, align 4
  %77 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %77, i64 %79
  %81 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %80, i32 0, i32 0
  %82 = load %struct.ext4_extent*, %struct.ext4_extent** %81, align 8
  store %struct.ext4_extent* %82, %struct.ext4_extent** %11, align 8
  br label %83

83:                                               ; preds = %74, %46
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %86, i64 %88
  %90 = call i32 @ext4_ext_get_access(i32* %84, %struct.inode* %85, %struct.ext4_ext_path* %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %108

94:                                               ; preds = %83
  %95 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %96 = call i32 @ext4_ext_mark_initialized(%struct.ext4_extent* %95)
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %99 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %100 = call i32 @ext4_ext_try_to_merge(%struct.inode* %97, %struct.ext4_ext_path* %98, %struct.ext4_extent* %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %103, i64 %105
  %107 = call i32 @ext4_ext_dirty(i32* %101, %struct.inode* %102, %struct.ext4_ext_path* %106)
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %94, %93, %71, %60
  %109 = load %struct.inode*, %struct.inode** %7, align 8
  %110 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %111 = call i32 @ext4_ext_show_leaf(%struct.inode* %109, %struct.ext4_ext_path* %110)
  %112 = load i32, i32* %16, align 4
  ret i32 %112
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext_debug(i8*, i32, i64, i32) #1

declare dso_local i32 @ext4_split_unwritten_extents(i32*, %struct.inode*, %struct.ext4_ext_path*, i64, i32, i32) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode*, i64, %struct.ext4_ext_path*) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_mark_initialized(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_try_to_merge(%struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_show_leaf(%struct.inode*, %struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
