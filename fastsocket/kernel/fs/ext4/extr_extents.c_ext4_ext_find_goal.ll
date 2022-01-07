; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_find_goal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_find_goal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ext4_ext_path = type { i32, %struct.TYPE_6__*, %struct.ext4_extent* }
%struct.TYPE_6__ = type { i64 }
%struct.ext4_extent = type { i32 }
%struct.ext4_inode_info = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME = common dso_local global i32 0, align 4
@DELALLOC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, %struct.ext4_ext_path*, i64)* @ext4_ext_find_goal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_ext_find_goal(%struct.inode* %0, %struct.ext4_ext_path* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_ext_path*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ext4_inode_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_extent*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_ext_path* %1, %struct.ext4_ext_path** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %16)
  store %struct.ext4_inode_info* %17, %struct.ext4_inode_info** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_7__* @EXT4_SB(i32 %20)
  %22 = call i32 @ext4_flex_bg_size(%struct.TYPE_7__* %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %24 = icmp ne %struct.ext4_ext_path* %23, null
  br i1 %24, label %25, label %65

25:                                               ; preds = %3
  %26 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %27 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  %29 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %29, i64 %31
  %33 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %32, i32 0, i32 2
  %34 = load %struct.ext4_extent*, %struct.ext4_extent** %33, align 8
  store %struct.ext4_extent* %34, %struct.ext4_extent** %15, align 8
  %35 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %36 = icmp ne %struct.ext4_extent* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %25
  %38 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %39 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %38)
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %42 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le32_to_cpu(i32 %43)
  %45 = sub nsw i64 %40, %44
  %46 = add nsw i64 %39, %45
  store i64 %46, i64* %4, align 8
  br label %161

47:                                               ; preds = %25
  %48 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %48, i64 %50
  %52 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %56, i64 %58
  %60 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %4, align 8
  br label %161

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %3
  %66 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %67 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %73, 1
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %12, align 4
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @S_ISREG(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %83, %72
  br label %87

87:                                               ; preds = %86, %65
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @EXT4_BLOCKS_PER_GROUP(i32 %91)
  %93 = mul nsw i32 %88, %92
  %94 = sext i32 %93 to i64
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.TYPE_7__* @EXT4_SB(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @le32_to_cpu(i32 %102)
  %104 = add nsw i64 %94, %103
  store i64 %104, i64* %9, align 8
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.TYPE_7__* @EXT4_SB(i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = call i64 @ext4_blocks_count(%struct.TYPE_8__* %110)
  %112 = sub nsw i64 %111, 1
  store i64 %112, i64* %10, align 8
  %113 = load %struct.inode*, %struct.inode** %5, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DELALLOC, align 4
  %117 = call i64 @test_opt(i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %87
  %120 = load i64, i64* %9, align 8
  store i64 %120, i64* %4, align 8
  br label %161

121:                                              ; preds = %87
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.inode*, %struct.inode** %5, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @EXT4_BLOCKS_PER_GROUP(i32 %125)
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %122, %127
  %129 = load i64, i64* %10, align 8
  %130 = icmp sle i64 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %121
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = srem i32 %134, 16
  %136 = load %struct.inode*, %struct.inode** %5, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @EXT4_BLOCKS_PER_GROUP(i32 %138)
  %140 = sdiv i32 %139, 16
  %141 = mul nsw i32 %135, %140
  store i32 %141, i32* %11, align 4
  br label %154

142:                                              ; preds = %121
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = srem i32 %145, 16
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* %9, align 8
  %150 = sub nsw i64 %148, %149
  %151 = sdiv i64 %150, 16
  %152 = mul nsw i64 %147, %151
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %142, %131
  %155 = load i64, i64* %9, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %155, %157
  %159 = load i64, i64* %7, align 8
  %160 = add nsw i64 %158, %159
  store i64 %160, i64* %4, align 8
  br label %161

161:                                              ; preds = %154, %119, %55, %37
  %162 = load i64, i64* %4, align 8
  ret i64 %162
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_flex_bg_size(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @EXT4_SB(i32) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(i32) #1

declare dso_local i64 @ext4_blocks_count(%struct.TYPE_8__*) #1

declare dso_local i64 @test_opt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
