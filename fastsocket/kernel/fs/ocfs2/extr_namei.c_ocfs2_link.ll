; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.inode = type { i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.dentry = type { i32*, %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"(inode=%lu, old='%.*s' new='%.*s')\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@OI_LS_PARENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ocfs2_dentry_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @ocfs2_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_dinode*, align 8
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_dir_lookup_result, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 2
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %13, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ocfs2_super* @OCFS2_SB(i32 %21)
  store %struct.ocfs2_super* %22, %struct.ocfs2_super** %14, align 8
  %23 = bitcast %struct.ocfs2_dir_lookup_result* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 8, i1 false)
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dentry*, %struct.dentry** %7, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlog_entry(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, i32 %34, i32 %38, i32 %42)
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @S_ISDIR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %258

52:                                               ; preds = %3
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load i32, i32* @OI_LS_PARENT, align 4
  %55 = call i32 @ocfs2_inode_lock_nested(%struct.inode* %53, %struct.buffer_head** %12, i32 1, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %258

68:                                               ; preds = %52
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  br label %247

76:                                               ; preds = %68
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = load %struct.dentry*, %struct.dentry** %7, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dentry*, %struct.dentry** %7, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ocfs2_check_dir_for_entry(%struct.inode* %77, i32 %81, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %247

90:                                               ; preds = %76
  %91 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %94 = load %struct.dentry*, %struct.dentry** %7, align 8
  %95 = getelementptr inbounds %struct.dentry, %struct.dentry* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dentry*, %struct.dentry** %7, align 8
  %99 = getelementptr inbounds %struct.dentry, %struct.dentry* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super* %91, %struct.inode* %92, %struct.buffer_head* %93, i32 %97, i32 %101, %struct.ocfs2_dir_lookup_result* %15)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %90
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  br label %247

108:                                              ; preds = %90
  %109 = load %struct.inode*, %struct.inode** %9, align 8
  %110 = call i32 @ocfs2_inode_lock(%struct.inode* %109, %struct.buffer_head** %11, i32 1)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @ENOENT, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp ne i32 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @mlog_errno(i32 %119)
  br label %121

121:                                              ; preds = %118, %113
  br label %247

122:                                              ; preds = %108
  %123 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %124 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %126, %struct.ocfs2_dinode** %13, align 8
  %127 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %128 = call i64 @ocfs2_read_links_count(%struct.ocfs2_dinode* %127)
  %129 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %130 = call i64 @ocfs2_link_max(%struct.ocfs2_super* %129)
  %131 = icmp sge i64 %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = load i32, i32* @EMLINK, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %10, align 4
  br label %244

135:                                              ; preds = %122
  %136 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %137 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %138 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ocfs2_link_credits(i32 %139)
  %141 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %136, i32 %140)
  store i32* %141, i32** %8, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = call i64 @IS_ERR(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %135
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @PTR_ERR(i32* %146)
  store i32 %147, i32* %10, align 4
  store i32* null, i32** %8, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @mlog_errno(i32 %148)
  br label %244

150:                                              ; preds = %135
  %151 = load i32*, i32** %8, align 8
  %152 = load %struct.inode*, %struct.inode** %9, align 8
  %153 = call i32 @INODE_CACHE(%struct.inode* %152)
  %154 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %155 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %156 = call i32 @ocfs2_journal_access_di(i32* %151, i32 %153, %struct.buffer_head* %154, i32 %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %150
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @mlog_errno(i32 %160)
  br label %240

162:                                              ; preds = %150
  %163 = load %struct.inode*, %struct.inode** %9, align 8
  %164 = call i32 @inc_nlink(%struct.inode* %163)
  %165 = load %struct.inode*, %struct.inode** %9, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 1
  %167 = bitcast %struct.TYPE_6__* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 4 bitcast (%struct.TYPE_6__* @CURRENT_TIME to i8*), i64 8, i1 false)
  %168 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %169 = load %struct.inode*, %struct.inode** %9, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ocfs2_set_links_count(%struct.ocfs2_dinode* %168, i32 %171)
  %173 = load %struct.inode*, %struct.inode** %9, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @cpu_to_le64(i32 %176)
  %178 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %179 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.inode*, %struct.inode** %9, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @cpu_to_le32(i32 %183)
  %185 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %186 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = load i32*, i32** %8, align 8
  %188 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %189 = call i32 @ocfs2_journal_dirty(i32* %187, %struct.buffer_head* %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %162
  %193 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %194 = call i32 @ocfs2_add_links_count(%struct.ocfs2_dinode* %193, i32 -1)
  %195 = load %struct.inode*, %struct.inode** %9, align 8
  %196 = call i32 @drop_nlink(%struct.inode* %195)
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @mlog_errno(i32 %197)
  br label %240

199:                                              ; preds = %162
  %200 = load i32*, i32** %8, align 8
  %201 = load %struct.dentry*, %struct.dentry** %7, align 8
  %202 = load %struct.inode*, %struct.inode** %9, align 8
  %203 = load %struct.inode*, %struct.inode** %9, align 8
  %204 = call %struct.TYPE_5__* @OCFS2_I(%struct.inode* %203)
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %208 = call i32 @ocfs2_add_entry(i32* %200, %struct.dentry* %201, %struct.inode* %202, i32 %206, %struct.buffer_head* %207, %struct.ocfs2_dir_lookup_result* %15)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %199
  %212 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %213 = call i32 @ocfs2_add_links_count(%struct.ocfs2_dinode* %212, i32 -1)
  %214 = load %struct.inode*, %struct.inode** %9, align 8
  %215 = call i32 @drop_nlink(%struct.inode* %214)
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @mlog_errno(i32 %216)
  br label %240

218:                                              ; preds = %199
  %219 = load %struct.dentry*, %struct.dentry** %7, align 8
  %220 = load %struct.inode*, %struct.inode** %9, align 8
  %221 = load %struct.inode*, %struct.inode** %6, align 8
  %222 = call %struct.TYPE_5__* @OCFS2_I(%struct.inode* %221)
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ocfs2_dentry_attach_lock(%struct.dentry* %219, %struct.inode* %220, i32 %224)
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %218
  %229 = load i32, i32* %10, align 4
  %230 = call i32 @mlog_errno(i32 %229)
  br label %240

231:                                              ; preds = %218
  %232 = load %struct.inode*, %struct.inode** %9, align 8
  %233 = getelementptr inbounds %struct.inode, %struct.inode* %232, i32 0, i32 0
  %234 = call i32 @atomic_inc(i32* %233)
  %235 = load %struct.dentry*, %struct.dentry** %7, align 8
  %236 = getelementptr inbounds %struct.dentry, %struct.dentry* %235, i32 0, i32 0
  store i32* @ocfs2_dentry_ops, i32** %236, align 8
  %237 = load %struct.dentry*, %struct.dentry** %7, align 8
  %238 = load %struct.inode*, %struct.inode** %9, align 8
  %239 = call i32 @d_instantiate(%struct.dentry* %237, %struct.inode* %238)
  br label %240

240:                                              ; preds = %231, %228, %211, %192, %159
  %241 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %242 = load i32*, i32** %8, align 8
  %243 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %241, i32* %242)
  br label %244

244:                                              ; preds = %240, %145, %132
  %245 = load %struct.inode*, %struct.inode** %9, align 8
  %246 = call i32 @ocfs2_inode_unlock(%struct.inode* %245, i32 1)
  br label %247

247:                                              ; preds = %244, %121, %105, %89, %73
  %248 = load %struct.inode*, %struct.inode** %6, align 8
  %249 = call i32 @ocfs2_inode_unlock(%struct.inode* %248, i32 1)
  %250 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %251 = call i32 @brelse(%struct.buffer_head* %250)
  %252 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %253 = call i32 @brelse(%struct.buffer_head* %252)
  %254 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %15)
  %255 = load i32, i32* %10, align 4
  %256 = call i32 @mlog_exit(i32 %255)
  %257 = load i32, i32* %10, align 4
  store i32 %257, i32* %4, align 4
  br label %258

258:                                              ; preds = %247, %66, %49
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mlog_entry(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ocfs2_inode_lock_nested(%struct.inode*, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_check_dir_for_entry(%struct.inode*, i32, i32) #1

declare dso_local i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, i32, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i64 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #1

declare dso_local i64 @ocfs2_link_max(%struct.ocfs2_super*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_link_credits(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ocfs2_set_links_count(%struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_add_links_count(%struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @ocfs2_add_entry(i32*, %struct.dentry*, %struct.inode*, i32, %struct.buffer_head*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local %struct.TYPE_5__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry*, %struct.inode*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
