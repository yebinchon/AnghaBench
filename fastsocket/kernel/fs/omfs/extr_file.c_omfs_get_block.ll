; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_file.c_omfs_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_file.c_omfs_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32 }
%struct.buffer_head = type { i32, i32* }
%struct.omfs_extent = type { %struct.omfs_extent_entry, i32, i32 }
%struct.omfs_extent_entry = type { i32 }
%struct.omfs_sb_info = type { i32 }
%struct.omfs_header = type { i32 }

@EIO = common dso_local global i32 0, align 4
@OMFS_EXTENT_START = common dso_local global i64 0, align 8
@OMFS_EXTENT_CONT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* @omfs_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_get_block(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.omfs_extent*, align 8
  %17 = alloca %struct.omfs_extent_entry*, align 8
  %18 = alloca %struct.omfs_sb_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.omfs_sb_info* @OMFS_SB(i32 %23)
  store %struct.omfs_sb_info* %24, %struct.omfs_sb_info** %18, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %27, %30
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %18, align 8
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @clus_to_blk(%struct.omfs_sb_info* %37, i64 %40)
  %42 = call %struct.buffer_head* @sb_bread(i32 %36, i64 %41)
  store %struct.buffer_head* %42, %struct.buffer_head** %9, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %44 = icmp ne %struct.buffer_head* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %4
  br label %166

46:                                               ; preds = %4
  %47 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @OMFS_EXTENT_START, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = bitcast i32* %51 to %struct.omfs_extent*
  store %struct.omfs_extent* %52, %struct.omfs_extent** %16, align 8
  %53 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %18, align 8
  %54 = load i64, i64* @OMFS_EXTENT_START, align 8
  %55 = call i32 @omfs_max_extents(%struct.omfs_sb_info* %53, i64 %54)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %129, %46
  %60 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %18, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to %struct.omfs_header*
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @omfs_is_bad(%struct.omfs_sb_info* %60, %struct.omfs_header* %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %163

69:                                               ; preds = %59
  %70 = load %struct.omfs_extent*, %struct.omfs_extent** %16, align 8
  %71 = getelementptr inbounds %struct.omfs_extent, %struct.omfs_extent* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load %struct.omfs_extent*, %struct.omfs_extent** %16, align 8
  %75 = getelementptr inbounds %struct.omfs_extent, %struct.omfs_extent* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @be64_to_cpu(i32 %76)
  store i64 %77, i64* %10, align 8
  %78 = load %struct.omfs_extent*, %struct.omfs_extent** %16, align 8
  %79 = getelementptr inbounds %struct.omfs_extent, %struct.omfs_extent* %78, i32 0, i32 0
  store %struct.omfs_extent_entry* %79, %struct.omfs_extent_entry** %17, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %163

84:                                               ; preds = %69
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = load %struct.omfs_extent_entry*, %struct.omfs_extent_entry** %17, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i64 @find_block(%struct.inode* %85, %struct.omfs_extent_entry* %86, i64 %87, i32 %88, i32* %20)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %84
  store i32 0, i32* %12, align 4
  %93 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @map_bh(%struct.buffer_head* %93, i32 %96, i64 %97)
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %19, align 4
  store i32 %103, i32* %20, align 4
  br label %104

104:                                              ; preds = %102, %92
  %105 = load i32, i32* %20, align 4
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 %105, %108
  %110 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %111 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %163

112:                                              ; preds = %84
  %113 = load i64, i64* %10, align 8
  %114 = icmp eq i64 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %139

116:                                              ; preds = %112
  %117 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %118 = call i32 @brelse(%struct.buffer_head* %117)
  %119 = load %struct.inode*, %struct.inode** %5, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %18, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i64 @clus_to_blk(%struct.omfs_sb_info* %122, i64 %123)
  %125 = call %struct.buffer_head* @sb_bread(i32 %121, i64 %124)
  store %struct.buffer_head* %125, %struct.buffer_head** %9, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %127 = icmp ne %struct.buffer_head* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %116
  br label %166

129:                                              ; preds = %116
  %130 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %131 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @OMFS_EXTENT_CONT, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = bitcast i32* %134 to %struct.omfs_extent*
  store %struct.omfs_extent* %135, %struct.omfs_extent** %16, align 8
  %136 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %18, align 8
  %137 = load i64, i64* @OMFS_EXTENT_CONT, align 8
  %138 = call i32 @omfs_max_extents(%struct.omfs_sb_info* %136, i64 %137)
  store i32 %138, i32* %14, align 4
  br label %59

139:                                              ; preds = %115
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %139
  %143 = load %struct.inode*, %struct.inode** %5, align 8
  %144 = load %struct.omfs_extent*, %struct.omfs_extent** %16, align 8
  %145 = call i32 @omfs_grow_extent(%struct.inode* %143, %struct.omfs_extent* %144, i64* %13)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %150 = call i32 @mark_buffer_dirty(%struct.buffer_head* %149)
  %151 = load %struct.inode*, %struct.inode** %5, align 8
  %152 = call i32 @mark_inode_dirty(%struct.inode* %151)
  %153 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %154 = load %struct.inode*, %struct.inode** %5, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %18, align 8
  %158 = load i64, i64* %13, align 8
  %159 = call i64 @clus_to_blk(%struct.omfs_sb_info* %157, i64 %158)
  %160 = call i32 @map_bh(%struct.buffer_head* %153, i32 %156, i64 %159)
  br label %161

161:                                              ; preds = %148, %142
  br label %162

162:                                              ; preds = %161, %139
  br label %163

163:                                              ; preds = %162, %104, %83, %68
  %164 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %165 = call i32 @brelse(%struct.buffer_head* %164)
  br label %166

166:                                              ; preds = %163, %128, %45
  %167 = load i32, i32* %12, align 4
  ret i32 %167
}

declare dso_local %struct.omfs_sb_info* @OMFS_SB(i32) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local i64 @clus_to_blk(%struct.omfs_sb_info*, i64) #1

declare dso_local i32 @omfs_max_extents(%struct.omfs_sb_info*, i64) #1

declare dso_local i64 @omfs_is_bad(%struct.omfs_sb_info*, %struct.omfs_header*, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @find_block(%struct.inode*, %struct.omfs_extent_entry*, i64, i32, i32*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @omfs_grow_extent(%struct.inode*, %struct.omfs_extent*, i64*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
