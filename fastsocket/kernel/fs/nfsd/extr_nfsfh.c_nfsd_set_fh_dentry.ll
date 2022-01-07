; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.c_nfsd_set_fh_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.c_nfsd_set_fh_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.svc_export*, %struct.svc_export*, %struct.knfsd_fh }
%struct.svc_export = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.knfsd_fh = type { i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32*, i32* }
%struct.fid = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.dentry = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.cred = type { i32, i32 }

@nfserr_stale = common dso_local global i64 0, align 8
@nfserr_badhandle = common dso_local global i64 0, align 8
@nfserr_nofilehandle = common dso_local global i64 0, align 8
@FSID_MAJOR_MINOR = common dso_local global i64 0, align 8
@FSID_ENCODE_DEV = common dso_local global i64 0, align 8
@NFS_FHSIZE = common dso_local global i32 0, align 4
@FSID_DEV = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NFSEXP_NOSUBTREECHECK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FILEID_INO32_GEN = common dso_local global i32 0, align 4
@FILEID_INO32_GEN_PARENT = common dso_local global i32 0, align 4
@FILEID_ROOT = common dso_local global i32 0, align 4
@nfsd_acceptable = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"nfsd: find_fh_dentry returned a DISCONNECTED directory: %s/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.svc_fh*)* @nfsd_set_fh_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd_set_fh_dentry(%struct.svc_rqst* %0, %struct.svc_fh* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_fh*, align 8
  %6 = alloca %struct.knfsd_fh*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca %struct.fid, align 8
  %9 = alloca %struct.svc_export*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cred*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %5, align 8
  %19 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %20 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %19, i32 0, i32 2
  store %struct.knfsd_fh* %20, %struct.knfsd_fh** %6, align 8
  store %struct.fid* null, %struct.fid** %7, align 8
  %21 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %22 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %23, 4
  store i32 %24, i32* %12, align 4
  %25 = load i64, i64* @nfserr_stale, align 8
  store i64 %25, i64* %13, align 8
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %27 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i64, i64* @nfserr_badhandle, align 8
  store i64 %31, i64* %13, align 8
  br label %32

32:                                               ; preds = %30, %2
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %34 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %39 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* @nfserr_nofilehandle, align 8
  store i64 %43, i64* %3, align 8
  br label %343

44:                                               ; preds = %37, %32
  %45 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %46 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %136

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* %13, align 8
  store i64 %54, i64* %3, align 8
  br label %343

55:                                               ; preds = %49
  %56 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %57 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i64, i64* %13, align 8
  store i64 %61, i64* %3, align 8
  br label %343

62:                                               ; preds = %55
  %63 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %64 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @key_len(i64 %65)
  %67 = sdiv i32 %66, 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i64, i64* %13, align 8
  store i64 %71, i64* %3, align 8
  br label %343

72:                                               ; preds = %62
  %73 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %74 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FSID_MAJOR_MINOR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %72
  %79 = load i64, i64* @FSID_ENCODE_DEV, align 8
  %80 = call i32 @key_len(i64 %79)
  %81 = sdiv i32 %80, 4
  store i32 %81, i32* %14, align 4
  %82 = load i64, i64* @FSID_ENCODE_DEV, align 8
  %83 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %84 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %86 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %85, i32 0, i32 11
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ntohl(i32 %89)
  %91 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %92 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %91, i32 0, i32 11
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ntohl(i32 %95)
  %97 = call i32 @MKDEV(i32 %90, i32 %96)
  %98 = call i32 @new_encode_dev(i32 %97)
  %99 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %100 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %99, i32 0, i32 11
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %98, i32* %102, align 4
  %103 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %104 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %103, i32 0, i32 11
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %109 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %108, i32 0, i32 11
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %78, %72
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %12, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i64, i64* %13, align 8
  store i64 %119, i64* %3, align 8
  br label %343

120:                                              ; preds = %112
  %121 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %122 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %123 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %126 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %125, i32 0, i32 10
  %127 = load i32*, i32** %126, align 8
  %128 = call %struct.svc_export* @rqst_exp_find(%struct.svc_rqst* %121, i64 %124, i32* %127)
  store %struct.svc_export* %128, %struct.svc_export** %9, align 8
  %129 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %130 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %129, i32 0, i32 10
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = bitcast i32* %134 to %struct.fid*
  store %struct.fid* %135, %struct.fid** %7, align 8
  br label %162

136:                                              ; preds = %44
  %137 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %138 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @NFS_FHSIZE, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i64, i64* %13, align 8
  store i64 %143, i64* %3, align 8
  br label %343

