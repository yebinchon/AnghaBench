; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_security_xattr_info = type { i32, i32, i32 }
%struct.inode = type { i8*, i64, i32*, i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.ocfs2_super = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (%struct.inode*, i32)* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.TYPE_11__ = type { i32 }

@__const.ocfs2_symlink.si = private unnamed_addr constant %struct.ocfs2_security_xattr_info { i32 1, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [42 x i8] c"(0x%p, 0x%p, symname='%s' actual='%.*s')\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NO_QUOTA = common dso_local global i64 0, align 8
@EDQUOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"(0x%p, 0x%p, %d, '%.*s')\0A\00", align 1
@ocfs2_symlink_inode_operations = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to extend file to %llu\0A\00", align 1
@ocfs2_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@ocfs2_dentry_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ocfs2_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_super*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.ocfs2_dinode*, align 8
  %18 = alloca %struct.ocfs2_dinode*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.ocfs2_alloc_context*, align 8
  %21 = alloca %struct.ocfs2_alloc_context*, align 8
  %22 = alloca %struct.ocfs2_alloc_context*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ocfs2_security_xattr_info, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.ocfs2_dir_lookup_result, align 8
  %29 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ocfs2_super* null, %struct.ocfs2_super** %12, align 8
  store %struct.inode* null, %struct.inode** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %17, align 8
  store i32* null, i32** %19, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %20, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %21, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %30 = bitcast %struct.ocfs2_security_xattr_info* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast (%struct.ocfs2_security_xattr_info* @__const.ocfs2_symlink.si to i8*), i64 12, i1 false)
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %31 = bitcast %struct.ocfs2_dir_lookup_result* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 8, i1 false)
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mlog_entry(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.inode* %32, %struct.dentry* %33, i8* %34, i32 %38, i32 %42)
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 4
  %46 = load %struct.super_block*, %struct.super_block** %45, align 8
  store %struct.super_block* %46, %struct.super_block** %14, align 8
  %47 = load %struct.super_block*, %struct.super_block** %14, align 8
  %48 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %47)
  store %struct.ocfs2_super* %48, %struct.ocfs2_super** %12, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load %struct.super_block*, %struct.super_block** %14, align 8
  %53 = call i32 @ocfs2_calc_symlink_credits(%struct.super_block* %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = call i32 @ocfs2_inode_lock(%struct.inode* %54, %struct.buffer_head** %16, i32 1)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %3
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %486

68:                                               ; preds = %3
  %69 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %72, %struct.ocfs2_dinode** %18, align 8
  %73 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %74 = call i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %411

79:                                               ; preds = %68
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = load %struct.dentry*, %struct.dentry** %6, align 8
  %82 = getelementptr inbounds %struct.dentry, %struct.dentry* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ocfs2_check_dir_for_entry(%struct.inode* %80, i32 %84, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %411

93:                                               ; preds = %79
  %94 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %97 = load %struct.dentry*, %struct.dentry** %6, align 8
  %98 = getelementptr inbounds %struct.dentry, %struct.dentry* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dentry*, %struct.dentry** %6, align 8
  %102 = getelementptr inbounds %struct.dentry, %struct.dentry* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super* %94, %struct.inode* %95, %struct.buffer_head* %96, i32 %100, i32 %104, %struct.ocfs2_dir_lookup_result* %28)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @mlog_errno(i32 %109)
  br label %411

111:                                              ; preds = %93
  %112 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %113 = call i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super* %112, %struct.ocfs2_alloc_context** %20)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @ENOSPC, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @mlog_errno(i32 %122)
  br label %124

124:                                              ; preds = %121, %116
  br label %411

125:                                              ; preds = %111
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = load i32, i32* @S_IFLNK, align 4
  %128 = load i32, i32* @S_IRWXUGO, align 4
  %129 = or i32 %127, %128
  %130 = call %struct.inode* @ocfs2_get_init_inode(%struct.inode* %126, i32 %129)
  store %struct.inode* %130, %struct.inode** %13, align 8
  %131 = load %struct.inode*, %struct.inode** %13, align 8
  %132 = icmp ne %struct.inode* %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %125
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @mlog_errno(i32 %136)
  br label %411

