; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.inode* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.ocfs2_super = type { i32, %struct.inode* }
%struct.ocfs2_dinode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.TYPE_6__ = type { i64, i32 }

@OCFS2_ORPHAN_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"(0x%p, 0x%p, '%.*s')\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ino = %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot delete the root directory\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@OI_LS_PARENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"ip_blkno %llu != dirent blkno %llu ip_flags = %x\0A\00", align 1
@ENOTEMPTY = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ocfs2_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ocfs2_dinode*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ocfs2_dir_lookup_result, align 8
  %19 = alloca %struct.ocfs2_dir_lookup_result, align 8
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 2
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %8, align 8
  store %struct.inode* null, %struct.inode** %9, align 8
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ocfs2_super* @OCFS2_SB(i32 %26)
  store %struct.ocfs2_super* %27, %struct.ocfs2_super** %10, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  store i32* null, i32** %15, align 8
  %28 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %16, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  %33 = bitcast %struct.ocfs2_dir_lookup_result* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 8, i1 false)
  %34 = bitcast %struct.ocfs2_dir_lookup_result* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 8, i1 false)
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mlog_entry(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.inode* %35, %struct.dentry* %36, i32 %40, i32 %44)
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.inode*, %struct.inode** %49, align 8
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = icmp ne %struct.inode* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %62 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %61, i32 0, i32 1
  %63 = load %struct.inode*, %struct.inode** %62, align 8
  %64 = icmp eq %struct.inode* %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %2
  %66 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @EPERM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %337

69:                                               ; preds = %2
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = load i32, i32* @OI_LS_PARENT, align 4
  %72 = call i32 @ocfs2_inode_lock_nested(%struct.inode* %70, %struct.buffer_head** %14, i32 1, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %337

85:                                               ; preds = %69
  %86 = load %struct.dentry*, %struct.dentry** %5, align 8
  %87 = getelementptr inbounds %struct.dentry, %struct.dentry* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dentry*, %struct.dentry** %5, align 8
  %91 = getelementptr inbounds %struct.dentry, %struct.dentry* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = call i32 @ocfs2_find_files_on_disk(i32 %89, i32 %93, i64* %11, %struct.inode* %94, %struct.ocfs2_dir_lookup_result* %18)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %85
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @ENOENT, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @mlog_errno(i32 %104)
  br label %106

106:                                              ; preds = %103, %98
  br label %301

107:                                              ; preds = %85
  %108 = load %struct.inode*, %struct.inode** %8, align 8
  %109 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %107
  %115 = load i32, i32* @ENOENT, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %117)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load %struct.inode*, %struct.inode** %8, align 8
  %123 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %122)
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %120, i64 %121, i32 %125)
  br label %301

127:                                              ; preds = %107
  %128 = load %struct.inode*, %struct.inode** %8, align 8
  %129 = call i32 @ocfs2_inode_lock(%struct.inode* %128, %struct.buffer_head** %13, i32 1)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @ENOENT, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @mlog_errno(i32 %138)
  br label %140

140:                                              ; preds = %137, %132
  br label %301

