; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_security_xattr_info = type { i32, i32, i32 }
%struct.inode = type { i64, i32, i32 }
%struct.dentry = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.inode*, i32)* }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.TYPE_9__ = type { i32 }

@__const.ocfs2_mknod.si = private unnamed_addr constant %struct.ocfs2_security_xattr_info { i32 1, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [31 x i8] c"(0x%p, 0x%p, %d, %lu, '%.*s')\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NO_QUOTA = common dso_local global i64 0, align 8
@EDQUOT = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@ocfs2_dentry_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Disk is full\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i64)* @ocfs2_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ocfs2_super*, align 8
  %14 = alloca %struct.ocfs2_dinode*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.ocfs2_alloc_context*, align 8
  %18 = alloca %struct.ocfs2_alloc_context*, align 8
  %19 = alloca %struct.ocfs2_alloc_context*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ocfs2_security_xattr_info, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ocfs2_dir_lookup_result, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store %struct.inode* null, %struct.inode** %16, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %17, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %18, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %26 = bitcast %struct.ocfs2_security_xattr_info* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.ocfs2_security_xattr_info* @__const.ocfs2_mknod.si to i8*), i64 12, i1 false)
  store i32 0, i32* %24, align 4
  %27 = bitcast %struct.ocfs2_dir_lookup_result* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 8, i1 false)
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dentry*, %struct.dentry** %7, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mlog_entry(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.inode* %28, %struct.dentry* %29, i32 %30, i64 %31, i32 %35, i32 %39)
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.ocfs2_super* @OCFS2_SB(i32 %43)
  store %struct.ocfs2_super* %44, %struct.ocfs2_super** %13, align 8
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call i32 @ocfs2_inode_lock(%struct.inode* %45, %struct.buffer_head** %11, i32 1)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %464

59:                                               ; preds = %4
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @S_ISDIR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %68 = call i64 @ocfs2_link_max(%struct.ocfs2_super* %67)
  %69 = icmp sge i64 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @EMLINK, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %395

73:                                               ; preds = %63, %59
  %74 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %77, %struct.ocfs2_dinode** %14, align 8
  %78 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %79 = call i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %395

84:                                               ; preds = %73
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = load %struct.dentry*, %struct.dentry** %7, align 8
  %87 = getelementptr inbounds %struct.dentry, %struct.dentry* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dentry*, %struct.dentry** %7, align 8
  %91 = getelementptr inbounds %struct.dentry, %struct.dentry* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ocfs2_check_dir_for_entry(%struct.inode* %85, i32 %89, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %395

98:                                               ; preds = %84
  %99 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %102 = load %struct.dentry*, %struct.dentry** %7, align 8
  %103 = getelementptr inbounds %struct.dentry, %struct.dentry* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.dentry*, %struct.dentry** %7, align 8
  %107 = getelementptr inbounds %struct.dentry, %struct.dentry* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super* %99, %struct.inode* %100, %struct.buffer_head* %101, i32 %105, i32 %109, %struct.ocfs2_dir_lookup_result* %25)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %98
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @mlog_errno(i32 %114)
  br label %395

116:                                              ; preds = %98
  %117 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %118 = call i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super* %117, %struct.ocfs2_alloc_context** %17)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @ENOSPC, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp ne i32 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @mlog_errno(i32 %127)
  br label %129

129:                                              ; preds = %126, %121
  br label %395

130:                                              ; preds = %116
  %131 = load %struct.inode*, %struct.inode** %6, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call %struct.inode* @ocfs2_get_init_inode(%struct.inode* %131, i32 %132)
  store %struct.inode* %133, %struct.inode** %16, align 8
  %134 = load %struct.inode*, %struct.inode** %16, align 8
  %135 = icmp ne %struct.inode* %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %130
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @mlog_errno(i32 %139)
  br label %395

141:                                              ; preds = %130
  %142 = load %struct.inode*, %struct.inode** %16, align 8
  %143 = load %struct.inode*, %struct.inode** %6, align 8
  %144 = call i32 @ocfs2_init_security_get(%struct.inode* %142, %struct.inode* %143, %struct.ocfs2_security_xattr_info* %23)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %141
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @EOPNOTSUPP, align 4
  %150 = sub nsw i32 0, %149
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %23, i32 0, i32 0
  store i32 0, i32* %153, align 4
  br label %157