138:                                              ; preds = %125
  %139 = load %struct.inode*, %struct.inode** %13, align 8
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = call i32 @ocfs2_init_security_get(%struct.inode* %139, %struct.inode* %140, %struct.ocfs2_security_xattr_info* %25)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %138
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @EOPNOTSUPP, align 4
  %147 = sub nsw i32 0, %146
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %25, i32 0, i32 0
  store i32 0, i32* %150, align 4
  br label %154

151:                                              ; preds = %144
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @mlog_errno(i32 %152)
  br label %411

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154, %138
  %156 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %25, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = call i32 @ocfs2_calc_security_init(%struct.inode* %160, %struct.ocfs2_security_xattr_info* %25, i32* %23, i32* %24, %struct.ocfs2_alloc_context** %22)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @mlog_errno(i32 %165)
  br label %411

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167, %155
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.super_block*, %struct.super_block** %14, align 8
  %171 = call i32 @ocfs2_fast_symlink_chars(%struct.super_block* %170)
  %172 = icmp sgt i32 %169, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i32, i32* %23, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %23, align 4
  br label %176

176:                                              ; preds = %173, %168
  %177 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %178 = load i32, i32* %23, align 4
  %179 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %177, i32 %178, %struct.ocfs2_alloc_context** %21)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %176
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @ENOSPC, align 4
  %185 = sub nsw i32 0, %184
  %186 = icmp ne i32 %183, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @mlog_errno(i32 %188)
  br label %190

190:                                              ; preds = %187, %182
  br label %411

