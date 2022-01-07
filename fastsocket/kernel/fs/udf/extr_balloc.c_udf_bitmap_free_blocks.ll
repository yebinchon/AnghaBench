; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_balloc.c_udf_bitmap_free_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_balloc.c_udf_bitmap_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.inode = type { i32 }
%struct.udf_bitmap = type { %struct.buffer_head** }
%struct.buffer_head = type { i64 }
%struct.kernel_lb_addr = type { i64, i64 }
%struct.udf_sb_info = type { i32, i32, %struct.udf_part_map* }
%struct.udf_part_map = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"%d < %d || %d + %d > %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"bit %ld already set\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"byte=%2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.inode*, %struct.udf_bitmap*, %struct.kernel_lb_addr*, i64, i64)* @udf_bitmap_free_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_bitmap_free_blocks(%struct.super_block* %0, %struct.inode* %1, %struct.udf_bitmap* %2, %struct.kernel_lb_addr* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.udf_bitmap*, align 8
  %10 = alloca %struct.kernel_lb_addr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.udf_sb_info*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.udf_part_map*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.udf_bitmap* %2, %struct.udf_bitmap** %9, align 8
  store %struct.kernel_lb_addr* %3, %struct.kernel_lb_addr** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = load %struct.super_block*, %struct.super_block** %7, align 8
  %23 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %22)
  store %struct.udf_sb_info* %23, %struct.udf_sb_info** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  %24 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %25 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %28 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %27, i32 0, i32 2
  %29 = load %struct.udf_part_map*, %struct.udf_part_map** %28, align 8
  %30 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %10, align 8
  %31 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %29, i64 %32
  store %struct.udf_part_map* %33, %struct.udf_part_map** %15, align 8
  %34 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %10, align 8
  %35 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %6
  %39 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %10, align 8
  %40 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.udf_part_map*, %struct.udf_part_map** %15, align 8
  %45 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %38, %6
  %49 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %10, align 8
  %50 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i8
  %53 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %10, align 8
  %54 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.udf_part_map*, %struct.udf_part_map** %15, align 8
  %58 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, i8, ...) @udf_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8 signext %52, i32 0, i64 %55, i64 %56, i64 %59)
  br label %182

61:                                               ; preds = %38
  %62 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %10, align 8
  %63 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = add nsw i64 %64, %65
  %67 = add i64 %66, 32
  store i64 %67, i64* %16, align 8
  br label %68

68:                                               ; preds = %178, %61
  store i64 0, i64* %21, align 8
  %69 = load i64, i64* %16, align 8
  %70 = load %struct.super_block*, %struct.super_block** %7, align 8
  %71 = getelementptr inbounds %struct.super_block, %struct.super_block* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 3
  %74 = zext i32 %73 to i64
  %75 = lshr i64 %69, %74
  store i64 %75, i64* %17, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load %struct.super_block*, %struct.super_block** %7, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 3
  %81 = sext i32 %80 to i64
  %82 = urem i64 %76, %81
  store i64 %82, i64* %18, align 8
  %83 = load i64, i64* %18, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %83, %84
  %86 = load %struct.super_block*, %struct.super_block** %7, align 8
  %87 = getelementptr inbounds %struct.super_block, %struct.super_block* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = icmp ugt i64 %85, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %68
  %93 = load i64, i64* %18, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.super_block*, %struct.super_block** %7, align 8
  %97 = getelementptr inbounds %struct.super_block, %struct.super_block* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 3
  %100 = sext i32 %99 to i64
  %101 = sub i64 %95, %100
  store i64 %101, i64* %21, align 8
  %102 = load i64, i64* %21, align 8
  %103 = load i64, i64* %12, align 8
  %104 = sub i64 %103, %102
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %92, %68
  %106 = load %struct.super_block*, %struct.super_block** %7, align 8
  %107 = load %struct.udf_bitmap*, %struct.udf_bitmap** %9, align 8
  %108 = load i64, i64* %17, align 8
  %109 = call i32 @load_block_bitmap(%struct.super_block* %106, %struct.udf_bitmap* %107, i64 %108)
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %182

113:                                              ; preds = %105
  %114 = load %struct.udf_bitmap*, %struct.udf_bitmap** %9, align 8
  %115 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %114, i32 0, i32 0
  %116 = load %struct.buffer_head**, %struct.buffer_head*** %115, align 8
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %116, i64 %118
  %120 = load %struct.buffer_head*, %struct.buffer_head** %119, align 8
  store %struct.buffer_head* %120, %struct.buffer_head** %14, align 8
  store i64 0, i64* %19, align 8
  br label %121

121:                                              ; preds = %164, %113
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* %12, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %167

125:                                              ; preds = %121
  %126 = load i64, i64* %18, align 8
  %127 = load i64, i64* %19, align 8
  %128 = add i64 %126, %127
  %129 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %130 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @udf_set_bit(i64 %128, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %125
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %19, align 8
  %137 = add i64 %135, %136
  %138 = trunc i64 %137 to i8
  %139 = call i32 (i8*, i8, ...) @udf_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8 signext %138)
  %140 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %141 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* %19, align 8
  %146 = add i64 %144, %145
  %147 = lshr i64 %146, 3
  %148 = getelementptr inbounds i8, i8* %143, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = call i32 (i8*, i8, ...) @udf_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8 signext %149)
  br label %163

151:                                              ; preds = %125
  %152 = load %struct.inode*, %struct.inode** %8, align 8
  %153 = icmp ne %struct.inode* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.inode*, %struct.inode** %8, align 8
  %156 = call i32 @vfs_dq_free_block(%struct.inode* %155, i32 1)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.super_block*, %struct.super_block** %7, align 8
  %159 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %160 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @udf_add_free_space(%struct.super_block* %158, i32 %161, i32 1)
  br label %163

163:                                              ; preds = %157, %134
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %19, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %19, align 8
  br label %121

167:                                              ; preds = %121
  %168 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %169 = call i32 @mark_buffer_dirty(%struct.buffer_head* %168)
  %170 = load i64, i64* %21, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* %16, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %16, align 8
  %176 = load i64, i64* %21, align 8
  store i64 %176, i64* %12, align 8
  br label %177

177:                                              ; preds = %172, %167
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %21, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %68, label %181

181:                                              ; preds = %178
  br label %182

182:                                              ; preds = %181, %112, %48
  %183 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %184 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %183, i32 0, i32 0
  %185 = call i32 @mutex_unlock(i32* %184)
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @udf_debug(i8*, i8 signext, ...) #1

declare dso_local i32 @load_block_bitmap(%struct.super_block*, %struct.udf_bitmap*, i64) #1

declare dso_local i64 @udf_set_bit(i64, i64) #1

declare dso_local i32 @vfs_dq_free_block(%struct.inode*, i32) #1

declare dso_local i32 @udf_add_free_space(%struct.super_block*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
