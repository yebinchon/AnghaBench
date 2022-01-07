; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i8*, i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.ocfs2_chain_list }
%struct.ocfs2_chain_list = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32, i32 }
%struct.ocfs2_alloc_context = type { i64 }
%struct.ocfs2_group_desc = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"use old allocation group %llu for block group alloc\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"new descriptor, record %u, at block %llu\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i64, i64*, i32)* @ocfs2_block_group_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_block_group_alloc(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_chain_list*, align 8
  %17 = alloca %struct.ocfs2_alloc_context*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.buffer_head*, align 8
  %24 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %28, %struct.ocfs2_dinode** %15, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %17, align 8
  store i32* null, i32** %18, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call i32 @ocfs2_is_cluster_bitmap(%struct.inode* %29)
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = call i32 (...) @mlog_entry_void()
  %33 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %34 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store %struct.ocfs2_chain_list* %35, %struct.ocfs2_chain_list** %16, align 8
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %37 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %38 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @le16_to_cpu(i32 %39)
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @ocfs2_reserve_clusters_with_limit(%struct.ocfs2_super* %36, i64 %40, i64 %41, i32 %42, %struct.ocfs2_alloc_context** %17)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %6
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @ENOSPC, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %54

54:                                               ; preds = %51, %46
  br label %294

55:                                               ; preds = %6
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %57 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %60 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @le16_to_cpu(i32 %61)
  %63 = call i32 @ocfs2_calc_group_alloc_credits(i32 %58, i64 %62)
  store i32 %63, i32* %14, align 4
  %64 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %64, i32 %65)
  store i32* %66, i32** %18, align 8
  %67 = load i32*, i32** %18, align 8
  %68 = call i64 @IS_ERR(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %55
  %71 = load i32*, i32** %18, align 8
  %72 = call i32 @PTR_ERR(i32* %71)
  store i32 %72, i32* %13, align 4
  store i32* null, i32** %18, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @mlog_errno(i32 %73)
  br label %294

75:                                               ; preds = %55
  %76 = load i64*, i64** %11, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i64*, i64** %11, align 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i64*, i64** %11, align 8
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %84)
  %86 = load i64*, i64** %11, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %89 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %82, %78, %75
  %91 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %94 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %95 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @le16_to_cpu(i32 %96)
  %98 = call i32 @ocfs2_claim_clusters(%struct.ocfs2_super* %91, i32* %92, %struct.ocfs2_alloc_context* %93, i64 %97, i32* %19, i32* %20)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %90
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @ENOSPC, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %109

109:                                              ; preds = %106, %101
  br label %294

110:                                              ; preds = %90
  %111 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %112 = call i64 @ocfs2_find_smallest_chain(%struct.ocfs2_chain_list* %111)
  store i64 %112, i64* %21, align 8
  %113 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %114 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %19, align 4
  %117 = call i64 @ocfs2_clusters_to_blocks(i32 %115, i32 %116)
  store i64 %117, i64* %22, align 8
  %118 = load i64, i64* %21, align 8
  %119 = load i64, i64* %22, align 8
  %120 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %118, i64 %119)
  %121 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %122 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %22, align 8
  %125 = call %struct.buffer_head* @sb_getblk(i32 %123, i64 %124)
  store %struct.buffer_head* %125, %struct.buffer_head** %23, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %127 = icmp ne %struct.buffer_head* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %110
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @mlog_errno(i32 %131)
  br label %294

133:                                              ; preds = %110
  %134 = load %struct.inode*, %struct.inode** %8, align 8
  %135 = call i32 @INODE_CACHE(%struct.inode* %134)
  %136 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %137 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %135, %struct.buffer_head* %136)
  %138 = load i32*, i32** %18, align 8
  %139 = load %struct.inode*, %struct.inode** %8, align 8
  %140 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %141 = load i64, i64* %22, align 8
  %142 = load i64, i64* %21, align 8
  %143 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %144 = call i32 @ocfs2_block_group_fill(i32* %138, %struct.inode* %139, %struct.buffer_head* %140, i64 %141, i64 %142, %struct.ocfs2_chain_list* %143)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %133
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @mlog_errno(i32 %148)
  br label %294

150:                                              ; preds = %133
  %151 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %152 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %154, %struct.ocfs2_group_desc** %24, align 8
  %155 = load i32*, i32** %18, align 8
  %156 = load %struct.inode*, %struct.inode** %8, align 8
  %157 = call i32 @INODE_CACHE(%struct.inode* %156)
  %158 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %159 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %160 = call i32 @ocfs2_journal_access_di(i32* %155, i32 %157, %struct.buffer_head* %158, i32 %159)
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %150
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @mlog_errno(i32 %164)
  br label %294