191:                                              ; preds = %176
  %192 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %24, align 4
  %195 = add nsw i32 %193, %194
  %196 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %192, i32 %195)
  store i32* %196, i32** %19, align 8
  %197 = load i32*, i32** %19, align 8
  %198 = call i64 @IS_ERR(i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %191
  %201 = load i32*, i32** %19, align 8
  %202 = call i32 @PTR_ERR(i32* %201)
  store i32 %202, i32* %8, align 4
  store i32* null, i32** %19, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @mlog_errno(i32 %203)
  br label %411

205:                                              ; preds = %191
  %206 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %207 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %206, i32 0, i32 0
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = call i64 @sb_any_quota_active(%struct.TYPE_10__* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %205
  %212 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %213 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i64 (%struct.inode*, i32)*, i64 (%struct.inode*, i32)** %217, align 8
  %219 = load %struct.inode*, %struct.inode** %13, align 8
  %220 = call i64 %218(%struct.inode* %219, i32 1)
  %221 = load i64, i64* @NO_QUOTA, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %211
  %224 = load i32, i32* @EDQUOT, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %8, align 4
  br label %411

226:                                              ; preds = %211, %205
  store i32 1, i32* %27, align 4
  %227 = load %struct.inode*, %struct.inode** %5, align 8
  %228 = load %struct.dentry*, %struct.dentry** %6, align 8
  %229 = load %struct.inode*, %struct.inode** %13, align 8
  %230 = getelementptr inbounds %struct.inode, %struct.inode* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.dentry*, %struct.dentry** %6, align 8
  %233 = getelementptr inbounds %struct.dentry, %struct.dentry* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.dentry*, %struct.dentry** %6, align 8
  %237 = getelementptr inbounds %struct.dentry, %struct.dentry* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @mlog_entry(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %227, %struct.dentry* %228, i8* %231, i32 %235, i32 %239)
  %241 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %242 = load %struct.inode*, %struct.inode** %5, align 8
  %243 = load %struct.inode*, %struct.inode** %13, align 8
  %244 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %245 = load i32*, i32** %19, align 8
  %246 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %247 = call i32 @ocfs2_mknod_locked(%struct.ocfs2_super* %241, %struct.inode* %242, %struct.inode* %243, i32 0, %struct.buffer_head** %15, %struct.buffer_head* %244, i32* %245, %struct.ocfs2_alloc_context* %246)
  store i32 %247, i32* %8, align 4
  %248 = load i32, i32* %8, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %226
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @mlog_errno(i32 %251)
  br label %411

253:                                              ; preds = %226
  %254 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %255 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = inttoptr i64 %256 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %257, %struct.ocfs2_dinode** %17, align 8
  %258 = load %struct.inode*, %struct.inode** %13, align 8
  %259 = getelementptr inbounds %struct.inode, %struct.inode* %258, i32 0, i32 3
  store i64 0, i64* %259, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sub nsw i32 %260, 1
  store i32 %261, i32* %11, align 4
  %262 = load i32, i32* %9, align 4
  %263 = load %struct.super_block*, %struct.super_block** %14, align 8
  %264 = call i32 @ocfs2_fast_symlink_chars(%struct.super_block* %263)
  %265 = icmp sgt i32 %262, %264
  br i1 %265, label %266, label %316

266:                                              ; preds = %253
  store i32 0, i32* %29, align 4
  %267 = load %struct.inode*, %struct.inode** %13, align 8
  %268 = getelementptr inbounds %struct.inode, %struct.inode* %267, i32 0, i32 2
  store i32* @ocfs2_symlink_inode_operations, i32** %268, align 8
  %269 = load %struct.inode*, %struct.inode** %13, align 8
  %270 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %271 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %270, i32 0, i32 0
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = call i32 @ocfs2_clusters_to_bytes(%struct.TYPE_10__* %272, i32 1)
  %274 = call i64 @vfs_dq_alloc_space_nodirty(%struct.inode* %269, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %266
  %277 = load i32, i32* @EDQUOT, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %8, align 4
  br label %411

279:                                              ; preds = %266
  store i32 1, i32* %26, align 4
  %280 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %281 = load %struct.inode*, %struct.inode** %13, align 8
  %282 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %283 = load i32*, i32** %19, align 8
  %284 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %285 = call i32 @ocfs2_add_inode_data(%struct.ocfs2_super* %280, %struct.inode* %281, i32* %29, i32 1, i32 0, %struct.buffer_head* %282, i32* %283, %struct.ocfs2_alloc_context* %284, i32* null, i32* null)
  store i32 %285, i32* %8, align 4
  %286 = load i32, i32* %8, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %308

288:                                              ; preds = %279
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* @ENOSPC, align 4
  %291 = sub nsw i32 0, %290
  %292 = icmp ne i32 %289, %291
  br i1 %292, label %293, label %307

293:                                              ; preds = %288
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* @EINTR, align 4
  %296 = sub nsw i32 0, %295
  %297 = icmp ne i32 %294, %296
  br i1 %297, label %298, label %307

298:                                              ; preds = %293
  %299 = load i32, i32* @ML_ERROR, align 4
  %300 = load i32, i32* %11, align 4
  %301 = sext i32 %300 to i64
  %302 = call i32 @mlog(i32 %299, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %301)
  %303 = load i32, i32* %8, align 4
  %304 = call i32 @mlog_errno(i32 %303)
  %305 = load i32, i32* @ENOSPC, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %8, align 4
  br label %307

307:                                              ; preds = %298, %293, %288
  br label %411

308:                                              ; preds = %279
  %309 = load %struct.inode*, %struct.inode** %13, align 8
  %310 = load i32, i32* %11, align 4
  %311 = call i32 @i_size_write(%struct.inode* %309, i32 %310)
  %312 = load %struct.inode*, %struct.inode** %13, align 8
  %313 = call i64 @ocfs2_inode_sector_count(%struct.inode* %312)
  %314 = load %struct.inode*, %struct.inode** %13, align 8
  %315 = getelementptr inbounds %struct.inode, %struct.inode* %314, i32 0, i32 1
  store i64 %313, i64* %315, align 8
  br label %332

316:                                              ; preds = %253
  %317 = load %struct.inode*, %struct.inode** %13, align 8
  %318 = getelementptr inbounds %struct.inode, %struct.inode* %317, i32 0, i32 2
  store i32* @ocfs2_fast_symlink_inode_operations, i32** %318, align 8
  %319 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %320 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = inttoptr i64 %322 to i8*
  %324 = load i8*, i8** %7, align 8
  %325 = load i32, i32* %9, align 4
  %326 = call i32 @memcpy(i8* %323, i8* %324, i32 %325)
  %327 = load %struct.inode*, %struct.inode** %13, align 8
  %328 = load i32, i32* %11, align 4
  %329 = call i32 @i_size_write(%struct.inode* %327, i32 %328)
  %330 = load %struct.inode*, %struct.inode** %13, align 8
  %331 = getelementptr inbounds %struct.inode, %struct.inode* %330, i32 0, i32 1
  store i64 0, i64* %331, align 8
  br label %332

332:                                              ; preds = %316, %308
  %333 = load i32*, i32** %19, align 8
  %334 = load %struct.inode*, %struct.inode** %13, align 8
  %335 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %336 = call i32 @ocfs2_mark_inode_dirty(i32* %333, %struct.inode* %334, %struct.buffer_head* %335)
  store i32 %336, i32* %8, align 4
  %337 = load i32, i32* %8, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %332
  %340 = load i32, i32* %8, align 4
  %341 = call i32 @mlog_errno(i32 %340)
  br label %411

342:                                              ; preds = %332
  %343 = load %struct.inode*, %struct.inode** %13, align 8
  %344 = call i32 @ocfs2_inode_is_fast_symlink(%struct.inode* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %358, label %346

346:                                              ; preds = %342
  %347 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %348 = load i32*, i32** %19, align 8
  %349 = load %struct.inode*, %struct.inode** %13, align 8
  %350 = load i8*, i8** %7, align 8
  %351 = call i32 @ocfs2_create_symlink_data(%struct.ocfs2_super* %347, i32* %348, %struct.inode* %349, i8* %350)
  store i32 %351, i32* %8, align 4
  %352 = load i32, i32* %8, align 4
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %346
  %355 = load i32, i32* %8, align 4
  %356 = call i32 @mlog_errno(i32 %355)
  br label %411

357:                                              ; preds = %346
  br label %358

358:                                              ; preds = %357, %342
  %359 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %25, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %375

362:                                              ; preds = %358
  %363 = load i32*, i32** %19, align 8
  %364 = load %struct.inode*, %struct.inode** %13, align 8
  %365 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %366 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %367 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %368 = call i32 @ocfs2_init_security_set(i32* %363, %struct.inode* %364, %struct.buffer_head* %365, %struct.ocfs2_security_xattr_info* %25, %struct.ocfs2_alloc_context* %366, %struct.ocfs2_alloc_context* %367)
  store i32 %368, i32* %8, align 4
  %369 = load i32, i32* %8, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %362
  %372 = load i32, i32* %8, align 4
  %373 = call i32 @mlog_errno(i32 %372)
  br label %411

374:                                              ; preds = %362
  br label %375

375:                                              ; preds = %374, %358
  %376 = load i32*, i32** %19, align 8
  %377 = load %struct.dentry*, %struct.dentry** %6, align 8
  %378 = load %struct.inode*, %struct.inode** %13, align 8
  %379 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %380 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = call i32 @le64_to_cpu(i32 %381)
  %383 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %384 = call i32 @ocfs2_add_entry(i32* %376, %struct.dentry* %377, %struct.inode* %378, i32 %382, %struct.buffer_head* %383, %struct.ocfs2_dir_lookup_result* %28)
  store i32 %384, i32* %8, align 4
  %385 = load i32, i32* %8, align 4
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %375
  %388 = load i32, i32* %8, align 4
  %389 = call i32 @mlog_errno(i32 %388)
  br label %411

390:                                              ; preds = %375
  %391 = load %struct.dentry*, %struct.dentry** %6, align 8
  %392 = load %struct.inode*, %struct.inode** %13, align 8
  %393 = load %struct.inode*, %struct.inode** %5, align 8
  %394 = call %struct.TYPE_11__* @OCFS2_I(%struct.inode* %393)
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @ocfs2_dentry_attach_lock(%struct.dentry* %391, %struct.inode* %392, i32 %396)
  store i32 %397, i32* %8, align 4
  %398 = load i32, i32* %8, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %390
  %401 = load i32, i32* %8, align 4
  %402 = call i32 @mlog_errno(i32 %401)
  br label %411

403:                                              ; preds = %390
  %404 = load %struct.inode*, %struct.inode** %13, align 8
  %405 = call i32 @insert_inode_hash(%struct.inode* %404)
  %406 = load %struct.dentry*, %struct.dentry** %6, align 8
  %407 = getelementptr inbounds %struct.dentry, %struct.dentry* %406, i32 0, i32 0
  store i32* @ocfs2_dentry_ops, i32** %407, align 8
  %408 = load %struct.dentry*, %struct.dentry** %6, align 8
  %409 = load %struct.inode*, %struct.inode** %13, align 8
  %410 = call i32 @d_instantiate(%struct.dentry* %408, %struct.inode* %409)
  br label %411

411:                                              ; preds = %403, %400, %387, %371, %354, %339, %307, %276, %250, %223, %200, %190, %164, %151, %133, %124, %108, %92, %76
  %412 = load i32, i32* %8, align 4
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %424

414:                                              ; preds = %411
  %415 = load i32, i32* %26, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %424

417:                                              ; preds = %414
  %418 = load %struct.inode*, %struct.inode** %13, align 8
  %419 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %420 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %419, i32 0, i32 0
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %420, align 8
  %422 = call i32 @ocfs2_clusters_to_bytes(%struct.TYPE_10__* %421, i32 1)
  %423 = call i32 @vfs_dq_free_space_nodirty(%struct.inode* %418, i32 %422)
  br label %424

424:                                              ; preds = %417, %414, %411
  %425 = load i32, i32* %8, align 4
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %427, label %433

427:                                              ; preds = %424
  %428 = load i32, i32* %27, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %427
  %431 = load %struct.inode*, %struct.inode** %13, align 8
  %432 = call i32 @vfs_dq_free_inode(%struct.inode* %431)
  br label %433

433:                                              ; preds = %430, %427, %424
  %434 = load i32*, i32** %19, align 8
  %435 = icmp ne i32* %434, null
  br i1 %435, label %436, label %440

436:                                              ; preds = %433
  %437 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %438 = load i32*, i32** %19, align 8
  %439 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %437, i32* %438)
  br label %440

440:                                              ; preds = %436, %433
  %441 = load %struct.inode*, %struct.inode** %5, align 8
  %442 = call i32 @ocfs2_inode_unlock(%struct.inode* %441, i32 1)
  %443 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %444 = call i32 @brelse(%struct.buffer_head* %443)
  %445 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %446 = call i32 @brelse(%struct.buffer_head* %445)
  %447 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %25, i32 0, i32 2
  %448 = load i32, i32* %447, align 4
  %449 = call i32 @kfree(i32 %448)
  %450 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %25, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = call i32 @kfree(i32 %451)
  %453 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %28)
  %454 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %455 = icmp ne %struct.ocfs2_alloc_context* %454, null
  br i1 %455, label %456, label %459

456:                                              ; preds = %440
  %457 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %458 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %457)
  br label %459

459:                                              ; preds = %456, %440
  %460 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %461 = icmp ne %struct.ocfs2_alloc_context* %460, null
  br i1 %461, label %462, label %465

462:                                              ; preds = %459
  %463 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %464 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %463)
  br label %465

