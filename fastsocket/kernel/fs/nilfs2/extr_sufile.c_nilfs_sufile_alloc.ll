; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_sufile_header = type { i32, i32, i32 }
%struct.nilfs_segment_usage = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_sufile_alloc(%struct.inode* %0, i32* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.nilfs_sufile_header*, align 8
  %8 = alloca %struct.nilfs_segment_usage*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32* %1, i32** %4, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @down_write(i32* %26)
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call i32 @nilfs_sufile_get_header_block(%struct.inode* %28, %struct.buffer_head** %5)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %173

33:                                               ; preds = %2
  %34 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @KM_USER0, align 4
  %38 = call i8* @kmap_atomic(i32 %36, i32 %37)
  store i8* %38, i8** %13, align 8
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call %struct.nilfs_sufile_header* @nilfs_sufile_block_get_header(%struct.inode* %39, %struct.buffer_head* %40, i8* %41)
  store %struct.nilfs_sufile_header* %42, %struct.nilfs_sufile_header** %7, align 8
  %43 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %7, align 8
  %44 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le64_to_cpu(i32 %45)
  %47 = ptrtoint i8* %46 to i64
  store i64 %47, i64* %15, align 8
  %48 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %7, align 8
  %49 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le64_to_cpu(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* @KM_USER0, align 4
  %55 = call i32 @kunmap_atomic(i8* %53, i32 %54)
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = call i64 @nilfs_sufile_get_nsegments(%struct.inode* %56)
  store i64 %57, i64* %14, align 8
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load i64, i64* %14, align 8
  %61 = sub i64 %60, 1
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  store i32 0, i32* %18, align 4
  br label %63

63:                                               ; preds = %161, %33
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %14, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %167

68:                                               ; preds = %63
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %14, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %73, %68
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @nilfs_sufile_get_segment_usage_block(%struct.inode* %76, i32 %77, i32 1, %struct.buffer_head** %6)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %170

82:                                               ; preds = %75
  %83 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @KM_USER0, align 4
  %87 = call i8* @kmap_atomic(i32 %85, i32 %86)
  store i8* %87, i8** %13, align 8
  %88 = load %struct.inode*, %struct.inode** %3, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = call %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode* %88, i32 %89, %struct.buffer_head* %90, i8* %91)
  store %struct.nilfs_segment_usage* %92, %struct.nilfs_segment_usage** %8, align 8
  %93 = load %struct.inode*, %struct.inode** %3, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i64 @nilfs_sufile_segment_usages_in_block(%struct.inode* %93, i32 %94, i32 %95)
  store i64 %96, i64* %16, align 8
  store i32 0, i32* %19, align 4
  br label %97

97:                                               ; preds = %145, %82
  %98 = load i32, i32* %19, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %16, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %155

102:                                              ; preds = %97
  %103 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %8, align 8
  %104 = call i32 @nilfs_segment_usage_clean(%struct.nilfs_segment_usage* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %145

107:                                              ; preds = %102
  %108 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %8, align 8
  %109 = call i32 @nilfs_segment_usage_set_dirty(%struct.nilfs_segment_usage* %108)
  %110 = load i8*, i8** %13, align 8
  %111 = load i32, i32* @KM_USER0, align 4
  %112 = call i32 @kunmap_atomic(i8* %110, i32 %111)
  %113 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %114 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @KM_USER0, align 4
  %117 = call i8* @kmap_atomic(i32 %115, i32 %116)
  store i8* %117, i8** %13, align 8
  %118 = load %struct.inode*, %struct.inode** %3, align 8
  %119 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = call %struct.nilfs_sufile_header* @nilfs_sufile_block_get_header(%struct.inode* %118, %struct.buffer_head* %119, i8* %120)
  store %struct.nilfs_sufile_header* %121, %struct.nilfs_sufile_header** %7, align 8
  %122 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %7, align 8
  %123 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %122, i32 0, i32 2
  %124 = call i32 @le64_add_cpu(i32* %123, i32 -1)
  %125 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %7, align 8
  %126 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %125, i32 0, i32 1
  %127 = call i32 @le64_add_cpu(i32* %126, i32 1)
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @cpu_to_le64(i32 %128)
  %130 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %7, align 8
  %131 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load i8*, i8** %13, align 8
  %133 = load i32, i32* @KM_USER0, align 4
  %134 = call i32 @kunmap_atomic(i8* %132, i32 %133)
  %135 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %136 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %135)
  %137 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %138 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %137)
  %139 = load %struct.inode*, %struct.inode** %3, align 8
  %140 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %139)
  %141 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %142 = call i32 @brelse(%struct.buffer_head* %141)
  %143 = load i32, i32* %10, align 4
  %144 = load i32*, i32** %4, align 8
  store i32 %143, i32* %144, align 4
  br label %170

145:                                              ; preds = %106
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %19, align 4
  %148 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %8, align 8
  %149 = bitcast %struct.nilfs_segment_usage* %148 to i8*
  %150 = load i64, i64* %9, align 8
  %151 = getelementptr i8, i8* %149, i64 %150
  %152 = bitcast i8* %151 to %struct.nilfs_segment_usage*
  store %struct.nilfs_segment_usage* %152, %struct.nilfs_segment_usage** %8, align 8
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %97

155:                                              ; preds = %97
  %156 = load i8*, i8** %13, align 8
  %157 = load i32, i32* @KM_USER0, align 4
  %158 = call i32 @kunmap_atomic(i8* %156, i32 %157)
  %159 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %160 = call i32 @brelse(%struct.buffer_head* %159)
  br label %161

161:                                              ; preds = %155
  %162 = load i64, i64* %16, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %18, align 4
  br label %63

167:                                              ; preds = %63
  %168 = load i32, i32* @ENOSPC, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %17, align 4
  br label %170

170:                                              ; preds = %167, %107, %81
  %171 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %172 = call i32 @brelse(%struct.buffer_head* %171)
  br label %173

173:                                              ; preds = %170, %32
  %174 = load %struct.inode*, %struct.inode** %3, align 8
  %175 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %174)
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = call i32 @up_write(i32* %176)
  %178 = load i32, i32* %17, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nilfs_sufile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_sufile_header* @nilfs_sufile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i64 @nilfs_sufile_get_nsegments(%struct.inode*) #1

declare dso_local i32 @nilfs_sufile_get_segment_usage_block(%struct.inode*, i32, i32, %struct.buffer_head**) #1

declare dso_local %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode*, i32, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_sufile_segment_usages_in_block(%struct.inode*, i32, i32) #1

declare dso_local i32 @nilfs_segment_usage_clean(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @nilfs_segment_usage_set_dirty(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