141:                                              ; preds = %127
  store i32 1, i32* %7, align 4
  %142 = load %struct.inode*, %struct.inode** %8, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @S_ISDIR(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %141
  %148 = load %struct.inode*, %struct.inode** %8, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 2
  br i1 %151, label %156, label %152

152:                                              ; preds = %147
  %153 = load %struct.inode*, %struct.inode** %8, align 8
  %154 = call i32 @ocfs2_empty_dir(%struct.inode* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152, %147
  %157 = load i32, i32* @ENOTEMPTY, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %6, align 4
  br label %301

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %159, %141
  %161 = load %struct.dentry*, %struct.dentry** %5, align 8
  %162 = call i32 @ocfs2_remote_dentry_delete(%struct.dentry* %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @mlog_errno(i32 %166)
  br label %301

168:                                              ; preds = %160
  %169 = load %struct.inode*, %struct.inode** %8, align 8
  %170 = call i64 @inode_is_unlinkable(%struct.inode* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %168
  %173 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %174 = load %struct.inode*, %struct.inode** %8, align 8
  %175 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %174)
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @ocfs2_prepare_orphan_dir(%struct.ocfs2_super* %173, %struct.inode** %9, i64 %177, i8* %32, %struct.ocfs2_dir_lookup_result* %19)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %172
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @mlog_errno(i32 %182)
  br label %301

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %184, %168
  %186 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %187 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %188 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @ocfs2_unlink_credits(i32 %189)
  %191 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %186, i32 %190)
  store i32* %191, i32** %15, align 8
  %192 = load i32*, i32** %15, align 8
  %193 = call i64 @IS_ERR(i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %185
  %196 = load i32*, i32** %15, align 8
  %197 = call i32 @PTR_ERR(i32* %196)
  store i32 %197, i32* %6, align 4
  store i32* null, i32** %15, align 8
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @mlog_errno(i32 %198)
  br label %301

200:                                              ; preds = %185
  %201 = load i32*, i32** %15, align 8
  %202 = load %struct.inode*, %struct.inode** %8, align 8
  %203 = call i32 @INODE_CACHE(%struct.inode* %202)
  %204 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %205 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %206 = call i32 @ocfs2_journal_access_di(i32* %201, i32 %203, %struct.buffer_head* %204, i32 %205)
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %200
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @mlog_errno(i32 %210)
  br label %301

212:                                              ; preds = %200
  %213 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %214 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = inttoptr i64 %215 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %216, %struct.ocfs2_dinode** %12, align 8
  %217 = load %struct.inode*, %struct.inode** %8, align 8
  %218 = call i64 @inode_is_unlinkable(%struct.inode* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %212
  %221 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %222 = load i32*, i32** %15, align 8
  %223 = load %struct.inode*, %struct.inode** %8, align 8
  %224 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %225 = load %struct.inode*, %struct.inode** %9, align 8
  %226 = call i32 @ocfs2_orphan_add(%struct.ocfs2_super* %221, i32* %222, %struct.inode* %223, %struct.ocfs2_dinode* %224, i8* %32, %struct.ocfs2_dir_lookup_result* %19, %struct.inode* %225)
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* %6, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %220
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @mlog_errno(i32 %230)
  br label %301

232:                                              ; preds = %220
  br label %233

233:                                              ; preds = %232, %212
  %234 = load i32*, i32** %15, align 8
  %235 = load %struct.inode*, %struct.inode** %4, align 8
  %236 = call i32 @ocfs2_delete_entry(i32* %234, %struct.inode* %235, %struct.ocfs2_dir_lookup_result* %18)
  store i32 %236, i32* %6, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load i32, i32* %6, align 4
  %241 = call i32 @mlog_errno(i32 %240)
  br label %301

242:                                              ; preds = %233
  %243 = load %struct.inode*, %struct.inode** %8, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @S_ISDIR(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load %struct.inode*, %struct.inode** %8, align 8
  %250 = call i32 @drop_nlink(%struct.inode* %249)
  br label %251

251:                                              ; preds = %248, %242
  %252 = load %struct.inode*, %struct.inode** %8, align 8
  %253 = call i32 @drop_nlink(%struct.inode* %252)
  %254 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %255 = load %struct.inode*, %struct.inode** %8, align 8
  %256 = getelementptr inbounds %struct.inode, %struct.inode* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @ocfs2_set_links_count(%struct.ocfs2_dinode* %254, i32 %257)
  %259 = load i32*, i32** %15, align 8
  %260 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %261 = call i32 @ocfs2_journal_dirty(i32* %259, %struct.buffer_head* %260)
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* %6, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %251
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @mlog_errno(i32 %265)
  br label %301

267:                                              ; preds = %251
  %268 = load i32, i32* @CURRENT_TIME, align 4
  %269 = load %struct.inode*, %struct.inode** %4, align 8
  %270 = getelementptr inbounds %struct.inode, %struct.inode* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 4
  %271 = load %struct.inode*, %struct.inode** %4, align 8
  %272 = getelementptr inbounds %struct.inode, %struct.inode* %271, i32 0, i32 4
  store i32 %268, i32* %272, align 4
  %273 = load %struct.inode*, %struct.inode** %8, align 8
  %274 = getelementptr inbounds %struct.inode, %struct.inode* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = call i64 @S_ISDIR(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %267
  %279 = load %struct.inode*, %struct.inode** %4, align 8
  %280 = call i32 @drop_nlink(%struct.inode* %279)
  br label %281

281:                                              ; preds = %278, %267
  %282 = load i32*, i32** %15, align 8
  %283 = load %struct.inode*, %struct.inode** %4, align 8
  %284 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %285 = call i32 @ocfs2_mark_inode_dirty(i32* %282, %struct.inode* %283, %struct.buffer_head* %284)
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %6, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %281
  %289 = load i32, i32* %6, align 4
  %290 = call i32 @mlog_errno(i32 %289)
  %291 = load %struct.inode*, %struct.inode** %8, align 8
  %292 = getelementptr inbounds %struct.inode, %struct.inode* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = call i64 @S_ISDIR(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %288
  %297 = load %struct.inode*, %struct.inode** %4, align 8
  %298 = call i32 @inc_nlink(%struct.inode* %297)
  br label %299

299:                                              ; preds = %296, %288
  br label %300

300:                                              ; preds = %299, %281
  br label %301

301:                                              ; preds = %300, %264, %239, %229, %209, %195, %181, %165, %156, %140, %114, %106
  %302 = load i32*, i32** %15, align 8
  %303 = icmp ne i32* %302, null
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %306 = load i32*, i32** %15, align 8
  %307 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %305, i32* %306)
  br label %308

308:                                              ; preds = %304, %301
  %309 = load i32, i32* %7, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load %struct.inode*, %struct.inode** %8, align 8
  %313 = call i32 @ocfs2_inode_unlock(%struct.inode* %312, i32 1)
  br label %314

314:                                              ; preds = %311, %308
  %315 = load %struct.inode*, %struct.inode** %4, align 8
  %316 = call i32 @ocfs2_inode_unlock(%struct.inode* %315, i32 1)
  %317 = load %struct.inode*, %struct.inode** %9, align 8
  %318 = icmp ne %struct.inode* %317, null
  br i1 %318, label %319, label %327

319:                                              ; preds = %314
  %320 = load %struct.inode*, %struct.inode** %9, align 8
  %321 = call i32 @ocfs2_inode_unlock(%struct.inode* %320, i32 1)
  %322 = load %struct.inode*, %struct.inode** %9, align 8
  %323 = getelementptr inbounds %struct.inode, %struct.inode* %322, i32 0, i32 1
  %324 = call i32 @mutex_unlock(i32* %323)
  %325 = load %struct.inode*, %struct.inode** %9, align 8
  %326 = call i32 @iput(%struct.inode* %325)
  br label %327

327:                                              ; preds = %319, %314
  %328 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %329 = call i32 @brelse(%struct.buffer_head* %328)
  %330 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %331 = call i32 @brelse(%struct.buffer_head* %330)
  %332 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %19)
  %333 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %18)
  %334 = load i32, i32* %6, align 4
  %335 = call i32 @mlog_exit(i32 %334)
  %336 = load i32, i32* %6, align 4
  store i32 %336, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %337

337:                                              ; preds = %327, %83, %65
  %338 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %338)
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock_nested(%struct.inode*, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_files_on_disk(i32, i32, i64*, %struct.inode*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ocfs2_empty_dir(%struct.inode*) #1

declare dso_local i32 @ocfs2_remote_dentry_delete(%struct.dentry*) #1

declare dso_local i64 @inode_is_unlinkable(%struct.inode*) #1

declare dso_local i32 @ocfs2_prepare_orphan_dir(%struct.ocfs2_super*, %struct.inode**, i64, i8*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_unlink_credits(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_orphan_add(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.ocfs2_dinode*, i8*, %struct.ocfs2_dir_lookup_result*, %struct.inode*) #1

declare dso_local i32 @ocfs2_delete_entry(i32*, %struct.inode*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @ocfs2_set_links_count(%struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @mlog_exit(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