154:                                              ; preds = %147
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @mlog_errno(i32 %155)
  br label %395

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %141
  %159 = load %struct.inode*, %struct.inode** %6, align 8
  %160 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @ocfs2_calc_xattr_init(%struct.inode* %159, %struct.buffer_head* %160, i32 %161, %struct.ocfs2_security_xattr_info* %23, i32* %20, i32* %22, i32* %21)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @mlog_errno(i32 %166)
  br label %395

168:                                              ; preds = %158
  %169 = load i32, i32* %8, align 4
  %170 = call i64 @S_ISDIR(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %168
  %173 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %174 = call i32 @ocfs2_supports_inline_data(%struct.ocfs2_super* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %186, label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %20, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %20, align 4
  %179 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %180 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %21, align 4
  br label %185

185:                                              ; preds = %182, %176
  br label %186

186:                                              ; preds = %185, %172, %168
  %187 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %188 = load i32, i32* %21, align 4
  %189 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %187, i32 %188, %struct.ocfs2_alloc_context** %19)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %186
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @ENOSPC, align 4
  %195 = sub nsw i32 0, %194
  %196 = icmp ne i32 %193, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @mlog_errno(i32 %198)
  br label %200

200:                                              ; preds = %197, %192
  br label %395

201:                                              ; preds = %186
  %202 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %203 = load i32, i32* %20, align 4
  %204 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %202, i32 %203, %struct.ocfs2_alloc_context** %18)
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %201
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @ENOSPC, align 4
  %210 = sub nsw i32 0, %209
  %211 = icmp ne i32 %208, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @mlog_errno(i32 %213)
  br label %215

215:                                              ; preds = %212, %207
  br label %395

