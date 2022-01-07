; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_resize.c_ocfs2_group_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_resize.c_ocfs2_group_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_new_group_input = type { i64, i32, i32, i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.ocfs2_chain_list }
%struct.ocfs2_chain_list = type { i32, %struct.ocfs2_chain_rec*, i32, i32 }
%struct.ocfs2_chain_rec = type { i32, i32, i32 }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_group_desc = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"The disk is too old and small. Force to do offline resize.\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Can't read the group descriptor # %llu from the device.\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Add a new group  %llu in chain = %u, length = %u\0A\00", align 1
@OCFS2_GROUP_ADD_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_group_add(%struct.inode* %0, %struct.ocfs2_new_group_input* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_new_group_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_super*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_group_desc*, align 8
  %14 = alloca %struct.ocfs2_chain_list*, align 8
  %15 = alloca %struct.ocfs2_chain_rec*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_new_group_input* %1, %struct.ocfs2_new_group_input** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  store %struct.inode* null, %struct.inode** %9, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  store %struct.ocfs2_group_desc* null, %struct.ocfs2_group_desc** %13, align 8
  %21 = call i32 (...) @mlog_entry_void()
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %23 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %27 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %2
  %30 = load i32, i32* @EROFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %315

32:                                               ; preds = %25
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %34 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %35 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %36 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %33, i32 %34, i32 %35)
  store %struct.inode* %36, %struct.inode** %9, align 8
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %312

44:                                               ; preds = %32
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = call i32 @ocfs2_inode_lock(%struct.inode* %48, %struct.buffer_head** %8, i32 1)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %306

55:                                               ; preds = %44
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %59, %struct.ocfs2_dinode** %10, align 8
  %60 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %61 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %67 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ocfs2_group_bitmap_size(i32 %68)
  %70 = mul nsw i32 %69, 8
  %71 = icmp ne i32 %65, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %55
  %73 = load i32, i32* @ML_ERROR, align 4
  %74 = call i32 (i32, i8*, ...) @mlog(i32 %73, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %299

77:                                               ; preds = %55
  %78 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %79 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %80 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %78, i64 %81, i32 1, %struct.buffer_head** %12)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load i32, i32* @ML_ERROR, align 4
  %87 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %88 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i32, i8*, ...) @mlog(i32 %86, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %89)
  br label %299

