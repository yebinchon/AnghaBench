; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_link_node_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_link_node_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_raw_node_ref = type { i64, i64, %struct.jffs2_raw_node_ref* }
%struct.jffs2_sb_info = type { i64, i32, i32, i32, i32 }
%struct.jffs2_eraseblock = type { i64, i64, i32, i32, i32, %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref*, i32 }
%struct.jffs2_inode_cache = type { %struct.jffs2_raw_node_ref* }

@.str = private unnamed_addr constant [30 x i8] c"Last node at %p is (%08x,%p)\0A\00", align 1
@REF_EMPTY_NODE = common dso_local global i64 0, align 8
@REF_LINK_NODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"New ref is %p (%08x becomes %08x,%p) len 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Adding new ref %p at (0x%08x-0x%08x) not immediately after previous (0x%08x-0x%08x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.jffs2_raw_node_ref* @jffs2_link_node_ref(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1, i64 %2, i64 %3, %struct.jffs2_inode_cache* %4) #0 {
  %6 = alloca %struct.jffs2_sb_info*, align 8
  %7 = alloca %struct.jffs2_eraseblock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.jffs2_inode_cache*, align 8
  %11 = alloca %struct.jffs2_raw_node_ref*, align 8
  %12 = alloca i64, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %6, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.jffs2_inode_cache* %4, %struct.jffs2_inode_cache** %10, align 8
  %13 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %14 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %21 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %25 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %24, i32 0, i32 5
  %26 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %25, align 8
  store %struct.jffs2_raw_node_ref* %26, %struct.jffs2_raw_node_ref** %11, align 8
  %27 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %28 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %29 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %32 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %31, i32 0, i32 2
  %33 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %32, align 8
  %34 = ptrtoint %struct.jffs2_raw_node_ref* %33 to i64
  %35 = call i32 (i8*, %struct.jffs2_raw_node_ref*, i64, i64, ...) @dbg_noderef(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.jffs2_raw_node_ref* %27, i64 %30, i64 %34)
  br label %36

36:                                               ; preds = %55, %5
  %37 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %38 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @REF_EMPTY_NODE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %44 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @REF_LINK_NODE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %50 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %49, i32 0, i32 2
  %51 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %50, align 8
  store %struct.jffs2_raw_node_ref* %51, %struct.jffs2_raw_node_ref** %11, align 8
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %54 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %53, i32 1
  store %struct.jffs2_raw_node_ref* %54, %struct.jffs2_raw_node_ref** %11, align 8
  br label %55

55:                                               ; preds = %52, %48
  br label %36

56:                                               ; preds = %36
  %57 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %58 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %59 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %63 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %62, i32 0, i32 2
  %64 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 (i8*, %struct.jffs2_raw_node_ref*, i64, i64, ...) @dbg_noderef(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.jffs2_raw_node_ref* %57, i64 %60, i64 %61, %struct.jffs2_raw_node_ref* %64, i64 %65)
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %69 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %71 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %70, i32 0, i32 6
  %72 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %71, align 8
  %73 = icmp ne %struct.jffs2_raw_node_ref* %72, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %56
  %75 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %76 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %77 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %76, i32 0, i32 6
  store %struct.jffs2_raw_node_ref* %75, %struct.jffs2_raw_node_ref** %77, align 8
  %78 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %79 = call i64 @ref_offset(%struct.jffs2_raw_node_ref* %78)
  %80 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %81 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @BUG_ON(i32 %84)
  br label %131

