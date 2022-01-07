; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_read_locked_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_read_locked_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_find_inode_args = type { i32, i64 }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_dinode = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"(0x%p, 0x%p)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"bad inode\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bad inode args\0A\00", align 1
@OCFS2_FI_FLAG_SYSFILE = common dso_local global i32 0, align 4
@OCFS2_FI_FLAG_ORPHAN_RECOVERY = common dso_local global i32 0, align 4
@OCFS2_LOCK_TYPE_META = common dso_local global i32 0, align 4
@OCFS2_LOCK_TYPE_OPEN = common dso_local global i32 0, align 4
@OCFS2_BH_IGNORE_CACHE = common dso_local global i32 0, align 4
@OCFS2_SYSTEM_FL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Inode %llu: system file state is ambigous\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_find_inode_args*)* @ocfs2_read_locked_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_read_locked_inode(%struct.inode* %0, %struct.ocfs2_find_inode_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_find_inode_args*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_find_inode_args* %1, %struct.ocfs2_find_inode_args** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %15 = call i32 @mlog_entry(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.inode* %13, %struct.ocfs2_find_inode_args* %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = icmp eq %struct.inode* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  %24 = icmp eq %struct.super_block* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @ML_ERROR, align 4
  %27 = call i32 @mlog(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %253

29:                                               ; preds = %20
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load %struct.super_block*, %struct.super_block** %31, align 8
  store %struct.super_block* %32, %struct.super_block** %6, align 8
  %33 = load %struct.super_block*, %struct.super_block** %6, align 8
  %34 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %33)
  store %struct.ocfs2_super* %34, %struct.ocfs2_super** %7, align 8
  %35 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %36 = icmp ne %struct.ocfs2_find_inode_args* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @ML_ERROR, align 4
  %39 = call i32 @mlog(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = call i32 @make_bad_inode(%struct.inode* %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %253

43:                                               ; preds = %29
  %44 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %45 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @OCFS2_FI_FLAG_SYSFILE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %43
  %51 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %52 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @OCFS2_FI_FLAG_ORPHAN_RECOVERY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %59 = call i32 @ocfs2_mount_local(%struct.ocfs2_super* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %57, %50, %43
  %63 = phi i1 [ false, %50 ], [ false, %43 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %11, align 4
  %65 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %66 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @OCFS2_FI_FLAG_SYSFILE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %73 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %71, %62
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %76)
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* @OCFS2_LOCK_TYPE_META, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = call i32 @ocfs2_inode_lock_res_init(i32* %78, i32 %79, i32 %80, %struct.inode* %81)
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* @OCFS2_LOCK_TYPE_OPEN, align 4
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = call i32 @ocfs2_inode_lock_res_init(i32* %85, i32 %86, i32 0, %struct.inode* %87)
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %75
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = call i32 @ocfs2_open_lock(%struct.inode* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = call i32 @make_bad_inode(%struct.inode* %97)
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @mlog_errno(i32 %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %253

102:                                              ; preds = %91
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = call i32 @ocfs2_inode_lock(%struct.inode* %103, i32* null, i32 0)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = call i32 @make_bad_inode(%struct.inode* %108)
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  br label %253

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %75
  %115 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %116 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @OCFS2_FI_FLAG_ORPHAN_RECOVERY, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %114
  %122 = load %struct.inode*, %struct.inode** %4, align 8
  %123 = call i32 @ocfs2_try_open_lock(%struct.inode* %122, i32 0)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = call i32 @make_bad_inode(%struct.inode* %127)
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %3, align 4
  br label %253

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %114
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %137 = call i32 @ocfs2_read_inode_block_full(%struct.inode* %135, %struct.buffer_head** %9, i32 %136)
  store i32 %137, i32* %10, align 4
  br label %153

138:                                              ; preds = %131
  %139 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %140 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %141 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %139, i64 %142, i32 1, %struct.buffer_head** %9)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %138
  %147 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %148 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %151 = call i32 @ocfs2_validate_inode_block(i32 %149, %struct.buffer_head* %150)
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %146, %138
  br label %153

153:                                              ; preds = %152, %134
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @mlog_errno(i32 %157)
  br label %228

159:                                              ; preds = %153
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %10, align 4
  %162 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %163 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %165, %struct.ocfs2_dinode** %8, align 8
  %166 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %167 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @OCFS2_SYSTEM_FL, align 4
  %170 = call i32 @cpu_to_le32(i32 %169)
  %171 = and i32 %168, %170
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %177 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @OCFS2_FI_FLAG_SYSFILE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = icmp ne i32 %175, %184
  %186 = zext i1 %185 to i32
  %187 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %188 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @mlog_bug_on_msg(i32 %186, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %189)
  %191 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %192 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @le16_to_cpu(i32 %193)
  %195 = call i64 @S_ISCHR(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %204, label %197

197:                                              ; preds = %159
  %198 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %199 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @le16_to_cpu(i32 %200)
  %202 = call i64 @S_ISBLK(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %197, %159
  %205 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %206 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @le64_to_cpu(i32 %209)
  %211 = call i32 @huge_decode_dev(i64 %210)
  %212 = load %struct.inode*, %struct.inode** %4, align 8
  %213 = getelementptr inbounds %struct.inode, %struct.inode* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %204, %197
  %215 = load %struct.inode*, %struct.inode** %4, align 8
  %216 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %217 = call i32 @ocfs2_populate_inode(%struct.inode* %215, %struct.ocfs2_dinode* %216, i32 0)
  %218 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %219 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %222 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @le64_to_cpu(i32 %223)
  %225 = icmp ne i64 %220, %224
  %226 = zext i1 %225 to i32
  %227 = call i32 @BUG_ON(i32 %226)
  store i32 0, i32* %10, align 4
  br label %228

228:                                              ; preds = %214, %156
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load %struct.inode*, %struct.inode** %4, align 8
  %233 = call i32 @ocfs2_inode_unlock(%struct.inode* %232, i32 0)
  br label %234

234:                                              ; preds = %231, %228
  %235 = load i32, i32* %10, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load %struct.inode*, %struct.inode** %4, align 8
  %239 = call i32 @make_bad_inode(%struct.inode* %238)
  br label %240

240:                                              ; preds = %237, %234
  %241 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %242 = icmp ne %struct.ocfs2_find_inode_args* %241, null
  br i1 %242, label %243, label %249

243:                                              ; preds = %240
  %244 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %245 = icmp ne %struct.buffer_head* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %248 = call i32 @brelse(%struct.buffer_head* %247)
  br label %249

249:                                              ; preds = %246, %243, %240
  %250 = load i32, i32* %10, align 4
  %251 = call i32 @mlog_exit(i32 %250)
  %252 = load i32, i32* %10, align 4
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %249, %126, %107, %96, %37, %25
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, %struct.ocfs2_find_inode_args*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_inode_lock_res_init(i32*, i32, i32, %struct.inode*) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_open_lock(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @ocfs2_try_open_lock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_read_inode_block_full(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_validate_inode_block(i32, %struct.buffer_head*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @huge_decode_dev(i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_populate_inode(%struct.inode*, %struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
