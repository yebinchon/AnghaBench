; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_remount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.mount_options = type { i32, i64, i32, i32 }
%struct.ocfs2_super = type { i32, i32, i32, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCFS2_MOUNT_HB_LOCAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cannot change heartbeat mode on remount\0A\00", align 1
@OCFS2_MOUNT_DATA_WRITEBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot change data mode on remount\0A\00", align 1
@OCFS2_MOUNT_INODE64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot enable inode64 on remount\0A\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@OCFS2_OSB_HARD_RO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Remount on readonly device is forbidden.\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Going to ro mode.\0A\00", align 1
@OCFS2_OSB_SOFT_RO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Making ro filesystem writeable.\0A\00", align 1
@OCFS2_OSB_ERROR_FS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"Cannot remount RDWR filesystem due to previous errors.\0A\00", align 1
@OCFS2_FEATURE_RO_COMPAT_SUPP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [68 x i8] c"Cannot remount RDWR because of unsupported optional features (%x).\0A\00", align 1
@OCFS2_FEATURE_INCOMPAT_XATTR = common dso_local global i32 0, align 4
@OCFS2_MOUNT_POSIX_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @ocfs2_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mount_options, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %11)
  store %struct.ocfs2_super* %12, %struct.ocfs2_super** %10, align 8
  %13 = call i32 (...) @lock_kernel()
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @ocfs2_parse_options(%struct.super_block* %14, i8* %15, %struct.mount_options* %9, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %258

21:                                               ; preds = %3
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @OCFS2_MOUNT_HB_LOCAL, align 4
  %26 = and i32 %24, %25
  %27 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OCFS2_MOUNT_HB_LOCAL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @ML_ERROR, align 4
  %36 = call i32 (i32, i8*, ...) @mlog(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %258

37:                                               ; preds = %21
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %39 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @OCFS2_MOUNT_DATA_WRITEBACK, align 4
  %42 = and i32 %40, %41
  %43 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @OCFS2_MOUNT_DATA_WRITEBACK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %42, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @ML_ERROR, align 4
  %52 = call i32 (i32, i8*, ...) @mlog(i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %258

53:                                               ; preds = %37
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %55 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @OCFS2_MOUNT_INODE64, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @OCFS2_MOUNT_INODE64, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @ML_ERROR, align 4
  %70 = call i32 (i32, i8*, ...) @mlog(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %258

71:                                               ; preds = %60, %53
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MS_RDONLY, align 4
  %75 = and i32 %73, %74
  %76 = load %struct.super_block*, %struct.super_block** %4, align 8
  %77 = getelementptr inbounds %struct.super_block, %struct.super_block* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MS_RDONLY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %75, %80
  br i1 %81, label %82, label %212

82:                                               ; preds = %71
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MS_RDONLY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %90 = call i32 @ocfs2_susp_quotas(%struct.ocfs2_super* %89, i32 0)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %258

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %82
  %96 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %97 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %96, i32 0, i32 6
  %98 = call i32 @spin_lock(i32* %97)
  %99 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %100 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @OCFS2_OSB_HARD_RO, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = load i32, i32* @ML_ERROR, align 4
  %107 = call i32 (i32, i8*, ...) @mlog(i32 %106, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @EROFS, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %8, align 4
  br label %168

110:                                              ; preds = %95
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MS_RDONLY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %110
  %117 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32, i32* @MS_RDONLY, align 4
  %119 = load %struct.super_block*, %struct.super_block** %4, align 8
  %120 = getelementptr inbounds %struct.super_block, %struct.super_block* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* @OCFS2_OSB_SOFT_RO, align 4
  %124 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %125 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %167

128:                                              ; preds = %110
  %129 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %130 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %131 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @OCFS2_OSB_ERROR_FS, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %128
  %137 = load i32, i32* @ML_ERROR, align 4
  %138 = call i32 (i32, i8*, ...) @mlog(i32 %137, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* @EROFS, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %168

141:                                              ; preds = %128
  %142 = load %struct.super_block*, %struct.super_block** %4, align 8
  %143 = load i32, i32* @OCFS2_FEATURE_RO_COMPAT_SUPP, align 4
  %144 = xor i32 %143, -1
  %145 = call i32 @OCFS2_HAS_RO_COMPAT_FEATURE(%struct.super_block* %142, i32 %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load i32, i32* @ML_ERROR, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 (i32, i8*, ...) @mlog(i32 %149, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %8, align 4
  br label %168

154:                                              ; preds = %141
  %155 = load i32, i32* @MS_RDONLY, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.super_block*, %struct.super_block** %4, align 8
  %158 = getelementptr inbounds %struct.super_block, %struct.super_block* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* @OCFS2_OSB_SOFT_RO, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %164 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %154, %116
  br label %168

168:                                              ; preds = %167, %148, %136, %105
  %169 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %170 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %169, i32 0, i32 6
  %171 = call i32 @spin_unlock(i32* %170)
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %211, label %174

174:                                              ; preds = %168
  %175 = load i32*, i32** %5, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @MS_RDONLY, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %211, label %180

180:                                              ; preds = %174
  %181 = load %struct.super_block*, %struct.super_block** %4, align 8
  %182 = call i64 @sb_any_quota_suspended(%struct.super_block* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %186 = call i32 @ocfs2_susp_quotas(%struct.ocfs2_super* %185, i32 1)
  store i32 %186, i32* %8, align 4
  br label %190

187:                                              ; preds = %180
  %188 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %189 = call i32 @ocfs2_enable_quotas(%struct.ocfs2_super* %188)
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %187, %184
  %191 = load i32, i32* %8, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %190
  %194 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %195 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %194, i32 0, i32 6
  %196 = call i32 @spin_lock(i32* %195)
  %197 = load i32, i32* @MS_RDONLY, align 4
  %198 = load %struct.super_block*, %struct.super_block** %4, align 8
  %199 = getelementptr inbounds %struct.super_block, %struct.super_block* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* @OCFS2_OSB_SOFT_RO, align 4
  %203 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %204 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %208 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %207, i32 0, i32 6
  %209 = call i32 @spin_unlock(i32* %208)
  br label %258

210:                                              ; preds = %190
  br label %211

211:                                              ; preds = %210, %174, %168
  br label %212

212:                                              ; preds = %211, %71
  %213 = load i32, i32* %8, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %257, label %215

215:                                              ; preds = %212
  %216 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %217 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @OCFS2_FEATURE_INCOMPAT_XATTR, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %215
  %223 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %224 = xor i32 %223, -1
  %225 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %9, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = and i32 %226, %224
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %222, %215
  %229 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %9, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %232 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  %233 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %9, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %236 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 4
  %237 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %9, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %240 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %239, i32 0, i32 4
  store i32 %238, i32* %240, align 8
  %241 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %9, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %228
  %245 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %9, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %248 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %247, i32 0, i32 3
  store i64 %246, i64* %248, align 8
  br label %249

249:                                              ; preds = %244, %228
  %250 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %251 = call i32 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %249
  %254 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %255 = call i32 @ocfs2_set_journal_params(%struct.ocfs2_super* %254)
  br label %256

256:                                              ; preds = %253, %249
  br label %257

257:                                              ; preds = %256, %212
  br label %258

258:                                              ; preds = %257, %193, %93, %66, %48, %32, %18
  %259 = call i32 (...) @unlock_kernel()
  %260 = load i32, i32* %8, align 4
  ret i32 %260
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ocfs2_parse_options(%struct.super_block*, i8*, %struct.mount_options*, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_susp_quotas(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @OCFS2_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @sb_any_quota_suspended(%struct.super_block*) #1

declare dso_local i32 @ocfs2_enable_quotas(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_set_journal_params(%struct.ocfs2_super*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