91:                                               ; preds = %77
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = call i32 @INODE_CACHE(%struct.inode* %92)
  %94 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %95 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %93, %struct.buffer_head* %94)
  %96 = load %struct.inode*, %struct.inode** %9, align 8
  %97 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %98 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %100 = call i32 @ocfs2_verify_group_and_input(%struct.inode* %96, %struct.ocfs2_dinode* %97, %struct.ocfs2_new_group_input* %98, %struct.buffer_head* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @mlog_errno(i32 %104)
  br label %299

106:                                              ; preds = %91
  %107 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %108 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %111 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %114 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %109, i64 %112, i32 %115)
  %117 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %118 = load i32, i32* @OCFS2_GROUP_ADD_CREDITS, align 4
  %119 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %117, i32 %118)
  store i32* %119, i32** %7, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = call i64 @IS_ERR(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %106
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @PTR_ERR(i32* %124)
  %126 = call i32 @mlog_errno(i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %299

129:                                              ; preds = %106
  %130 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %131 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @le16_to_cpu(i32 %134)
  store i32 %135, i32* %16, align 4
  %136 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %137 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store %struct.ocfs2_chain_list* %138, %struct.ocfs2_chain_list** %14, align 8
  %139 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %140 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %139, i32 0, i32 1
  %141 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %140, align 8
  %142 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %143 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %141, i64 %144
  store %struct.ocfs2_chain_rec* %145, %struct.ocfs2_chain_rec** %15, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load %struct.inode*, %struct.inode** %9, align 8
  %148 = call i32 @INODE_CACHE(%struct.inode* %147)
  %149 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %150 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %151 = call i32 @ocfs2_journal_access_gd(i32* %146, i32 %148, %struct.buffer_head* %149, i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %129
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @mlog_errno(i32 %155)
  br label %295

157:                                              ; preds = %129
  %158 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %159 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %161, %struct.ocfs2_group_desc** %13, align 8
  %162 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %15, align 8
  %163 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %13, align 8
  %166 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load i32*, i32** %7, align 8
  %168 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %169 = call i32 @ocfs2_journal_dirty(i32* %167, %struct.buffer_head* %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %157
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @mlog_errno(i32 %173)
  br label %295

175:                                              ; preds = %157
  %176 = load i32*, i32** %7, align 8
  %177 = load %struct.inode*, %struct.inode** %9, align 8
  %178 = call i32 @INODE_CACHE(%struct.inode* %177)
  %179 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %180 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %181 = call i32 @ocfs2_journal_access_di(i32* %176, i32 %178, %struct.buffer_head* %179, i32 %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %175
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @mlog_errno(i32 %185)
  br label %295

187:                                              ; preds = %175
  %188 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %189 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %192 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @le16_to_cpu(i32 %193)
  %195 = sext i32 %194 to i64
  %196 = icmp eq i64 %190, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %187
  %198 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %199 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %198, i32 0, i32 0
  %200 = call i32 @le16_add_cpu(i32* %199, i32 1)
  %201 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %15, align 8
  %202 = call i32 @memset(%struct.ocfs2_chain_rec* %201, i32 0, i32 12)
  br label %203

203:                                              ; preds = %197, %187
  %204 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %205 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @cpu_to_le64(i64 %206)
  %208 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %15, align 8
  %209 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 4
  %210 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %15, align 8
  %211 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %210, i32 0, i32 1
  %212 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %213 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %16, align 4
  %216 = mul nsw i32 %214, %215
  %217 = call i32 @le32_add_cpu(i32* %211, i32 %216)
  %218 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %15, align 8
  %219 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %218, i32 0, i32 0
  %220 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %221 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %16, align 4
  %224 = mul nsw i32 %222, %223
  %225 = call i32 @le32_add_cpu(i32* %219, i32 %224)
  %226 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %227 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %231 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %16, align 4
  %234 = mul nsw i32 %232, %233
  %235 = call i32 @le32_add_cpu(i32* %229, i32 %234)
  %236 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %237 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %241 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %244 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %242, %245
  %247 = load i32, i32* %16, align 4
  %248 = mul nsw i32 %246, %247
  %249 = call i32 @le32_add_cpu(i32* %239, i32 %248)
  %250 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %251 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %250, i32 0, i32 1
  %252 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %253 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @le32_add_cpu(i32* %251, i32 %254)
  %256 = load i32*, i32** %7, align 8
  %257 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %258 = call i32 @ocfs2_journal_dirty(i32* %256, %struct.buffer_head* %257)
  %259 = load %struct.inode*, %struct.inode** %9, align 8
  %260 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %259)
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = call i32 @spin_lock(i32* %261)
  %263 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %264 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @le32_to_cpu(i32 %265)
  %267 = load %struct.inode*, %struct.inode** %9, align 8
  %268 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %267)
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  store i32 %266, i32* %269, align 4
  %270 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %271 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %270, i32 0, i32 0
  %272 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %273 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %276 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = shl i32 %274, %277
  %279 = call i32 @le64_add_cpu(i32* %271, i32 %278)
  %280 = load %struct.inode*, %struct.inode** %9, align 8
  %281 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %280)
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = call i32 @spin_unlock(i32* %282)
  %284 = load %struct.inode*, %struct.inode** %9, align 8
  %285 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %286 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @le64_to_cpu(i32 %287)
  %289 = call i32 @i_size_write(%struct.inode* %284, i32 %288)
  %290 = load %struct.inode*, %struct.inode** %9, align 8
  %291 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %5, align 8
  %292 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @ocfs2_update_super_and_backups(%struct.inode* %290, i32 %293)
  br label %295

295:                                              ; preds = %203, %184, %172, %154
  %296 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %297 = load i32*, i32** %7, align 8
  %298 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %296, i32* %297)
  br label %299

299:                                              ; preds = %295, %123, %103, %85, %72
  %300 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %301 = call i32 @brelse(%struct.buffer_head* %300)
  %302 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %303 = call i32 @brelse(%struct.buffer_head* %302)
  %304 = load %struct.inode*, %struct.inode** %9, align 8
  %305 = call i32 @ocfs2_inode_unlock(%struct.inode* %304, i32 1)
  br label %306

306:                                              ; preds = %299, %52
  %307 = load %struct.inode*, %struct.inode** %9, align 8
  %308 = getelementptr inbounds %struct.inode, %struct.inode* %307, i32 0, i32 0
  %309 = call i32 @mutex_unlock(i32* %308)
  %310 = load %struct.inode*, %struct.inode** %9, align 8
  %311 = call i32 @iput(%struct.inode* %310)
  br label %312

312:                                              ; preds = %306, %39
  %313 = call i32 (...) @mlog_exit_void()
  %314 = load i32, i32* %6, align 4
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %312, %29
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_group_bitmap_size(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_verify_group_and_input(%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_new_group_input*, %struct.buffer_head*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_gd(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_chain_rec*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_update_super_and_backups(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
