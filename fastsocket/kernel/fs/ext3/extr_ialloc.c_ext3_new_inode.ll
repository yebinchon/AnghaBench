; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_ialloc.c_ext3_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_ialloc.c_ext3_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.inode = type { i32, i64, i64, i32, i64, i32, i32, i32, i64, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext3_group_desc = type { i32, i32 }
%struct.ext3_super_block = type { i32 }
%struct.ext3_inode_info = type { i32, i32, i64, i32, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.ext3_sb_info = type { i32, i32, i32, i32, i32, %struct.ext3_super_block* }

@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OLDALLOC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"call ext3_journal_dirty_metadata\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ext3_new_inode\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"reserved inode or inode > inodes count - block_group = %d, inode=%lu\00", align 1
@GRPID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@EXT3_FL_INHERITED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXT3_STATE_NEW = common dso_local global i32 0, align 4
@EXT3_GOOD_OLD_INODE_SIZE = common dso_local global i64 0, align 8
@EDQUOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"allocating inode %lu\0A\00", align 1
@S_NOQUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ext3_new_inode(%struct.TYPE_9__* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.ext3_group_desc*, align 8
  %15 = alloca %struct.ext3_super_block*, align 8
  %16 = alloca %struct.ext3_inode_info*, align 8
  %17 = alloca %struct.ext3_sb_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.inode*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i64 0, i64* %12, align 8
  store %struct.ext3_group_desc* null, %struct.ext3_group_desc** %14, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23, %3
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.inode* @ERR_PTR(i32 %30)
  store %struct.inode* %31, %struct.inode** %4, align 8
  br label %467

32:                                               ; preds = %23
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 11
  %35 = load %struct.super_block*, %struct.super_block** %34, align 8
  store %struct.super_block* %35, %struct.super_block** %8, align 8
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @trace_ext3_request_inode(%struct.inode* %36, i32 %37)
  %39 = load %struct.super_block*, %struct.super_block** %8, align 8
  %40 = call %struct.inode* @new_inode(%struct.super_block* %39)
  store %struct.inode* %40, %struct.inode** %13, align 8
  %41 = load %struct.inode*, %struct.inode** %13, align 8
  %42 = icmp ne %struct.inode* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.inode* @ERR_PTR(i32 %45)
  store %struct.inode* %46, %struct.inode** %4, align 8
  br label %467

47:                                               ; preds = %32
  %48 = load %struct.inode*, %struct.inode** %13, align 8
  %49 = call %struct.ext3_inode_info* @EXT3_I(%struct.inode* %48)
  store %struct.ext3_inode_info* %49, %struct.ext3_inode_info** %16, align 8
  %50 = load %struct.super_block*, %struct.super_block** %8, align 8
  %51 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %50)
  store %struct.ext3_sb_info* %51, %struct.ext3_sb_info** %17, align 8
  %52 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %17, align 8
  %53 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %52, i32 0, i32 5
  %54 = load %struct.ext3_super_block*, %struct.ext3_super_block** %53, align 8
  store %struct.ext3_super_block* %54, %struct.ext3_super_block** %15, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @S_ISDIR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %47
  %59 = load %struct.super_block*, %struct.super_block** %8, align 8
  %60 = load i32, i32* @OLDALLOC, align 4
  %61 = call i64 @test_opt(%struct.super_block* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.super_block*, %struct.super_block** %8, align 8
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = call i32 @find_group_dir(%struct.super_block* %64, %struct.inode* %65)
  store i32 %66, i32* %11, align 4
  br label %71

67:                                               ; preds = %58
  %68 = load %struct.super_block*, %struct.super_block** %8, align 8
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = call i32 @find_group_orlov(%struct.super_block* %68, %struct.inode* %69)
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %67, %63
  br label %76

72:                                               ; preds = %47
  %73 = load %struct.super_block*, %struct.super_block** %8, align 8
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = call i32 @find_group_other(%struct.super_block* %73, %struct.inode* %74)
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %72, %71
  %77 = load i32, i32* @ENOSPC, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %437

82:                                               ; preds = %76
  store i32 0, i32* %20, align 4
  br label %83

83:                                               ; preds = %172, %82
  %84 = load i32, i32* %20, align 4
  %85 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %17, align 8
  %86 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %175

89:                                               ; preds = %83
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %18, align 4
  %92 = load %struct.super_block*, %struct.super_block** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %92, i32 %93, %struct.buffer_head** %10)
  store %struct.ext3_group_desc* %94, %struct.ext3_group_desc** %14, align 8
  %95 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %14, align 8
  %96 = icmp ne %struct.ext3_group_desc* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  br label %433

98:                                               ; preds = %89
  %99 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %100 = call i32 @brelse(%struct.buffer_head* %99)
  %101 = load %struct.super_block*, %struct.super_block** %8, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call %struct.buffer_head* @read_inode_bitmap(%struct.super_block* %101, i32 %102)
  store %struct.buffer_head* %103, %struct.buffer_head** %9, align 8
  %104 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %105 = icmp ne %struct.buffer_head* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  br label %433

107:                                              ; preds = %98
  store i64 0, i64* %12, align 8
  br label %108

108:                                              ; preds = %161, %107
  %109 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %110 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i64*
  %113 = load %struct.super_block*, %struct.super_block** %8, align 8
  %114 = call i32 @EXT3_INODES_PER_GROUP(%struct.super_block* %113)
  %115 = load i64, i64* %12, align 8
  %116 = call i64 @ext3_find_next_zero_bit(i64* %112, i32 %114, i64 %115)
  store i64 %116, i64* %12, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load %struct.super_block*, %struct.super_block** %8, align 8
  %119 = call i32 @EXT3_INODES_PER_GROUP(%struct.super_block* %118)
  %120 = sext i32 %119 to i64
  %121 = icmp ult i64 %117, %120
  br i1 %121, label %122, label %163

122:                                              ; preds = %108
  %123 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %124 = call i32 @BUFFER_TRACE(%struct.buffer_head* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %127 = call i32 @ext3_journal_get_write_access(%struct.TYPE_9__* %125, %struct.buffer_head* %126)
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %433

131:                                              ; preds = %122
  %132 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %17, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32* @sb_bgl_lock(%struct.ext3_sb_info* %132, i32 %133)
  %135 = load i64, i64* %12, align 8
  %136 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %137 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @ext3_set_bit_atomic(i32* %134, i64 %135, i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %131
  %142 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %143 = call i32 @BUFFER_TRACE(%struct.buffer_head* %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %146 = call i32 @ext3_journal_dirty_metadata(%struct.TYPE_9__* %144, %struct.buffer_head* %145)
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %433

150:                                              ; preds = %141
  br label %178

151:                                              ; preds = %131
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %153 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %154 = call i32 @journal_release_buffer(%struct.TYPE_9__* %152, %struct.buffer_head* %153)
  %155 = load i64, i64* %12, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %12, align 8
  %157 = load %struct.super_block*, %struct.super_block** %8, align 8
  %158 = call i32 @EXT3_INODES_PER_GROUP(%struct.super_block* %157)
  %159 = sext i32 %158 to i64
  %160 = icmp ult i64 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  br label %108

162:                                              ; preds = %151
  br label %163

163:                                              ; preds = %162, %108
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  %166 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %17, align 8
  %167 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %165, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  store i32 0, i32* %11, align 4
  br label %171

171:                                              ; preds = %170, %163
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %20, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %20, align 4
  br label %83

175:                                              ; preds = %83
  %176 = load i32, i32* @ENOSPC, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %18, align 4
  br label %437

178:                                              ; preds = %150
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.super_block*, %struct.super_block** %8, align 8
  %181 = call i32 @EXT3_INODES_PER_GROUP(%struct.super_block* %180)
  %182 = mul nsw i32 %179, %181
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* %12, align 8
  %186 = add i64 %185, %184
  store i64 %186, i64* %12, align 8
  %187 = load i64, i64* %12, align 8
  %188 = load %struct.super_block*, %struct.super_block** %8, align 8
  %189 = call i32 @EXT3_FIRST_INO(%struct.super_block* %188)
  %190 = sext i32 %189 to i64
  %191 = icmp ult i64 %187, %190
  br i1 %191, label %199, label %192

192:                                              ; preds = %178
  %193 = load i64, i64* %12, align 8
  %194 = load %struct.ext3_super_block*, %struct.ext3_super_block** %15, align 8
  %195 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @le32_to_cpu(i32 %196)
  %198 = icmp ugt i64 %193, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %192, %178
  %200 = load %struct.super_block*, %struct.super_block** %8, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load i64, i64* %12, align 8
  %203 = call i32 @ext3_error(%struct.super_block* %200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %201, i64 %202)
  %204 = load i32, i32* @EIO, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %18, align 4
  br label %433

206:                                              ; preds = %192
  %207 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %208 = call i32 @BUFFER_TRACE(%struct.buffer_head* %207, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %210 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %211 = call i32 @ext3_journal_get_write_access(%struct.TYPE_9__* %209, %struct.buffer_head* %210)
  store i32 %211, i32* %18, align 4
  %212 = load i32, i32* %18, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %433

215:                                              ; preds = %206
  %216 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %17, align 8
  %217 = load i32, i32* %11, align 4
  %218 = call i32* @sb_bgl_lock(%struct.ext3_sb_info* %216, i32 %217)
  %219 = call i32 @spin_lock(i32* %218)
  %220 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %14, align 8
  %221 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %220, i32 0, i32 1
  %222 = call i32 @le16_add_cpu(i32* %221, i32 -1)
  %223 = load i32, i32* %7, align 4
  %224 = call i64 @S_ISDIR(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %215
  %227 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %14, align 8
  %228 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %227, i32 0, i32 0
  %229 = call i32 @le16_add_cpu(i32* %228, i32 1)
  br label %230

230:                                              ; preds = %226, %215
  %231 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %17, align 8
  %232 = load i32, i32* %11, align 4
  %233 = call i32* @sb_bgl_lock(%struct.ext3_sb_info* %231, i32 %232)
  %234 = call i32 @spin_unlock(i32* %233)
  %235 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %236 = call i32 @BUFFER_TRACE(%struct.buffer_head* %235, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %238 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %239 = call i32 @ext3_journal_dirty_metadata(%struct.TYPE_9__* %237, %struct.buffer_head* %238)
  store i32 %239, i32* %18, align 4
  %240 = load i32, i32* %18, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %230
  br label %433

243:                                              ; preds = %230
  %244 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %17, align 8
  %245 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %244, i32 0, i32 4
  %246 = call i32 @percpu_counter_dec(i32* %245)
  %247 = load i32, i32* %7, align 4
  %248 = call i64 @S_ISDIR(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %243
  %251 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %17, align 8
  %252 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %251, i32 0, i32 3
  %253 = call i32 @percpu_counter_inc(i32* %252)
  br label %254

254:                                              ; preds = %250, %243
  %255 = call i32 (...) @current_fsuid()
  %256 = load %struct.inode*, %struct.inode** %13, align 8
  %257 = getelementptr inbounds %struct.inode, %struct.inode* %256, i32 0, i32 10
  store i32 %255, i32* %257, align 4
  %258 = load %struct.super_block*, %struct.super_block** %8, align 8
  %259 = load i32, i32* @GRPID, align 4
  %260 = call i64 @test_opt(%struct.super_block* %258, i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %254
  %263 = load %struct.inode*, %struct.inode** %6, align 8
  %264 = getelementptr inbounds %struct.inode, %struct.inode* %263, i32 0, i32 9
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.inode*, %struct.inode** %13, align 8
  %267 = getelementptr inbounds %struct.inode, %struct.inode* %266, i32 0, i32 9
  store i32 %265, i32* %267, align 8
  br label %294

268:                                              ; preds = %254
  %269 = load %struct.inode*, %struct.inode** %6, align 8
  %270 = getelementptr inbounds %struct.inode, %struct.inode* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @S_ISGID, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %289

275:                                              ; preds = %268
  %276 = load %struct.inode*, %struct.inode** %6, align 8
  %277 = getelementptr inbounds %struct.inode, %struct.inode* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.inode*, %struct.inode** %13, align 8
  %280 = getelementptr inbounds %struct.inode, %struct.inode* %279, i32 0, i32 9
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* %7, align 4
  %282 = call i64 @S_ISDIR(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %275
  %285 = load i32, i32* @S_ISGID, align 4
  %286 = load i32, i32* %7, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %7, align 4
  br label %288

288:                                              ; preds = %284, %275
  br label %293

289:                                              ; preds = %268
  %290 = call i32 (...) @current_fsgid()
  %291 = load %struct.inode*, %struct.inode** %13, align 8
  %292 = getelementptr inbounds %struct.inode, %struct.inode* %291, i32 0, i32 9
  store i32 %290, i32* %292, align 8
  br label %293

293:                                              ; preds = %289, %288
  br label %294

294:                                              ; preds = %293, %262
  %295 = load i32, i32* %7, align 4
  %296 = load %struct.inode*, %struct.inode** %13, align 8
  %297 = getelementptr inbounds %struct.inode, %struct.inode* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load i64, i64* %12, align 8
  %299 = load %struct.inode*, %struct.inode** %13, align 8
  %300 = getelementptr inbounds %struct.inode, %struct.inode* %299, i32 0, i32 1
  store i64 %298, i64* %300, align 8
  %301 = load %struct.inode*, %struct.inode** %13, align 8
  %302 = getelementptr inbounds %struct.inode, %struct.inode* %301, i32 0, i32 8
  store i64 0, i64* %302, align 8
  %303 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %304 = load %struct.inode*, %struct.inode** %13, align 8
  %305 = getelementptr inbounds %struct.inode, %struct.inode* %304, i32 0, i32 5
  store i32 %303, i32* %305, align 8
  %306 = load %struct.inode*, %struct.inode** %13, align 8
  %307 = getelementptr inbounds %struct.inode, %struct.inode* %306, i32 0, i32 6
  store i32 %303, i32* %307, align 4
  %308 = load %struct.inode*, %struct.inode** %13, align 8
  %309 = getelementptr inbounds %struct.inode, %struct.inode* %308, i32 0, i32 7
  store i32 %303, i32* %309, align 8
  %310 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %16, align 8
  %311 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %310, i32 0, i32 13
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @memset(i32 %312, i32 0, i32 4)
  %314 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %16, align 8
  %315 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %314, i32 0, i32 12
  store i64 0, i64* %315, align 8
  %316 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %16, align 8
  %317 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %316, i32 0, i32 11
  store i64 0, i64* %317, align 8
  %318 = load i32, i32* %7, align 4
  %319 = load %struct.inode*, %struct.inode** %6, align 8
  %320 = call %struct.ext3_inode_info* @EXT3_I(%struct.inode* %319)
  %321 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @EXT3_FL_INHERITED, align 4
  %324 = and i32 %322, %323
  %325 = call i32 @ext3_mask_flags(i32 %318, i32 %324)
  %326 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %16, align 8
  %327 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %326, i32 0, i32 0
  store i32 %325, i32* %327, align 8
  %328 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %16, align 8
  %329 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %328, i32 0, i32 7
  store i64 0, i64* %329, align 8
  %330 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %16, align 8
  %331 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %330, i32 0, i32 6
  store i64 0, i64* %331, align 8
  %332 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %16, align 8
  %333 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %332, i32 0, i32 5
  store i64 0, i64* %333, align 8
  %334 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %16, align 8
  %335 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %334, i32 0, i32 4
  store i32* null, i32** %335, align 8
  %336 = load i32, i32* %11, align 4
  %337 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %16, align 8
  %338 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %337, i32 0, i32 1
  store i32 %336, i32* %338, align 4
  %339 = load %struct.inode*, %struct.inode** %13, align 8
  %340 = call i32 @ext3_set_inode_flags(%struct.inode* %339)
  %341 = load %struct.inode*, %struct.inode** %13, align 8
  %342 = call i64 @IS_DIRSYNC(%struct.inode* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %294
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 0
  store i32 1, i32* %346, align 4
  br label %347

347:                                              ; preds = %344, %294
  %348 = load %struct.inode*, %struct.inode** %13, align 8
  %349 = call i64 @insert_inode_locked(%struct.inode* %348)
  %350 = icmp slt i64 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %347
  %352 = load i32, i32* @EINVAL, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %18, align 4
  br label %449

354:                                              ; preds = %347
  %355 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %17, align 8
  %356 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %355, i32 0, i32 1
  %357 = call i32 @spin_lock(i32* %356)
  %358 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %17, align 8
  %359 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %359, align 8
  %362 = sext i32 %360 to i64
  %363 = load %struct.inode*, %struct.inode** %13, align 8
  %364 = getelementptr inbounds %struct.inode, %struct.inode* %363, i32 0, i32 4
  store i64 %362, i64* %364, align 8
  %365 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %17, align 8
  %366 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %365, i32 0, i32 1
  %367 = call i32 @spin_unlock(i32* %366)
  %368 = load i32, i32* @EXT3_STATE_NEW, align 4
  %369 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %16, align 8
  %370 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %369, i32 0, i32 3
  store i32 %368, i32* %370, align 8
  %371 = load i64, i64* %12, align 8
  %372 = load %struct.super_block*, %struct.super_block** %8, align 8
  %373 = call i32 @EXT3_FIRST_INO(%struct.super_block* %372)
  %374 = add nsw i32 %373, 1
  %375 = sext i32 %374 to i64
  %376 = icmp uge i64 %371, %375
  br i1 %376, label %377, label %387

377:                                              ; preds = %354
  %378 = load %struct.super_block*, %struct.super_block** %8, align 8
  %379 = call i64 @EXT3_INODE_SIZE(%struct.super_block* %378)
  %380 = load i64, i64* @EXT3_GOOD_OLD_INODE_SIZE, align 8
  %381 = icmp sgt i64 %379, %380
  br i1 %381, label %382, label %387

382:                                              ; preds = %377
  %383 = load i64, i64* @EXT3_GOOD_OLD_INODE_SIZE, align 8
  %384 = sub i64 4, %383
  %385 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %16, align 8
  %386 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %385, i32 0, i32 2
  store i64 %384, i64* %386, align 8
  br label %390

387:                                              ; preds = %377, %354
  %388 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %16, align 8
  %389 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %388, i32 0, i32 2
  store i64 0, i64* %389, align 8
  br label %390

390:                                              ; preds = %387, %382
  %391 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %391, %struct.inode** %19, align 8
  %392 = load %struct.inode*, %struct.inode** %13, align 8
  %393 = call i64 @vfs_dq_alloc_inode(%struct.inode* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %390
  %396 = load i32, i32* @EDQUOT, align 4
  %397 = sub nsw i32 0, %396
  store i32 %397, i32* %18, align 4
  br label %449

398:                                              ; preds = %390
  %399 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %400 = load %struct.inode*, %struct.inode** %13, align 8
  %401 = load %struct.inode*, %struct.inode** %6, align 8
  %402 = call i32 @ext3_init_acl(%struct.TYPE_9__* %399, %struct.inode* %400, %struct.inode* %401)
  store i32 %402, i32* %18, align 4
  %403 = load i32, i32* %18, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %398
  br label %446

406:                                              ; preds = %398
  %407 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %408 = load %struct.inode*, %struct.inode** %13, align 8
  %409 = load %struct.inode*, %struct.inode** %6, align 8
  %410 = call i32 @ext3_init_security(%struct.TYPE_9__* %407, %struct.inode* %408, %struct.inode* %409)
  store i32 %410, i32* %18, align 4
  %411 = load i32, i32* %18, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %406
  br label %446

414:                                              ; preds = %406
  %415 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %416 = load %struct.inode*, %struct.inode** %13, align 8
  %417 = call i32 @ext3_mark_inode_dirty(%struct.TYPE_9__* %415, %struct.inode* %416)
  store i32 %417, i32* %18, align 4
  %418 = load i32, i32* %18, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %414
  %421 = load %struct.super_block*, %struct.super_block** %8, align 8
  %422 = load i32, i32* %18, align 4
  %423 = call i32 @ext3_std_error(%struct.super_block* %421, i32 %422)
  br label %446

424:                                              ; preds = %414
  %425 = load %struct.inode*, %struct.inode** %13, align 8
  %426 = getelementptr inbounds %struct.inode, %struct.inode* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = call i32 @ext3_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %427)
  %429 = load %struct.inode*, %struct.inode** %13, align 8
  %430 = load %struct.inode*, %struct.inode** %6, align 8
  %431 = load i32, i32* %7, align 4
  %432 = call i32 @trace_ext3_allocate_inode(%struct.inode* %429, %struct.inode* %430, i32 %431)
  br label %442

433:                                              ; preds = %242, %214, %199, %149, %130, %106, %97
  %434 = load %struct.super_block*, %struct.super_block** %8, align 8
  %435 = load i32, i32* %18, align 4
  %436 = call i32 @ext3_std_error(%struct.super_block* %434, i32 %435)
  br label %437

437:                                              ; preds = %433, %175, %81
  %438 = load %struct.inode*, %struct.inode** %13, align 8
  %439 = call i32 @iput(%struct.inode* %438)
  %440 = load i32, i32* %18, align 4
  %441 = call %struct.inode* @ERR_PTR(i32 %440)
  store %struct.inode* %441, %struct.inode** %19, align 8
  br label %442

442:                                              ; preds = %437, %424
  %443 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %444 = call i32 @brelse(%struct.buffer_head* %443)
  %445 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %445, %struct.inode** %4, align 8
  br label %467

446:                                              ; preds = %420, %413, %405
  %447 = load %struct.inode*, %struct.inode** %13, align 8
  %448 = call i32 @vfs_dq_free_inode(%struct.inode* %447)
  br label %449

449:                                              ; preds = %446, %395, %351
  %450 = load %struct.inode*, %struct.inode** %13, align 8
  %451 = call i32 @vfs_dq_drop(%struct.inode* %450)
  %452 = load i32, i32* @S_NOQUOTA, align 4
  %453 = load %struct.inode*, %struct.inode** %13, align 8
  %454 = getelementptr inbounds %struct.inode, %struct.inode* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 8
  %456 = or i32 %455, %452
  store i32 %456, i32* %454, align 8
  %457 = load %struct.inode*, %struct.inode** %13, align 8
  %458 = getelementptr inbounds %struct.inode, %struct.inode* %457, i32 0, i32 2
  store i64 0, i64* %458, align 8
  %459 = load %struct.inode*, %struct.inode** %13, align 8
  %460 = call i32 @unlock_new_inode(%struct.inode* %459)
  %461 = load %struct.inode*, %struct.inode** %13, align 8
  %462 = call i32 @iput(%struct.inode* %461)
  %463 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %464 = call i32 @brelse(%struct.buffer_head* %463)
  %465 = load i32, i32* %18, align 4
  %466 = call %struct.inode* @ERR_PTR(i32 %465)
  store %struct.inode* %466, %struct.inode** %4, align 8
  br label %467

467:                                              ; preds = %449, %442, %43, %28
  %468 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %468
}

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @trace_ext3_request_inode(%struct.inode*, i32) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.ext3_inode_info* @EXT3_I(%struct.inode*) #1

declare dso_local %struct.ext3_sb_info* @EXT3_SB(%struct.super_block*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @find_group_dir(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @find_group_orlov(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @find_group_other(%struct.super_block*, %struct.inode*) #1

declare dso_local %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @read_inode_bitmap(%struct.super_block*, i32) #1

declare dso_local i64 @ext3_find_next_zero_bit(i64*, i32, i64) #1

declare dso_local i32 @EXT3_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext3_journal_get_write_access(%struct.TYPE_9__*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_set_bit_atomic(i32*, i64, i64) #1

declare dso_local i32* @sb_bgl_lock(%struct.ext3_sb_info*, i32) #1

declare dso_local i32 @ext3_journal_dirty_metadata(%struct.TYPE_9__*, %struct.buffer_head*) #1

declare dso_local i32 @journal_release_buffer(%struct.TYPE_9__*, %struct.buffer_head*) #1

declare dso_local i32 @EXT3_FIRST_INO(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext3_error(%struct.super_block*, i8*, i8*, i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @percpu_counter_dec(i32*) #1

declare dso_local i32 @percpu_counter_inc(i32*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ext3_mask_flags(i32, i32) #1

declare dso_local i32 @ext3_set_inode_flags(%struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i64 @insert_inode_locked(%struct.inode*) #1

declare dso_local i64 @EXT3_INODE_SIZE(%struct.super_block*) #1

declare dso_local i64 @vfs_dq_alloc_inode(%struct.inode*) #1

declare dso_local i32 @ext3_init_acl(%struct.TYPE_9__*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext3_init_security(%struct.TYPE_9__*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext3_mark_inode_dirty(%struct.TYPE_9__*, %struct.inode*) #1

declare dso_local i32 @ext3_std_error(%struct.super_block*, i32) #1

declare dso_local i32 @ext3_debug(i8*, i64) #1

declare dso_local i32 @trace_ext3_allocate_inode(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @vfs_dq_free_inode(%struct.inode*) #1

declare dso_local i32 @vfs_dq_drop(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
