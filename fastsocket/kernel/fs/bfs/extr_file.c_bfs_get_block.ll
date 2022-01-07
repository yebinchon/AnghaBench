; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_file.c_bfs_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_file.c_bfs_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.bfs_sb_info = type { i64, i64, i32, i32, %struct.buffer_head* }
%struct.bfs_inode_info = type { i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"c=%d, b=%08lx, phys=%09lx (granted)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"c=%d, b=%08lx, phys=%08lx (interim block granted)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"c=%d, b=%08lx, phys=%08lx (simple extension)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to move ino=%08lx -> fs corruption\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"c=%d, b=%08lx, phys=%08lx (moved)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* @bfs_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_get_block(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.bfs_sb_info*, align 8
  %14 = alloca %struct.bfs_inode_info*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %12, align 8
  %19 = load %struct.super_block*, %struct.super_block** %12, align 8
  %20 = call %struct.bfs_sb_info* @BFS_SB(%struct.super_block* %19)
  store %struct.bfs_sb_info* %20, %struct.bfs_sb_info** %13, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.bfs_inode_info* @BFS_I(%struct.inode* %21)
  store %struct.bfs_inode_info* %22, %struct.bfs_inode_info** %14, align 8
  %23 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %24 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %23, i32 0, i32 4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  store %struct.buffer_head* %25, %struct.buffer_head** %15, align 8
  %26 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %27 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %4
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %36 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ule i64 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41, i64 %42)
  %44 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %45 = load %struct.super_block*, %struct.super_block** %12, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @map_bh(%struct.buffer_head* %44, %struct.super_block* %45, i64 %46)
  br label %48

48:                                               ; preds = %39, %33
  store i32 0, i32* %5, align 4
  br label %206

49:                                               ; preds = %4
  %50 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %51 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %57 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ule i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %62, i64 %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %66 = load %struct.super_block*, %struct.super_block** %12, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @map_bh(%struct.buffer_head* %65, %struct.super_block* %66, i64 %67)
  store i32 0, i32* %5, align 4
  br label %206

69:                                               ; preds = %54, %49
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %72 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp uge i64 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @ENOSPC, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %206

78:                                               ; preds = %69
  %79 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %80 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %79, i32 0, i32 2
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %83 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %86 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %118

89:                                               ; preds = %78
  %90 = load i32, i32* %9, align 4
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %90, i64 %91, i64 %92)
  %94 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %95 = load %struct.super_block*, %struct.super_block** %12, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @map_bh(%struct.buffer_head* %94, %struct.super_block* %95, i64 %96)
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %100 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %98, %101
  %103 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %104 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load i64, i64* %10, align 8
  %110 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %111 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %113 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %112, i32 0, i32 1
  store i64 %109, i64* %113, align 8
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = call i32 @mark_inode_dirty(%struct.inode* %114)
  %116 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %117 = call i32 @mark_buffer_dirty(%struct.buffer_head* %116)
  store i32 0, i32* %11, align 4
  br label %201

118:                                              ; preds = %78
  %119 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %120 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %7, align 8
  %125 = add i64 %123, %124
  %126 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %127 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp uge i64 %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %118
  %131 = load i32, i32* @ENOSPC, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %11, align 4
  br label %201

133:                                              ; preds = %118
  %134 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %135 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %133
  %139 = load %struct.inode*, %struct.inode** %6, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 2
  %141 = load %struct.super_block*, %struct.super_block** %140, align 8
  %142 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %143 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %146 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %10, align 8
  %149 = call i32 @bfs_move_blocks(%struct.super_block* %141, i64 %144, i64 %147, i64 %148)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %138
  %153 = load %struct.inode*, %struct.inode** %6, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  br label %201

157:                                              ; preds = %138
  br label %159

158:                                              ; preds = %133
  store i32 0, i32* %11, align 4
  br label %159

159:                                              ; preds = %158, %157
  %160 = load i32, i32* %9, align 4
  %161 = load i64, i64* %7, align 8
  %162 = load i64, i64* %10, align 8
  %163 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %160, i64 %161, i64 %162)
  %164 = load i64, i64* %10, align 8
  %165 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %166 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* %10, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %10, align 8
  %170 = load i64, i64* %10, align 8
  %171 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %172 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %174 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %173, i32 0, i32 1
  store i64 %170, i64* %174, align 8
  %175 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %176 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %179 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = sub i64 %177, %180
  %182 = add i64 %181, 1
  %183 = load %struct.inode*, %struct.inode** %6, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = sub i64 %182, %185
  %187 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %188 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = sub i64 %190, %186
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 4
  %193 = load %struct.inode*, %struct.inode** %6, align 8
  %194 = call i32 @mark_inode_dirty(%struct.inode* %193)
  %195 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %196 = call i32 @mark_buffer_dirty(%struct.buffer_head* %195)
  %197 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %198 = load %struct.super_block*, %struct.super_block** %12, align 8
  %199 = load i64, i64* %10, align 8
  %200 = call i32 @map_bh(%struct.buffer_head* %197, %struct.super_block* %198, i64 %199)
  br label %201

201:                                              ; preds = %159, %152, %130, %89
  %202 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %203 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %202, i32 0, i32 2
  %204 = call i32 @mutex_unlock(i32* %203)
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %201, %75, %60, %48
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(%struct.super_block*) #1

declare dso_local %struct.bfs_inode_info* @BFS_I(%struct.inode*) #1

declare dso_local i32 @dprintf(i8*, i32, ...) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.super_block*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @bfs_move_blocks(%struct.super_block*, i64, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