166:                                              ; preds = %150
  %167 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %168 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %167, i32 0, i32 3
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = load i64, i64* %21, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %24, align 8
  %174 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @le16_to_cpu(i32 %175)
  %177 = call i32 @le32_add_cpu(i32* %172, i64 %176)
  %178 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %179 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %178, i32 0, i32 3
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = load i64, i64* %21, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %24, align 8
  %185 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @le16_to_cpu(i32 %186)
  %188 = call i32 @le32_add_cpu(i32* %183, i64 %187)
  %189 = load i64, i64* %22, align 8
  %190 = call i8* @cpu_to_le64(i64 %189)
  %191 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %192 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %191, i32 0, i32 3
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = load i64, i64* %21, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  store i8* %190, i8** %196, align 8
  %197 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %198 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @le16_to_cpu(i32 %199)
  %201 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %202 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @le16_to_cpu(i32 %203)
  %205 = icmp slt i64 %200, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %166
  %207 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %208 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %207, i32 0, i32 1
  %209 = call i32 @le16_add_cpu(i32* %208, i32 1)
  br label %210

210:                                              ; preds = %206, %166
  %211 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %212 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %24, align 8
  %216 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @le16_to_cpu(i32 %217)
  %219 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %24, align 8
  %220 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @le16_to_cpu(i32 %221)
  %223 = sub nsw i64 %218, %222
  %224 = call i32 @le32_add_cpu(i32* %214, i64 %223)
  %225 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %226 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %24, align 8
  %230 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i64 @le16_to_cpu(i32 %231)
  %233 = call i32 @le32_add_cpu(i32* %228, i64 %232)
  %234 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %235 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %234, i32 0, i32 1
  %236 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %237 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i64 @le16_to_cpu(i32 %238)
  %240 = call i32 @le32_add_cpu(i32* %235, i64 %239)
  %241 = load i32*, i32** %18, align 8
  %242 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %243 = call i32 @ocfs2_journal_dirty(i32* %241, %struct.buffer_head* %242)
  store i32 %243, i32* %13, align 4
  %244 = load i32, i32* %13, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %210
  %247 = load i32, i32* %13, align 4
  %248 = call i32 @mlog_errno(i32 %247)
  br label %294

249:                                              ; preds = %210
  %250 = load %struct.inode*, %struct.inode** %8, align 8
  %251 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %250)
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = call i32 @spin_lock(i32* %252)
  %254 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %255 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @le32_to_cpu(i32 %256)
  %258 = load %struct.inode*, %struct.inode** %8, align 8
  %259 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %258)
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 4
  %261 = load %struct.inode*, %struct.inode** %8, align 8
  %262 = getelementptr inbounds %struct.inode, %struct.inode* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %265 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @le32_to_cpu(i32 %266)
  %268 = call i64 @ocfs2_clusters_to_bytes(i32 %263, i32 %267)
  %269 = call i8* @cpu_to_le64(i64 %268)
  %270 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %271 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %270, i32 0, i32 0
  store i8* %269, i8** %271, align 8
  %272 = load %struct.inode*, %struct.inode** %8, align 8
  %273 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %272)
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = call i32 @spin_unlock(i32* %274)
  %276 = load %struct.inode*, %struct.inode** %8, align 8
  %277 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %278 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @le64_to_cpu(i8* %279)
  %281 = call i32 @i_size_write(%struct.inode* %276, i32 %280)
  %282 = load %struct.inode*, %struct.inode** %8, align 8
  %283 = call i32 @ocfs2_inode_sector_count(%struct.inode* %282)
  %284 = load %struct.inode*, %struct.inode** %8, align 8
  %285 = getelementptr inbounds %struct.inode, %struct.inode* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 4
  store i32 0, i32* %13, align 4
  %286 = load i64*, i64** %11, align 8
  %287 = icmp ne i64* %286, null
  br i1 %287, label %288, label %293

288:                                              ; preds = %249
  %289 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %290 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64*, i64** %11, align 8
  store i64 %291, i64* %292, align 8
  br label %293

293:                                              ; preds = %288, %249
  br label %294

294:                                              ; preds = %293, %246, %163, %147, %128, %109, %70, %54
  %295 = load i32*, i32** %18, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %294
  %298 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %299 = load i32*, i32** %18, align 8
  %300 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %298, i32* %299)
  br label %301

301:                                              ; preds = %297, %294
  %302 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %303 = icmp ne %struct.ocfs2_alloc_context* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %306 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %305)
  br label %307

307:                                              ; preds = %304, %301
  %308 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %309 = call i32 @brelse(%struct.buffer_head* %308)
  %310 = load i32, i32* %13, align 4
  %311 = call i32 @mlog_exit(i32 %310)
  %312 = load i32, i32* %13, align 4
  ret i32 %312
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_cluster_bitmap(%struct.inode*) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_reserve_clusters_with_limit(%struct.ocfs2_super*, i64, i64, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_calc_group_alloc_credits(i32, i64) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @ocfs2_claim_clusters(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i64, i32*, i32*) #1

declare dso_local i64 @ocfs2_find_smallest_chain(%struct.ocfs2_chain_list*) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i64) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_block_group_fill(i32*, %struct.inode*, %struct.buffer_head*, i64, i64, %struct.ocfs2_chain_list*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i64) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_10__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_clusters_to_bytes(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @le64_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
