; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_create = type { i32, i64, i32, i32, i32*, %struct.TYPE_3__, i32, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.svc_fh = type { i32 }

@NFS4_FHSIZE = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_CREATE = common dso_local global i32 0, align 4
@nfserr_symlink = common dso_local global i64 0, align 8
@nfserr_notdir = common dso_local global i64 0, align 8
@nfsd_attrmask = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i64 0, align 8
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@nfserr_badtype = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_create*)* @nfsd4_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_create(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_create* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_create*, align 8
  %8 = alloca %struct.svc_fh, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_create* %2, %struct.nfsd4_create** %7, align 8
  %11 = load i32, i32* @NFS4_FHSIZE, align 4
  %12 = call i32 @fh_init(%struct.svc_fh* %8, i32 %11)
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %14 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %15 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %14, i32 0, i32 0
  %16 = load i32, i32* @S_IFDIR, align 4
  %17 = load i32, i32* @NFSD_MAY_CREATE, align 4
  %18 = call i64 @fh_verify(%struct.svc_rqst* %13, i32* %15, i32 %16, i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @nfserr_symlink, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @nfserr_notdir, align 8
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %22, %3
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %4, align 8
  br label %231

29:                                               ; preds = %24
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %31 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %32 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %33 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @nfsd_attrmask, align 4
  %36 = call i64 @check_attr_support(%struct.svc_rqst* %30, %struct.nfsd4_compound_state* %31, i32 %34, i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %4, align 8
  br label %231

41:                                               ; preds = %29
  %42 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %43 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %196 [
    i32 129, label %45
    i32 133, label %71
    i32 132, label %109
    i32 128, label %147
    i32 130, label %161
    i32 131, label %175
  ]

45:                                               ; preds = %41
  %46 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %47 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %46, i32 0, i32 10
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %50 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 0, i32* %52, align 4
  %53 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %54 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %55 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %54, i32 0, i32 0
  %56 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %57 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %60 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %63 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %62, i32 0, i32 10
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %66 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %69 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %68, i32 0, i32 5
  %70 = call i64 @nfsd_symlink(%struct.svc_rqst* %53, i32* %55, i32 %58, i32 %61, i32* %64, i64 %67, %struct.svc_fh* %8, %struct.TYPE_3__* %69)
  store i64 %70, i64* %9, align 8
  br label %198

71:                                               ; preds = %41
  %72 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %73 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %76 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @MKDEV(i32 %74, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @MAJOR(i32 %79)
  %81 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %82 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @MINOR(i32 %86)
  %88 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %89 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %87, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85, %71
  %93 = load i64, i64* @nfserr_inval, align 8
  store i64 %93, i64* %4, align 8
  br label %231

94:                                               ; preds = %85
  %95 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %96 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %97 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %96, i32 0, i32 0
  %98 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %99 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %102 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %105 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %104, i32 0, i32 5
  %106 = load i32, i32* @S_IFBLK, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i64 @nfsd_create(%struct.svc_rqst* %95, i32* %97, i32 %100, i32 %103, %struct.TYPE_3__* %105, i32 %106, i32 %107, %struct.svc_fh* %8)
  store i64 %108, i64* %9, align 8
  br label %198

109:                                              ; preds = %41
  %110 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %111 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %114 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @MKDEV(i32 %112, i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @MAJOR(i32 %117)
  %119 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %120 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %130, label %123

123:                                              ; preds = %109
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @MINOR(i32 %124)
  %126 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %127 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %123, %109
  %131 = load i64, i64* @nfserr_inval, align 8
  store i64 %131, i64* %4, align 8
  br label %231

132:                                              ; preds = %123
  %133 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %134 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %135 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %134, i32 0, i32 0
  %136 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %137 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %140 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %143 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %142, i32 0, i32 5
  %144 = load i32, i32* @S_IFCHR, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i64 @nfsd_create(%struct.svc_rqst* %133, i32* %135, i32 %138, i32 %141, %struct.TYPE_3__* %143, i32 %144, i32 %145, %struct.svc_fh* %8)
  store i64 %146, i64* %9, align 8
  br label %198

147:                                              ; preds = %41
  %148 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %149 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %150 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %149, i32 0, i32 0
  %151 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %152 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %155 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %158 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %157, i32 0, i32 5
  %159 = load i32, i32* @S_IFSOCK, align 4
  %160 = call i64 @nfsd_create(%struct.svc_rqst* %148, i32* %150, i32 %153, i32 %156, %struct.TYPE_3__* %158, i32 %159, i32 0, %struct.svc_fh* %8)
  store i64 %160, i64* %9, align 8
  br label %198

161:                                              ; preds = %41
  %162 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %163 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %164 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %163, i32 0, i32 0
  %165 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %166 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %169 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %172 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %171, i32 0, i32 5
  %173 = load i32, i32* @S_IFIFO, align 4
  %174 = call i64 @nfsd_create(%struct.svc_rqst* %162, i32* %164, i32 %167, i32 %170, %struct.TYPE_3__* %172, i32 %173, i32 0, %struct.svc_fh* %8)
  store i64 %174, i64* %9, align 8
  br label %198

175:                                              ; preds = %41
  %176 = load i32, i32* @ATTR_SIZE, align 4
  %177 = xor i32 %176, -1
  %178 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %179 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, %177
  store i32 %182, i32* %180, align 8
  %183 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %184 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %185 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %184, i32 0, i32 0
  %186 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %187 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %190 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %193 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %192, i32 0, i32 5
  %194 = load i32, i32* @S_IFDIR, align 4
  %195 = call i64 @nfsd_create(%struct.svc_rqst* %183, i32* %185, i32 %188, i32 %191, %struct.TYPE_3__* %193, i32 %194, i32 0, %struct.svc_fh* %8)
  store i64 %195, i64* %9, align 8
  br label %198

196:                                              ; preds = %41
  %197 = load i64, i64* @nfserr_badtype, align 8
  store i64 %197, i64* %9, align 8
  br label %198

198:                                              ; preds = %196, %175, %161, %147, %132, %94, %45
  %199 = load i64, i64* %9, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %228

202:                                              ; preds = %198
  %203 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %204 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %216

207:                                              ; preds = %202
  %208 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %209 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %210 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %213 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @do_set_nfs4_acl(%struct.svc_rqst* %208, %struct.svc_fh* %8, i32* %211, i32 %214)
  br label %216

216:                                              ; preds = %207, %202
  %217 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %218 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %217, i32 0, i32 0
  %219 = call i32 @fh_unlock(i32* %218)
  %220 = load %struct.nfsd4_create*, %struct.nfsd4_create** %7, align 8
  %221 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %220, i32 0, i32 2
  %222 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %223 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %222, i32 0, i32 0
  %224 = call i32 @set_change_info(i32* %221, i32* %223)
  %225 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %226 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %225, i32 0, i32 0
  %227 = call i32 @fh_dup2(i32* %226, %struct.svc_fh* %8)
  br label %228

228:                                              ; preds = %216, %201
  %229 = call i32 @fh_put(%struct.svc_fh* %8)
  %230 = load i64, i64* %9, align 8
  store i64 %230, i64* %4, align 8
  br label %231

231:                                              ; preds = %228, %130, %92, %39, %27
  %232 = load i64, i64* %4, align 8
  ret i64 %232
}

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local i64 @check_attr_support(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32, i32) #1

declare dso_local i64 @nfsd_symlink(%struct.svc_rqst*, i32*, i32, i32, i32*, i64, %struct.svc_fh*, %struct.TYPE_3__*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @nfsd_create(%struct.svc_rqst*, i32*, i32, i32, %struct.TYPE_3__*, i32, i32, %struct.svc_fh*) #1

declare dso_local i32 @do_set_nfs4_acl(%struct.svc_rqst*, %struct.svc_fh*, i32*, i32) #1

declare dso_local i32 @fh_unlock(i32*) #1

declare dso_local i32 @set_change_info(i32*, i32*) #1

declare dso_local i32 @fh_dup2(i32*, %struct.svc_fh*) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