86:                                               ; preds = %56
  %87 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %88 = call i64 @ref_offset(%struct.jffs2_raw_node_ref* %87)
  %89 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %90 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %93 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %97 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = icmp ne i64 %88, %99
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %86
  %105 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %106 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %107 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %108 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %107, i32 0, i32 5
  %109 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %108, align 8
  %110 = call i64 @ref_totlen(%struct.jffs2_sb_info* %105, %struct.jffs2_eraseblock* %106, %struct.jffs2_raw_node_ref* %109)
  store i64 %110, i64* %12, align 8
  %111 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %112 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %113 = call i64 @ref_offset(%struct.jffs2_raw_node_ref* %112)
  %114 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %115 = call i64 @ref_offset(%struct.jffs2_raw_node_ref* %114)
  %116 = load i64, i64* %9, align 8
  %117 = add nsw i64 %115, %116
  %118 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %119 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %118, i32 0, i32 5
  %120 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %119, align 8
  %121 = call i64 @ref_offset(%struct.jffs2_raw_node_ref* %120)
  %122 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %123 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %122, i32 0, i32 5
  %124 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %123, align 8
  %125 = call i64 @ref_offset(%struct.jffs2_raw_node_ref* %124)
  %126 = load i64, i64* %12, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @JFFS2_ERROR(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), %struct.jffs2_raw_node_ref* %111, i64 %113, i64 %117, i64 %121, i64 %127)
  %129 = call i32 (...) @BUG()
  br label %130

130:                                              ; preds = %104, %86
  br label %131

131:                                              ; preds = %130, %74
  %132 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %133 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %134 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %133, i32 0, i32 5
  store %struct.jffs2_raw_node_ref* %132, %struct.jffs2_raw_node_ref** %134, align 8
  %135 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %10, align 8
  %136 = icmp ne %struct.jffs2_inode_cache* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %10, align 8
  %139 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %138, i32 0, i32 0
  %140 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %139, align 8
  %141 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %142 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %141, i32 0, i32 2
  store %struct.jffs2_raw_node_ref* %140, %struct.jffs2_raw_node_ref** %142, align 8
  %143 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %144 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %10, align 8
  %145 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %144, i32 0, i32 0
  store %struct.jffs2_raw_node_ref* %143, %struct.jffs2_raw_node_ref** %145, align 8
  br label %149

146:                                              ; preds = %131
  %147 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %148 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %147, i32 0, i32 2
  store %struct.jffs2_raw_node_ref* null, %struct.jffs2_raw_node_ref** %148, align 8
  br label %149

149:                                              ; preds = %146, %137
  %150 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  %151 = call i32 @ref_flags(%struct.jffs2_raw_node_ref* %150)
  switch i32 %151, label %197 [
    i32 128, label %152
    i32 131, label %167
    i32 129, label %167
    i32 130, label %182
  ]

152:                                              ; preds = %149
  %153 = load i64, i64* %9, align 8
  %154 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %155 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %153
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %155, align 4
  %160 = load i64, i64* %9, align 8
  %161 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %162 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %160
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 8
  br label %197

167:                                              ; preds = %149, %149
  %168 = load i64, i64* %9, align 8
  %169 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %170 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %168
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %170, align 8
  %175 = load i64, i64* %9, align 8
  %176 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %177 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %175
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 4
  br label %197

182:                                              ; preds = %149
  %183 = load i64, i64* %9, align 8
  %184 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %185 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %183
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %185, align 4
  %190 = load i64, i64* %9, align 8
  %191 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %192 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %190
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 8
  br label %197

197:                                              ; preds = %149, %182, %167, %152
  %198 = load i64, i64* %9, align 8
  %199 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %200 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = sub nsw i64 %202, %198
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %200, align 8
  %205 = load i64, i64* %9, align 8
  %206 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %207 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = sub nsw i64 %208, %205
  store i64 %209, i64* %207, align 8
  %210 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %11, align 8
  ret %struct.jffs2_raw_node_ref* %210
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dbg_noderef(i8*, %struct.jffs2_raw_node_ref*, i64, i64, ...) #1

declare dso_local i64 @ref_offset(%struct.jffs2_raw_node_ref*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ref_totlen(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, %struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @JFFS2_ERROR(i8*, %struct.jffs2_raw_node_ref*, i64, i64, i64, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ref_flags(%struct.jffs2_raw_node_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