465:                                              ; preds = %462, %459
  %466 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %467 = icmp ne %struct.ocfs2_alloc_context* %466, null
  br i1 %467, label %468, label %471

468:                                              ; preds = %465
  %469 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %470 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %469)
  br label %471

471:                                              ; preds = %468, %465
  %472 = load i32, i32* %8, align 4
  %473 = icmp slt i32 %472, 0
  br i1 %473, label %474, label %482

474:                                              ; preds = %471
  %475 = load %struct.inode*, %struct.inode** %13, align 8
  %476 = icmp ne %struct.inode* %475, null
  br i1 %476, label %477, label %482

477:                                              ; preds = %474
  %478 = load %struct.inode*, %struct.inode** %13, align 8
  %479 = call i32 @clear_nlink(%struct.inode* %478)
  %480 = load %struct.inode*, %struct.inode** %13, align 8
  %481 = call i32 @iput(%struct.inode* %480)
  br label %482

482:                                              ; preds = %477, %474, %471
  %483 = load i32, i32* %8, align 4
  %484 = call i32 @mlog_exit(i32 %483)
  %485 = load i32, i32* %8, align 4
  store i32 %485, i32* %4, align 4
  br label %486

486:                                              ; preds = %482, %66
  %487 = load i32, i32* %4, align 4
  ret i32 %487
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, %struct.dentry*, i8*, i32, i32) #2

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ocfs2_calc_symlink_credits(%struct.super_block*) #2

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #2