144:                                              ; preds = %136
  %145 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %146 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @old_decode_dev(i32 %147)
  store i32 %148, i32* %16, align 4
  %149 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %150 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @u32_to_ino_t(i32 %151)
  store i32 %152, i32* %17, align 4
  %153 = load i64, i64* @FSID_DEV, align 8
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @mk_fsid(i64 %153, i32* %154, i32 %155, i32 %156, i32 0, i32* null)
  %158 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %159 = load i64, i64* @FSID_DEV, align 8
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %161 = call %struct.svc_export* @rqst_exp_find(%struct.svc_rqst* %158, i64 %159, i32* %160)
  store %struct.svc_export* %161, %struct.svc_export** %9, align 8
  br label %162

162:                                              ; preds = %144, %120
  %163 = load i64, i64* @nfserr_stale, align 8
  store i64 %163, i64* %13, align 8
  %164 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %165 = call i32 @PTR_ERR(%struct.svc_export* %164)
  %166 = load i32, i32* @ENOENT, align 4
  %167 = sub nsw i32 0, %166
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = load i64, i64* %13, align 8
  store i64 %170, i64* %3, align 8
  br label %343

171:                                              ; preds = %162
  %172 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %173 = call i64 @IS_ERR(%struct.svc_export* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %177 = call i32 @PTR_ERR(%struct.svc_export* %176)
  %178 = call i64 @nfserrno(i32 %177)
  store i64 %178, i64* %3, align 8
  br label %343

179:                                              ; preds = %171
  %180 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %181 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @NFSEXP_NOSUBTREECHECK, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %209

186:                                              ; preds = %179
  %187 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %187, %struct.cred** %18, align 8
  %188 = load %struct.cred*, %struct.cred** %18, align 8
  %189 = icmp ne %struct.cred* %188, null
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = sub nsw i32 0, %191
  %193 = call i64 @nfserrno(i32 %192)
  store i64 %193, i64* %3, align 8
  br label %343

194:                                              ; preds = %186
  %195 = load %struct.cred*, %struct.cred** %18, align 8
  %196 = getelementptr inbounds %struct.cred, %struct.cred* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.cred*, %struct.cred** %18, align 8
  %199 = getelementptr inbounds %struct.cred, %struct.cred* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @cap_raise_nfsd_set(i32 %197, i32 %200)
  %202 = load %struct.cred*, %struct.cred** %18, align 8
  %203 = getelementptr inbounds %struct.cred, %struct.cred* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.cred*, %struct.cred** %18, align 8
  %205 = call %struct.cred* @override_creds(%struct.cred* %204)
  %206 = call i32 @put_cred(%struct.cred* %205)
  %207 = load %struct.cred*, %struct.cred** %18, align 8
  %208 = call i32 @put_cred(%struct.cred* %207)
  br label %217

209:                                              ; preds = %179
  %210 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %211 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %212 = call i64 @nfsd_setuser_and_check_port(%struct.svc_rqst* %210, %struct.svc_export* %211)
  store i64 %212, i64* %13, align 8
  %213 = load i64, i64* %13, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %339

216:                                              ; preds = %209
  br label %217

217:                                              ; preds = %216, %194
  %218 = load i64, i64* @nfserr_stale, align 8
  store i64 %218, i64* %13, align 8
  %219 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %220 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp sgt i32 %221, 2
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = load i64, i64* @nfserr_badhandle, align 8
  store i64 %224, i64* %13, align 8
  br label %225

225:                                              ; preds = %223, %217
  %226 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %227 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 1
  br i1 %229, label %230, label %255

230:                                              ; preds = %225
  %231 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %232 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds %struct.fid, %struct.fid* %8, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 4
  %236 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %237 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds %struct.fid, %struct.fid* %8, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 8
  %241 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %242 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.fid, %struct.fid* %8, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  store i64 %243, i64* %245, align 8
  store %struct.fid* %8, %struct.fid** %7, align 8
  store i32 3, i32* %12, align 4
  %246 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %247 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %246, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %230
  %251 = load i32, i32* @FILEID_INO32_GEN, align 4
  store i32 %251, i32* %11, align 4
  br label %254

252:                                              ; preds = %230
  %253 = load i32, i32* @FILEID_INO32_GEN_PARENT, align 4
  store i32 %253, i32* %11, align 4
  br label %254

254:                                              ; preds = %252, %250
  br label %259

255:                                              ; preds = %225
  %256 = load %struct.knfsd_fh*, %struct.knfsd_fh** %6, align 8
  %257 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  store i32 %258, i32* %11, align 4
  br label %259

259:                                              ; preds = %255, %254
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* @FILEID_ROOT, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %270

263:                                              ; preds = %259
  %264 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %265 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call %struct.svc_export* @dget(i32 %267)
  %269 = bitcast %struct.svc_export* %268 to %struct.dentry*
  store %struct.dentry* %269, %struct.dentry** %10, align 8
  br label %282

270:                                              ; preds = %259
  %271 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %272 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.fid*, %struct.fid** %7, align 8
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* @nfsd_acceptable, align 4
  %279 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %280 = call %struct.svc_export* @exportfs_decode_fh(i32 %274, %struct.fid* %275, i32 %276, i32 %277, i32 %278, %struct.svc_export* %279)
  %281 = bitcast %struct.svc_export* %280 to %struct.dentry*
  store %struct.dentry* %281, %struct.dentry** %10, align 8
  br label %282

282:                                              ; preds = %270, %263
  %283 = load %struct.dentry*, %struct.dentry** %10, align 8
  %284 = icmp eq %struct.dentry* %283, null
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  br label %339

286:                                              ; preds = %282
  %287 = load %struct.dentry*, %struct.dentry** %10, align 8
  %288 = bitcast %struct.dentry* %287 to %struct.svc_export*
  %289 = call i64 @IS_ERR(%struct.svc_export* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %304

291:                                              ; preds = %286
  %292 = load %struct.dentry*, %struct.dentry** %10, align 8
  %293 = bitcast %struct.dentry* %292 to %struct.svc_export*
  %294 = call i32 @PTR_ERR(%struct.svc_export* %293)
  %295 = load i32, i32* @EINVAL, align 4
  %296 = sub nsw i32 0, %295
  %297 = icmp ne i32 %294, %296
  br i1 %297, label %298, label %303

298:                                              ; preds = %291
  %299 = load %struct.dentry*, %struct.dentry** %10, align 8
  %300 = bitcast %struct.dentry* %299 to %struct.svc_export*
  %301 = call i32 @PTR_ERR(%struct.svc_export* %300)
  %302 = call i64 @nfserrno(i32 %301)
  store i64 %302, i64* %13, align 8
  br label %303

303:                                              ; preds = %298, %291
  br label %339

304:                                              ; preds = %286
  %305 = load %struct.dentry*, %struct.dentry** %10, align 8
  %306 = getelementptr inbounds %struct.dentry, %struct.dentry* %305, i32 0, i32 4
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i64 @S_ISDIR(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %331

312:                                              ; preds = %304
  %313 = load %struct.dentry*, %struct.dentry** %10, align 8
  %314 = getelementptr inbounds %struct.dentry, %struct.dentry* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %331

319:                                              ; preds = %312
  %320 = load %struct.dentry*, %struct.dentry** %10, align 8
  %321 = getelementptr inbounds %struct.dentry, %struct.dentry* %320, i32 0, i32 3
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.dentry*, %struct.dentry** %10, align 8
  %327 = getelementptr inbounds %struct.dentry, %struct.dentry* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %325, i32 %329)
  br label %331

331:                                              ; preds = %319, %312, %304
  %332 = load %struct.dentry*, %struct.dentry** %10, align 8
  %333 = bitcast %struct.dentry* %332 to %struct.svc_export*
  %334 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %335 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %334, i32 0, i32 1
  store %struct.svc_export* %333, %struct.svc_export** %335, align 8
  %336 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %337 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %338 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %337, i32 0, i32 0
  store %struct.svc_export* %336, %struct.svc_export** %338, align 8
  store i64 0, i64* %3, align 8
  br label %343

339:                                              ; preds = %303, %285, %215
  %340 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %341 = call i32 @exp_put(%struct.svc_export* %340)
  %342 = load i64, i64* %13, align 8
  store i64 %342, i64* %3, align 8
  br label %343

343:                                              ; preds = %339, %331, %190, %175, %169, %142, %118, %70, %60, %53, %42
  %344 = load i64, i64* %3, align 8
  ret i64 %344
}

declare dso_local i32 @key_len(i64) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.svc_export* @rqst_exp_find(%struct.svc_rqst*, i64, i32*) #1

declare dso_local i32 @old_decode_dev(i32) #1

declare dso_local i32 @u32_to_ino_t(i32) #1

declare dso_local i32 @mk_fsid(i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @cap_raise_nfsd_set(i32, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local %struct.cred* @override_creds(%struct.cred*) #1

declare dso_local i64 @nfsd_setuser_and_check_port(%struct.svc_rqst*, %struct.svc_export*) #1

declare dso_local %struct.svc_export* @dget(i32) #1

declare dso_local %struct.svc_export* @exportfs_decode_fh(i32, %struct.fid*, i32, i32, i32, %struct.svc_export*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