216:                                              ; preds = %201
  %217 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %218 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %219 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %218, i32 0, i32 0
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = call i64 @S_ISDIR(i32 %221)
  %223 = load i32, i32* %22, align 4
  %224 = call i32 @ocfs2_mknod_credits(%struct.TYPE_8__* %220, i64 %222, i32 %223)
  %225 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %217, i32 %224)
  store i32* %225, i32** %12, align 8
  %226 = load i32*, i32** %12, align 8
  %227 = call i64 @IS_ERR(i32* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %216
  %230 = load i32*, i32** %12, align 8
  %231 = call i32 @PTR_ERR(i32* %230)
  store i32 %231, i32* %10, align 4
  store i32* null, i32** %12, align 8
  %232 = load i32, i32* %10, align 4
  %233 = call i32 @mlog_errno(i32 %232)
  br label %395

234:                                              ; preds = %216
  %235 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %236 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %235, i32 0, i32 0
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = call i64 @sb_any_quota_active(%struct.TYPE_8__* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %255

240:                                              ; preds = %234
  %241 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %242 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %241, i32 0, i32 0
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i64 (%struct.inode*, i32)*, i64 (%struct.inode*, i32)** %246, align 8
  %248 = load %struct.inode*, %struct.inode** %16, align 8
  %249 = call i64 %247(%struct.inode* %248, i32 1)
  %250 = load i64, i64* @NO_QUOTA, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %240
  %253 = load i32, i32* @EDQUOT, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %10, align 4
  br label %395

255:                                              ; preds = %240, %234
  store i32 1, i32* %24, align 4
  %256 = load %struct.inode*, %struct.inode** %6, align 8
  %257 = load %struct.dentry*, %struct.dentry** %7, align 8
  %258 = load %struct.inode*, %struct.inode** %16, align 8
  %259 = getelementptr inbounds %struct.inode, %struct.inode* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load i64, i64* %9, align 8
  %262 = load %struct.dentry*, %struct.dentry** %7, align 8
  %263 = getelementptr inbounds %struct.dentry, %struct.dentry* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.dentry*, %struct.dentry** %7, align 8
  %267 = getelementptr inbounds %struct.dentry, %struct.dentry* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @mlog_entry(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.inode* %256, %struct.dentry* %257, i32 %260, i64 %261, i32 %265, i32 %269)
  %271 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %272 = load %struct.inode*, %struct.inode** %6, align 8
  %273 = load %struct.inode*, %struct.inode** %16, align 8
  %274 = load i64, i64* %9, align 8
  %275 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %276 = load i32*, i32** %12, align 8
  %277 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %278 = call i32 @ocfs2_mknod_locked(%struct.ocfs2_super* %271, %struct.inode* %272, %struct.inode* %273, i64 %274, %struct.buffer_head** %15, %struct.buffer_head* %275, i32* %276, %struct.ocfs2_alloc_context* %277)
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* %10, align 4
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %255
  %282 = load i32, i32* %10, align 4
  %283 = call i32 @mlog_errno(i32 %282)
  br label %395

284:                                              ; preds = %255
  %285 = load i32, i32* %8, align 4
  %286 = call i64 @S_ISDIR(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %328

288:                                              ; preds = %284
  %289 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %290 = load i32*, i32** %12, align 8
  %291 = load %struct.inode*, %struct.inode** %6, align 8
  %292 = load %struct.inode*, %struct.inode** %16, align 8
  %293 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %294 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %295 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %296 = call i32 @ocfs2_fill_new_dir(%struct.ocfs2_super* %289, i32* %290, %struct.inode* %291, %struct.inode* %292, %struct.buffer_head* %293, %struct.ocfs2_alloc_context* %294, %struct.ocfs2_alloc_context* %295)
  store i32 %296, i32* %10, align 4
  %297 = load i32, i32* %10, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %288
  %300 = load i32, i32* %10, align 4
  %301 = call i32 @mlog_errno(i32 %300)
  br label %395

302:                                              ; preds = %288
  %303 = load i32*, i32** %12, align 8
  %304 = load %struct.inode*, %struct.inode** %6, align 8
  %305 = call i32 @INODE_CACHE(%struct.inode* %304)
  %306 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %307 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %308 = call i32 @ocfs2_journal_access_di(i32* %303, i32 %305, %struct.buffer_head* %306, i32 %307)
  store i32 %308, i32* %10, align 4
  %309 = load i32, i32* %10, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %302
  %312 = load i32, i32* %10, align 4
  %313 = call i32 @mlog_errno(i32 %312)
  br label %395

314:                                              ; preds = %302
  %315 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %316 = call i32 @ocfs2_add_links_count(%struct.ocfs2_dinode* %315, i32 1)
  %317 = load i32*, i32** %12, align 8
  %318 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %319 = call i32 @ocfs2_journal_dirty(i32* %317, %struct.buffer_head* %318)
  store i32 %319, i32* %10, align 4
  %320 = load i32, i32* %10, align 4
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %314
  %323 = load i32, i32* %10, align 4
  %324 = call i32 @mlog_errno(i32 %323)
  br label %395

325:                                              ; preds = %314
  %326 = load %struct.inode*, %struct.inode** %6, align 8
  %327 = call i32 @inc_nlink(%struct.inode* %326)
  br label %328

328:                                              ; preds = %325, %284
  %329 = load i32*, i32** %12, align 8
  %330 = load %struct.inode*, %struct.inode** %16, align 8
  %331 = load %struct.inode*, %struct.inode** %6, align 8
  %332 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %333 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %334 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %335 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %336 = call i32 @ocfs2_init_acl(i32* %329, %struct.inode* %330, %struct.inode* %331, %struct.buffer_head* %332, %struct.buffer_head* %333, %struct.ocfs2_alloc_context* %334, %struct.ocfs2_alloc_context* %335)
  store i32 %336, i32* %10, align 4
  %337 = load i32, i32* %10, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %328
  %340 = load i32, i32* %10, align 4
  %341 = call i32 @mlog_errno(i32 %340)
  br label %395

342:                                              ; preds = %328
  %343 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %23, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %359

346:                                              ; preds = %342
  %347 = load i32*, i32** %12, align 8
  %348 = load %struct.inode*, %struct.inode** %16, align 8
  %349 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %350 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %351 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %352 = call i32 @ocfs2_init_security_set(i32* %347, %struct.inode* %348, %struct.buffer_head* %349, %struct.ocfs2_security_xattr_info* %23, %struct.ocfs2_alloc_context* %350, %struct.ocfs2_alloc_context* %351)
  store i32 %352, i32* %10, align 4
  %353 = load i32, i32* %10, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %346
  %356 = load i32, i32* %10, align 4
  %357 = call i32 @mlog_errno(i32 %356)
  br label %395

358:                                              ; preds = %346
  br label %359

359:                                              ; preds = %358, %342
  %360 = load i32*, i32** %12, align 8
  %361 = load %struct.dentry*, %struct.dentry** %7, align 8
  %362 = load %struct.inode*, %struct.inode** %16, align 8
  %363 = load %struct.inode*, %struct.inode** %16, align 8
  %364 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %363)
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %368 = call i32 @ocfs2_add_entry(i32* %360, %struct.dentry* %361, %struct.inode* %362, i32 %366, %struct.buffer_head* %367, %struct.ocfs2_dir_lookup_result* %25)
  store i32 %368, i32* %10, align 4
  %369 = load i32, i32* %10, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %359
  %372 = load i32, i32* %10, align 4
  %373 = call i32 @mlog_errno(i32 %372)
  br label %395

374:                                              ; preds = %359
  %375 = load %struct.dentry*, %struct.dentry** %7, align 8
  %376 = load %struct.inode*, %struct.inode** %16, align 8
  %377 = load %struct.inode*, %struct.inode** %6, align 8
  %378 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %377)
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @ocfs2_dentry_attach_lock(%struct.dentry* %375, %struct.inode* %376, i32 %380)
  store i32 %381, i32* %10, align 4
  %382 = load i32, i32* %10, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %374
  %385 = load i32, i32* %10, align 4
  %386 = call i32 @mlog_errno(i32 %385)
  br label %395

387:                                              ; preds = %374
  %388 = load %struct.inode*, %struct.inode** %16, align 8
  %389 = call i32 @insert_inode_hash(%struct.inode* %388)
  %390 = load %struct.dentry*, %struct.dentry** %7, align 8
  %391 = getelementptr inbounds %struct.dentry, %struct.dentry* %390, i32 0, i32 0
  store i32* @ocfs2_dentry_ops, i32** %391, align 8
  %392 = load %struct.dentry*, %struct.dentry** %7, align 8
  %393 = load %struct.inode*, %struct.inode** %16, align 8
  %394 = call i32 @d_instantiate(%struct.dentry* %392, %struct.inode* %393)
  store i32 0, i32* %10, align 4
  br label %395

395:                                              ; preds = %387, %384, %371, %355, %339, %322, %311, %299, %281, %252, %229, %215, %200, %165, %154, %136, %129, %113, %97, %81, %70
  %396 = load i32, i32* %10, align 4
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %395
  %399 = load i32, i32* %24, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = load %struct.inode*, %struct.inode** %16, align 8
  %403 = call i32 @vfs_dq_free_inode(%struct.inode* %402)
  br label %404

404:                                              ; preds = %401, %398, %395
  %405 = load i32*, i32** %12, align 8
  %406 = icmp ne i32* %405, null
  br i1 %406, label %407, label %411

407:                                              ; preds = %404
  %408 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %409 = load i32*, i32** %12, align 8
  %410 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %408, i32* %409)
  br label %411