declare dso_local i32 @mlog_errno(i32) #2

declare dso_local i32 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #2

declare dso_local i32 @ocfs2_check_dir_for_entry(%struct.inode*, i32, i32) #2

declare dso_local i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, i32, %struct.ocfs2_dir_lookup_result*) #2

declare dso_local i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super*, %struct.ocfs2_alloc_context**) #2

declare dso_local %struct.inode* @ocfs2_get_init_inode(%struct.inode*, i32) #2

declare dso_local i32 @ocfs2_init_security_get(%struct.inode*, %struct.inode*, %struct.ocfs2_security_xattr_info*) #2

declare dso_local i32 @ocfs2_calc_security_init(%struct.inode*, %struct.ocfs2_security_xattr_info*, i32*, i32*, %struct.ocfs2_alloc_context**) #2

declare dso_local i32 @ocfs2_fast_symlink_chars(%struct.super_block*) #2

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #2

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i64 @sb_any_quota_active(%struct.TYPE_10__*) #2

declare dso_local i32 @ocfs2_mknod_locked(%struct.ocfs2_super*, %struct.inode*, %struct.inode*, i32, %struct.buffer_head**, %struct.buffer_head*, i32*, %struct.ocfs2_alloc_context*) #2

declare dso_local i64 @vfs_dq_alloc_space_nodirty(%struct.inode*, i32) #2

