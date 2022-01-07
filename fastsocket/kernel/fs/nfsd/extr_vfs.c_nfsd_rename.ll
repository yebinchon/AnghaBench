; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, %struct.TYPE_4__*, %struct.dentry* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.dentry = type { %struct.inode*, i32 }
%struct.inode = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_REMOVE = common dso_local global i32 0, align 4
@NFSD_MAY_CREATE = common dso_local global i32 0, align 4
@nfserr_acces = common dso_local global i64 0, align 8
@nfserr_xdev = common dso_local global i64 0, align 8
@nfserr_perm = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_rename(%struct.svc_rqst* %0, %struct.svc_fh* %1, i8* %2, i32 %3, %struct.svc_fh* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.svc_rqst*, align 8
  %9 = alloca %struct.svc_fh*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.svc_fh*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca %struct.dentry*, align 8
  %18 = alloca %struct.dentry*, align 8
  %19 = alloca %struct.dentry*, align 8
  %20 = alloca %struct.inode*, align 8
  %21 = alloca %struct.inode*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %8, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.svc_fh* %4, %struct.svc_fh** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %25 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %26 = load i32, i32* @S_IFDIR, align 4
  %27 = load i32, i32* @NFSD_MAY_REMOVE, align 4
  %28 = call i64 @fh_verify(%struct.svc_rqst* %24, %struct.svc_fh* %25, i32 %26, i32 %27)
  store i64 %28, i64* %22, align 8
  %29 = load i64, i64* %22, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  br label %249

32:                                               ; preds = %7
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %34 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %35 = load i32, i32* @S_IFDIR, align 4
  %36 = load i32, i32* @NFSD_MAY_CREATE, align 4
  %37 = call i64 @fh_verify(%struct.svc_rqst* %33, %struct.svc_fh* %34, i32 %35, i32 %36)
  store i64 %37, i64* %22, align 8
  %38 = load i64, i64* %22, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %249

41:                                               ; preds = %32
  %42 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %43 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %42, i32 0, i32 2
  %44 = load %struct.dentry*, %struct.dentry** %43, align 8
  store %struct.dentry* %44, %struct.dentry** %15, align 8
  %45 = load %struct.dentry*, %struct.dentry** %15, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.inode*, %struct.inode** %46, align 8
  store %struct.inode* %47, %struct.inode** %20, align 8
  %48 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %49 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %48, i32 0, i32 2
  %50 = load %struct.dentry*, %struct.dentry** %49, align 8
  store %struct.dentry* %50, %struct.dentry** %16, align 8
  %51 = load %struct.dentry*, %struct.dentry** %16, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load %struct.inode*, %struct.inode** %52, align 8
  store %struct.inode* %53, %struct.inode** %21, align 8
  %54 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %55 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %41
  %59 = load i64, i64* @nfserr_acces, align 8
  br label %62

60:                                               ; preds = %41
  %61 = load i64, i64* @nfserr_xdev, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i64 [ %59, %58 ], [ %61, %60 ]
  store i64 %63, i64* %22, align 8
  %64 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %65 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %68 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = icmp ne %struct.TYPE_4__* %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %249

72:                                               ; preds = %62
  %73 = load i64, i64* @nfserr_perm, align 8
  store i64 %73, i64* %22, align 8
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @isdotent(i8* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i8*, i8** %13, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i64 @isdotent(i8* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %81, %76, %72
  br label %249

90:                                               ; preds = %84
  %91 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %92 = call i32 @fh_want_write(%struct.svc_fh* %91)
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %23, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %23, align 4
  %97 = call i64 @nfserrno(i32 %96)
  store i64 %97, i64* %22, align 8
  br label %249

98:                                               ; preds = %90
  %99 = load %struct.dentry*, %struct.dentry** %16, align 8
  %100 = load %struct.dentry*, %struct.dentry** %15, align 8
  %101 = call %struct.dentry* @lock_rename(%struct.dentry* %99, %struct.dentry* %100)
  store %struct.dentry* %101, %struct.dentry** %19, align 8
  %102 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %103 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %105 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %107 = call i32 @fill_pre_wcc(%struct.svc_fh* %106)
  %108 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %109 = call i32 @fill_pre_wcc(%struct.svc_fh* %108)
  %110 = load i8*, i8** %10, align 8
  %111 = load %struct.dentry*, %struct.dentry** %15, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call %struct.dentry* @lookup_one_len(i8* %110, %struct.dentry* %111, i32 %112)
  store %struct.dentry* %113, %struct.dentry** %17, align 8
  %114 = load %struct.dentry*, %struct.dentry** %17, align 8
  %115 = call i32 @PTR_ERR(%struct.dentry* %114)
  store i32 %115, i32* %23, align 4
  %116 = load %struct.dentry*, %struct.dentry** %17, align 8
  %117 = call i64 @IS_ERR(%struct.dentry* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %98
  br label %233

120:                                              ; preds = %98
  %121 = load i32, i32* @ENOENT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %23, align 4
  %123 = load %struct.dentry*, %struct.dentry** %17, align 8
  %124 = getelementptr inbounds %struct.dentry, %struct.dentry* %123, i32 0, i32 0
  %125 = load %struct.inode*, %struct.inode** %124, align 8
  %126 = icmp ne %struct.inode* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %230

128:                                              ; preds = %120
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %23, align 4
  %131 = load %struct.dentry*, %struct.dentry** %17, align 8
  %132 = load %struct.dentry*, %struct.dentry** %19, align 8
  %133 = icmp eq %struct.dentry* %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %230

135:                                              ; preds = %128
  %136 = load i8*, i8** %13, align 8
  %137 = load %struct.dentry*, %struct.dentry** %16, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call %struct.dentry* @lookup_one_len(i8* %136, %struct.dentry* %137, i32 %138)
  store %struct.dentry* %139, %struct.dentry** %18, align 8
  %140 = load %struct.dentry*, %struct.dentry** %18, align 8
  %141 = call i32 @PTR_ERR(%struct.dentry* %140)
  store i32 %141, i32* %23, align 4
  %142 = load %struct.dentry*, %struct.dentry** %18, align 8
  %143 = call i64 @IS_ERR(%struct.dentry* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %230

146:                                              ; preds = %135
  %147 = load i32, i32* @ENOTEMPTY, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %23, align 4
  %149 = load %struct.dentry*, %struct.dentry** %18, align 8
  %150 = load %struct.dentry*, %struct.dentry** %19, align 8
  %151 = icmp eq %struct.dentry* %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %227

153:                                              ; preds = %146
  %154 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %155 = call i64 @svc_msnfs(%struct.svc_fh* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %153
  %158 = load %struct.dentry*, %struct.dentry** %17, align 8
  %159 = getelementptr inbounds %struct.dentry, %struct.dentry* %158, i32 0, i32 1
  %160 = call i32 @atomic_read(i32* %159)
  %161 = icmp sgt i32 %160, 1
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = load %struct.dentry*, %struct.dentry** %18, align 8
  %164 = getelementptr inbounds %struct.dentry, %struct.dentry* %163, i32 0, i32 1
  %165 = call i32 @atomic_read(i32* %164)
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %170

167:                                              ; preds = %162, %157
  %168 = load i32, i32* @EPERM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %23, align 4
  br label %227

170:                                              ; preds = %162, %153
  %171 = load i32, i32* @EXDEV, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %23, align 4
  %173 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %174 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %180 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %179, i32 0, i32 1
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %178, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %170
  br label %227

187:                                              ; preds = %170
  %188 = load %struct.dentry*, %struct.dentry** %17, align 8
  %189 = getelementptr inbounds %struct.dentry, %struct.dentry* %188, i32 0, i32 0
  %190 = load %struct.inode*, %struct.inode** %189, align 8
  %191 = call i32 @nfsd_break_lease(%struct.inode* %190)
  store i32 %191, i32* %23, align 4
  %192 = load i32, i32* %23, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %227

195:                                              ; preds = %187
  %196 = load %struct.dentry*, %struct.dentry** %18, align 8
  %197 = getelementptr inbounds %struct.dentry, %struct.dentry* %196, i32 0, i32 0
  %198 = load %struct.inode*, %struct.inode** %197, align 8
  %199 = icmp ne %struct.inode* %198, null
  br i1 %199, label %200, label %209

200:                                              ; preds = %195
  %201 = load %struct.dentry*, %struct.dentry** %18, align 8
  %202 = getelementptr inbounds %struct.dentry, %struct.dentry* %201, i32 0, i32 0
  %203 = load %struct.inode*, %struct.inode** %202, align 8
  %204 = call i32 @nfsd_break_lease(%struct.inode* %203)
  store i32 %204, i32* %23, align 4
  %205 = load i32, i32* %23, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  br label %227

208:                                              ; preds = %200
  br label %209

209:                                              ; preds = %208, %195
  %210 = load %struct.inode*, %struct.inode** %20, align 8
  %211 = load %struct.dentry*, %struct.dentry** %17, align 8
  %212 = load %struct.inode*, %struct.inode** %21, align 8
  %213 = load %struct.dentry*, %struct.dentry** %18, align 8
  %214 = call i32 @vfs_rename(%struct.inode* %210, %struct.dentry* %211, %struct.inode* %212, %struct.dentry* %213)
  store i32 %214, i32* %23, align 4
  %215 = load i32, i32* %23, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %226, label %217

217:                                              ; preds = %209
  %218 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %219 = call i32 @commit_metadata(%struct.svc_fh* %218)
  store i32 %219, i32* %23, align 4
  %220 = load i32, i32* %23, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %217
  %223 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %224 = call i32 @commit_metadata(%struct.svc_fh* %223)
  store i32 %224, i32* %23, align 4
  br label %225

225:                                              ; preds = %222, %217
  br label %226

226:                                              ; preds = %225, %209
  br label %227

227:                                              ; preds = %226, %207, %194, %186, %167, %152
  %228 = load %struct.dentry*, %struct.dentry** %18, align 8
  %229 = call i32 @dput(%struct.dentry* %228)
  br label %230

230:                                              ; preds = %227, %145, %134, %127
  %231 = load %struct.dentry*, %struct.dentry** %17, align 8
  %232 = call i32 @dput(%struct.dentry* %231)
  br label %233

233:                                              ; preds = %230, %119
  %234 = load i32, i32* %23, align 4
  %235 = call i64 @nfserrno(i32 %234)
  store i64 %235, i64* %22, align 8
  %236 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %237 = call i32 @fill_post_wcc(%struct.svc_fh* %236)
  %238 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %239 = call i32 @fill_post_wcc(%struct.svc_fh* %238)
  %240 = load %struct.dentry*, %struct.dentry** %16, align 8
  %241 = load %struct.dentry*, %struct.dentry** %15, align 8
  %242 = call i32 @unlock_rename(%struct.dentry* %240, %struct.dentry* %241)
  %243 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %244 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %243, i32 0, i32 0
  store i32 0, i32* %244, align 8
  %245 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %246 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %245, i32 0, i32 0
  store i32 0, i32* %246, align 8
  %247 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %248 = call i32 @fh_drop_write(%struct.svc_fh* %247)
  br label %249

249:                                              ; preds = %233, %95, %89, %71, %40, %31
  %250 = load i64, i64* %22, align 8
  ret i64 %250
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local i32 @fh_want_write(%struct.svc_fh*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local %struct.dentry* @lock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @fill_pre_wcc(%struct.svc_fh*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @svc_msnfs(%struct.svc_fh*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nfsd_break_lease(%struct.inode*) #1

declare dso_local i32 @vfs_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @commit_metadata(%struct.svc_fh*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @fill_post_wcc(%struct.svc_fh*) #1

declare dso_local i32 @unlock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @fh_drop_write(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