411:                                              ; preds = %407, %404
  %412 = load %struct.inode*, %struct.inode** %6, align 8
  %413 = call i32 @ocfs2_inode_unlock(%struct.inode* %412, i32 1)
  %414 = load i32, i32* %10, align 4
  %415 = load i32, i32* @ENOSPC, align 4
  %416 = sub nsw i32 0, %415
  %417 = icmp eq i32 %414, %416
  br i1 %417, label %418, label %420

418:                                              ; preds = %411
  %419 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %420

420:                                              ; preds = %418, %411
  %421 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %422 = call i32 @brelse(%struct.buffer_head* %421)
  %423 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %424 = call i32 @brelse(%struct.buffer_head* %423)
  %425 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %23, i32 0, i32 2
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @kfree(i32 %426)
  %428 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %23, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @kfree(i32 %429)
  %431 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %25)
  %432 = load i32, i32* %10, align 4
  %433 = icmp slt i32 %432, 0
  br i1 %433, label %434, label %442

434:                                              ; preds = %420
  %435 = load %struct.inode*, %struct.inode** %16, align 8
  %436 = icmp ne %struct.inode* %435, null
  br i1 %436, label %437, label %442

437:                                              ; preds = %434
  %438 = load %struct.inode*, %struct.inode** %16, align 8
  %439 = call i32 @clear_nlink(%struct.inode* %438)
  %440 = load %struct.inode*, %struct.inode** %16, align 8
  %441 = call i32 @iput(%struct.inode* %440)
  br label %442