declare dso_local i32 @ocfs2_clusters_to_bytes(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @ocfs2_add_inode_data(%struct.ocfs2_super*, %struct.inode*, i32*, i32, i32, %struct.buffer_head*, i32*, %struct.ocfs2_alloc_context*, i32*, i32*) #2

declare dso_local i32 @mlog(i32, i8*, i64) #2

declare dso_local i32 @i_size_write(%struct.inode*, i32) #2

declare dso_local i64 @ocfs2_inode_sector_count(%struct.inode*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #2

declare dso_local i32 @ocfs2_inode_is_fast_symlink(%struct.inode*) #2

declare dso_local i32 @ocfs2_create_symlink_data(%struct.ocfs2_super*, i32*, %struct.inode*, i8*) #2

declare dso_local i32 @ocfs2_init_security_set(i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_security_xattr_info*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*) #2

declare dso_local i32 @ocfs2_add_entry(i32*, %struct.dentry*, %struct.inode*, i32, %struct.buffer_head*, %struct.ocfs2_dir_lookup_result*) #2

declare dso_local i32 @le64_to_cpu(i32) #2

declare dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry*, %struct.inode*, i32) #2

declare dso_local %struct.TYPE_11__* @OCFS2_I(%struct.inode*) #2

declare dso_local i32 @insert_inode_hash(%struct.inode*) #2

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @vfs_dq_free_space_nodirty(%struct.inode*, i32) #2

declare dso_local i32 @vfs_dq_free_inode(%struct.inode*) #2

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #2

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #2

declare dso_local i32 @brelse(%struct.buffer_head*) #2

declare dso_local i32 @kfree(i32) #2

declare dso_local i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result*) #2

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #2

declare dso_local i32 @clear_nlink(%struct.inode*) #2

declare dso_local i32 @iput(%struct.inode*) #2

declare dso_local i32 @mlog_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
