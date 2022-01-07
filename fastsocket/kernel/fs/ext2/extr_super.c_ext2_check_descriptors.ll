; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_check_descriptors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_check_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext2_sb_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext2_group_desc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Checking group descriptors\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ext2_check_descriptors\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Block bitmap for group %d not in group (block %lu)!\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Inode bitmap for group %d not in group (block %lu)!\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Inode table for group %d not in group (block %lu)!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @ext2_check_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_check_descriptors(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext2_sb_info*, align 8
  %6 = alloca %struct.ext2_group_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %9)
  store %struct.ext2_sb_info* %10, %struct.ext2_sb_info** %5, align 8
  %11 = call i32 @ext2_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %120, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %5, align 8
  %15 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %123

18:                                               ; preds = %12
  %19 = load %struct.super_block*, %struct.super_block** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %19, i32 %20, i32* null)
  store %struct.ext2_group_desc* %21, %struct.ext2_group_desc** %6, align 8
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ext2_group_first_block_no(%struct.super_block* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %5, align 8
  %27 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %18
  %32 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %5, align 8
  %33 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %45

39:                                               ; preds = %18
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.super_block*, %struct.super_block** %3, align 8
  %42 = call i32 @EXT2_BLOCKS_PER_GROUP(%struct.super_block* %41)
  %43 = sub nsw i32 %42, 1
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %39, %31
  %46 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %47 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %54 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %52, %45
  %60 = load %struct.super_block*, %struct.super_block** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %63 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = call i32 @ext2_error(%struct.super_block* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %61, i64 %66)
  store i32 0, i32* %2, align 4
  br label %124

68:                                               ; preds = %52
  %69 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %70 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %77 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %75, %68
  %83 = load %struct.super_block*, %struct.super_block** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %86 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = sext i32 %88 to i64
  %90 = call i32 @ext2_error(%struct.super_block* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %84, i64 %89)
  store i32 0, i32* %2, align 4
  br label %124

91:                                               ; preds = %75
  %92 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %93 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %110, label %98

98:                                               ; preds = %91
  %99 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %100 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le32_to_cpu(i32 %101)
  %103 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %5, align 8
  %104 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* %8, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %98, %91
  %111 = load %struct.super_block*, %struct.super_block** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %114 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le32_to_cpu(i32 %115)
  %117 = sext i32 %116 to i64
  %118 = call i32 @ext2_error(%struct.super_block* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %112, i64 %117)
  store i32 0, i32* %2, align 4
  br label %124

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %12

123:                                              ; preds = %12
  store i32 1, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %110, %82, %59
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.ext2_sb_info* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @ext2_debug(i8*) #1

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @ext2_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT2_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext2_error(%struct.super_block*, i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