442:                                              ; preds = %437, %434, %420
  %443 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %444 = icmp ne %struct.ocfs2_alloc_context* %443, null
  br i1 %444, label %445, label %448

445:                                              ; preds = %442
  %446 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %447 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %446)
  br label %448

448:                                              ; preds = %445, %442
  %449 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %450 = icmp ne %struct.ocfs2_alloc_context* %449, null
  br i1 %450, label %451, label %454

451:                                              ; preds = %448
  %452 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %453 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %452)
  br label %454

454:                                              ; preds = %451, %448
  %455 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %456 = icmp ne %struct.ocfs2_alloc_context* %455, null
  br i1 %456, label %457, label %460

457:                                              ; preds = %454
  %458 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %459 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %458)
  br label %460

460:                                              ; preds = %457, %454
  %461 = load i32, i32* %10, align 4
  %462 = call i32 @mlog_exit(i32 %461)
  %463 = load i32, i32* %10, align 4
  store i32 %463, i32* %5, align 4
  br label %464

464:                                              ; preds = %460, %57
  %465 = load i32, i32* %5, align 4
  ret i32 %465
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, %struct.dentry*, i32, i64, i32, i32) #2

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #2

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #2

declare dso_local i32 @mlog_errno(i32) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @ocfs2_link_max(%struct.ocfs2_super*) #2

declare dso_local i32 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #2

declare dso_local i32 @ocfs2_check_dir_for_entry(%struct.inode*, i32, i32) #2

declare dso_local i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, i32, %struct.ocfs2_dir_lookup_result*) #2

declare dso_local i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super*, %struct.ocfs2_alloc_context**) #2

declare dso_local %struct.inode* @ocfs2_get_init_inode(%struct.inode*, i32) #2

declare dso_local i32 @ocfs2_init_security_get(%struct.inode*, %struct.inode*, %struct.ocfs2_security_xattr_info*) #2

declare dso_local i32 @ocfs2_calc_xattr_init(%struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_security_xattr_info*, i32*, i32*, i32*) #2

declare dso_local i32 @ocfs2_supports_inline_data(%struct.ocfs2_super*) #2

declare dso_local i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super*) #2

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #2

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #2

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #2

declare dso_local i32 @ocfs2_mknod_credits(%struct.TYPE_8__*, i64, i32) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i64 @sb_any_quota_active(%struct.TYPE_8__*) #2

declare dso_local i32 @ocfs2_mknod_locked(%struct.ocfs2_super*, %struct.inode*, %struct.inode*, i64, %struct.buffer_head**, %struct.buffer_head*, i32*, %struct.ocfs2_alloc_context*) #2

declare dso_local i32 @ocfs2_fill_new_dir(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*) #2

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #2

declare dso_local i32 @INODE_CACHE(%struct.inode*) #2

declare dso_local i32 @ocfs2_add_links_count(%struct.ocfs2_dinode*, i32) #2

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #2

declare dso_local i32 @inc_nlink(%struct.inode*) #2

declare dso_local i32 @ocfs2_init_acl(i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*) #2

declare dso_local i32 @ocfs2_init_security_set(i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_security_xattr_info*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*) #2

declare dso_local i32 @ocfs2_add_entry(i32*, %struct.dentry*, %struct.inode*, i32, %struct.buffer_head*, %struct.ocfs2_dir_lookup_result*) #2

declare dso_local %struct.TYPE_9__* @OCFS2_I(%struct.inode*) #2

declare dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry*, %struct.inode*, i32) #2

declare dso_local i32 @insert_inode_hash(%struct.inode*) #2

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @vfs_dq_free_inode(%struct.inode*) #2

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #2

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #2

declare dso_local i32 @mlog(i32, i8*) #2

declare dso_local i32 @brelse(%struct.buffer_head*) #2

declare dso_local i32 @kfree(i32) #2

declare dso_local i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result*) #2

declare dso_local i32 @clear_nlink(%struct.inode*) #2

declare dso_local i32 @iput(%struct.inode*) #2

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #2

declare dso_local i32 @mlog_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
