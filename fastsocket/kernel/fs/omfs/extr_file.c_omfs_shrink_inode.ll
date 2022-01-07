; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_file.c_omfs_shrink_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_file.c_omfs_shrink_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32 }
%struct.omfs_sb_info = type { i32 }
%struct.omfs_extent = type { %struct.omfs_extent_entry, i32, i32 }
%struct.omfs_extent_entry = type { i32, i32 }
%struct.buffer_head = type { i8* }
%struct.omfs_header = type { i32 }

@EIO = common dso_local global i32 0, align 4
@OMFS_EXTENT_START = common dso_local global i64 0, align 8
@OMFS_EXTENT_CONT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omfs_shrink_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.omfs_sb_info*, align 8
  %5 = alloca %struct.omfs_extent*, align 8
  %6 = alloca %struct.omfs_extent_entry*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.omfs_sb_info* @OMFS_SB(i32 %17)
  store %struct.omfs_sb_info* %18, %struct.omfs_sb_info** %4, align 8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %157

29:                                               ; preds = %1
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %4, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @clus_to_blk(%struct.omfs_sb_info* %33, i64 %34)
  %36 = call %struct.buffer_head* @sb_bread(i32 %32, i32 %35)
  store %struct.buffer_head* %36, %struct.buffer_head** %7, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = icmp ne %struct.buffer_head* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %157

40:                                               ; preds = %29
  %41 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* @OMFS_EXTENT_START, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = bitcast i8* %45 to %struct.omfs_extent*
  store %struct.omfs_extent* %46, %struct.omfs_extent** %5, align 8
  %47 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %4, align 8
  %48 = load i64, i64* @OMFS_EXTENT_START, align 8
  %49 = call i32 @omfs_max_extents(%struct.omfs_sb_info* %47, i64 %48)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %146, %40
  %51 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %4, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = bitcast i8* %54 to %struct.omfs_header*
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @omfs_is_bad(%struct.omfs_sb_info* %51, %struct.omfs_header* %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %159

60:                                               ; preds = %50
  %61 = load %struct.omfs_extent*, %struct.omfs_extent** %5, align 8
  %62 = getelementptr inbounds %struct.omfs_extent, %struct.omfs_extent* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @be32_to_cpu(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %159

69:                                               ; preds = %60
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %9, align 8
  %71 = load %struct.omfs_extent*, %struct.omfs_extent** %5, align 8
  %72 = getelementptr inbounds %struct.omfs_extent, %struct.omfs_extent* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @be64_to_cpu(i32 %73)
  store i64 %74, i64* %8, align 8
  %75 = load %struct.omfs_extent*, %struct.omfs_extent** %5, align 8
  %76 = getelementptr inbounds %struct.omfs_extent, %struct.omfs_extent* %75, i32 0, i32 0
  store %struct.omfs_extent_entry* %76, %struct.omfs_extent_entry** %6, align 8
  br label %77

77:                                               ; preds = %98, %69
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %101

80:                                               ; preds = %77
  %81 = load %struct.omfs_extent_entry*, %struct.omfs_extent_entry** %6, align 8
  %82 = getelementptr inbounds %struct.omfs_extent_entry, %struct.omfs_extent_entry* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @be64_to_cpu(i32 %83)
  store i64 %84, i64* %13, align 8
  %85 = load %struct.omfs_extent_entry*, %struct.omfs_extent_entry** %6, align 8
  %86 = getelementptr inbounds %struct.omfs_extent_entry, %struct.omfs_extent_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @be64_to_cpu(i32 %87)
  store i64 %88, i64* %14, align 8
  %89 = load %struct.inode*, %struct.inode** %3, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %14, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @omfs_clear_range(i32 %91, i64 %92, i32 %94)
  %96 = load %struct.omfs_extent_entry*, %struct.omfs_extent_entry** %6, align 8
  %97 = getelementptr inbounds %struct.omfs_extent_entry, %struct.omfs_extent_entry* %96, i32 1
  store %struct.omfs_extent_entry* %97, %struct.omfs_extent_entry** %6, align 8
  br label %98

98:                                               ; preds = %80
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %10, align 4
  br label %77

101:                                              ; preds = %77
  %102 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %103 = load %struct.omfs_extent*, %struct.omfs_extent** %5, align 8
  %104 = bitcast %struct.omfs_extent* %103 to i8*
  %105 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %106 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = ptrtoint i8* %104 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = call i32 @omfs_make_empty_table(%struct.buffer_head* %102, i32 %111)
  %113 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %114 = call i32 @mark_buffer_dirty(%struct.buffer_head* %113)
  %115 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %116 = call i32 @brelse(%struct.buffer_head* %115)
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.inode*, %struct.inode** %3, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %101
  %123 = load %struct.inode*, %struct.inode** %3, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %4, align 8
  %128 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @omfs_clear_range(i32 %125, i64 %126, i32 %129)
  br label %131

131:                                              ; preds = %122, %101
  %132 = load i64, i64* %8, align 8
  %133 = icmp eq i64 %132, -1
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %156

135:                                              ; preds = %131
  %136 = load %struct.inode*, %struct.inode** %3, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %4, align 8
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @clus_to_blk(%struct.omfs_sb_info* %139, i64 %140)
  %142 = call %struct.buffer_head* @sb_bread(i32 %138, i32 %141)
  store %struct.buffer_head* %142, %struct.buffer_head** %7, align 8
  %143 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %144 = icmp ne %struct.buffer_head* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %135
  br label %157

146:                                              ; preds = %135
  %147 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %148 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i64, i64* @OMFS_EXTENT_CONT, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  %152 = bitcast i8* %151 to %struct.omfs_extent*
  store %struct.omfs_extent* %152, %struct.omfs_extent** %5, align 8
  %153 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %4, align 8
  %154 = load i64, i64* @OMFS_EXTENT_CONT, align 8
  %155 = call i32 @omfs_max_extents(%struct.omfs_sb_info* %153, i64 %154)
  store i32 %155, i32* %11, align 4
  br label %50

156:                                              ; preds = %134
  store i32 0, i32* %12, align 4
  br label %157

157:                                              ; preds = %156, %145, %39, %28
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %2, align 4
  br label %163

159:                                              ; preds = %68, %59
  %160 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %161 = call i32 @brelse(%struct.buffer_head* %160)
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %159, %157
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.omfs_sb_info* @OMFS_SB(i32) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @clus_to_blk(%struct.omfs_sb_info*, i64) #1

declare dso_local i32 @omfs_max_extents(%struct.omfs_sb_info*, i64) #1

declare dso_local i64 @omfs_is_bad(%struct.omfs_sb_info*, %struct.omfs_header*, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @omfs_clear_range(i32, i64, i32) #1

declare dso_local i32 @omfs_make_empty_table(%struct.buffer_head*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
