; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_request.c_smb_setup_trans2request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_request.c_smb_setup_trans2request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_request = type { i32, i8*, i32, i32, i32*, i32, i32, i8*, i32, i32, %struct.TYPE_4__*, %struct.smb_sb_info* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.smb_sb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@smb_setup_trans2request.padding = internal global [4 x i8] zeroinitializer, align 1
@SMB_HEADER_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMBtrans2 = common dso_local global i32 0, align 4
@SMB_TRANS2_MAX_PARAM = common dso_local global i32 0, align 4
@smb_tpscnt = common dso_local global i32 0, align 4
@smb_tdscnt = common dso_local global i32 0, align 4
@smb_mprcnt = common dso_local global i32 0, align 4
@smb_mdrcnt = common dso_local global i32 0, align 4
@smb_msrcnt = common dso_local global i32 0, align 4
@smb_flags = common dso_local global i32 0, align 4
@smb_timeout = common dso_local global i32 0, align 4
@smb_pscnt = common dso_local global i32 0, align 4
@smb_psoff = common dso_local global i32 0, align 4
@smb_dscnt = common dso_local global i32 0, align 4
@smb_dsoff = common dso_local global i32 0, align 4
@smb_suwcnt = common dso_local global i32 0, align 4
@smb_setup0 = common dso_local global i32 0, align 4
@smb_setup_bcc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_request*)* @smb_setup_trans2request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_setup_trans2request(%struct.smb_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_request*, align 8
  %4 = alloca %struct.smb_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.smb_request* %0, %struct.smb_request** %3, align 8
  %12 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %13 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %12, i32 0, i32 11
  %14 = load %struct.smb_sb_info*, %struct.smb_sb_info** %13, align 8
  store %struct.smb_sb_info* %14, %struct.smb_sb_info** %4, align 8
  store i32 15, i32* %7, align 4
  %15 = load i32, i32* @SMB_HEADER_LEN, align 4
  %16 = add nsw i32 %15, 30
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 3
  %20 = call i32 @ALIGN(i32 %19, i32 4)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %23 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %21, %24
  %26 = call i32 @ALIGN(i32 %25, i32 4)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %28 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %34 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %32, %35
  br label %43

37:                                               ; preds = %1
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %40 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %38, %41
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi i32 [ %36, %31 ], [ %42, %37 ]
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %47, %48
  %50 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %51 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %283

58:                                               ; preds = %43
  %59 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %60 = load i32, i32* @SMBtrans2, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @smb_setup_header(%struct.smb_request* %59, i32 %60, i32 15, i32 %61)
  %63 = load i32, i32* @SMB_TRANS2_MAX_PARAM, align 4
  store i32 %63, i32* %5, align 4
  %64 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %65 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %6, align 4
  %69 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %70 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sub nsw i32 %74, 100
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 1024
  br i1 %77, label %78, label %79

78:                                               ; preds = %58
  store i32 1024, i32* %6, align 4
  store i32 20, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %58
  %80 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %81 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @smb_tpscnt, align 4
  %84 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %85 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @WSET(i32* %82, i32 %83, i32 %86)
  %88 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %89 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @smb_tdscnt, align 4
  %92 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %93 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @WSET(i32* %90, i32 %91, i32 %94)
  %96 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %97 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @smb_mprcnt, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @WSET(i32* %98, i32 %99, i32 %100)
  %102 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %103 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @smb_mdrcnt, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @WSET(i32* %104, i32 %105, i32 %106)
  %108 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %109 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @smb_msrcnt, align 4
  %112 = call i32 @WSET(i32* %110, i32 %111, i32 0)
  %113 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %114 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @smb_flags, align 4
  %117 = call i32 @WSET(i32* %115, i32 %116, i32 0)
  %118 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %119 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @smb_timeout, align 4
  %122 = call i32 @DSET(i32* %120, i32 %121, i32 0)
  %123 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %124 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @smb_pscnt, align 4
  %127 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %128 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @WSET(i32* %125, i32 %126, i32 %129)
  %131 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %132 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @smb_psoff, align 4
  %135 = load i32, i32* %9, align 4
  %136 = sub nsw i32 %135, 4
  %137 = call i32 @WSET(i32* %133, i32 %134, i32 %136)
  %138 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %139 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* @smb_dscnt, align 4
  %142 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %143 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @WSET(i32* %140, i32 %141, i32 %144)
  %146 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %147 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @smb_dsoff, align 4
  %150 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %151 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %79
  %155 = load i32, i32* %10, align 4
  %156 = sub nsw i32 %155, 4
  br label %158

157:                                              ; preds = %79
  br label %158

158:                                              ; preds = %157, %154
  %159 = phi i32 [ %156, %154 ], [ 0, %157 ]
  %160 = call i32 @WSET(i32* %148, i32 %149, i32 %159)
  %161 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %162 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* @smb_suwcnt, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 1, i32* %166, align 4
  %167 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %168 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* @smb_suwcnt, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  store i32 0, i32* %173, align 4
  %174 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %175 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %174, i32 0, i32 4
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* @smb_setup0, align 4
  %178 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %179 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @WSET(i32* %176, i32 %177, i32 %180)
  %182 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %183 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %182, i32 0, i32 6
  store i32 2, i32* %183, align 4
  %184 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %185 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = bitcast i32* %186 to i8*
  %188 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %189 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %188, i32 0, i32 10
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  store i8* %187, i8** %192, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %195 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %194, i32 0, i32 10
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  store i32 %193, i32* %198, align 8
  %199 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %200 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %199, i32 0, i32 7
  %201 = load i8*, i8** %200, align 8
  %202 = icmp eq i8* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %158
  br label %208

204:                                              ; preds = %158
  %205 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %206 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %205, i32 0, i32 7
  %207 = load i8*, i8** %206, align 8
  br label %208

208:                                              ; preds = %204, %203
  %209 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @smb_setup_trans2request.padding, i64 0, i64 0), %203 ], [ %207, %204 ]
  %210 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %211 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %210, i32 0, i32 10
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 1
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  store i8* %209, i8** %214, align 8
  %215 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %216 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %219 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %218, i32 0, i32 10
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i64 1
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  store i32 %217, i32* %222, align 8
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %225 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %223, %226
  %228 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %229 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %228, i32 0, i32 8
  store i32 %227, i32* %229, align 8
  %230 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %231 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %279

234:                                              ; preds = %208
  %235 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %236 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 2
  store i32 %238, i32* %236, align 4
  %239 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %240 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %239, i32 0, i32 10
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i64 2
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @smb_setup_trans2request.padding, i64 0, i64 0), i8** %243, align 8
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %9, align 4
  %246 = sub nsw i32 %244, %245
  %247 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %248 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %246, %249
  %251 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %252 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %251, i32 0, i32 10
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i64 2
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  store i32 %250, i32* %255, align 8
  %256 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %257 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %260 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %259, i32 0, i32 10
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i64 3
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  store i8* %258, i8** %263, align 8
  %264 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %265 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %268 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %267, i32 0, i32 10
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i64 3
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 1
  store i32 %266, i32* %271, align 8
  %272 = load i32, i32* %10, align 4
  %273 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %274 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %272, %275
  %277 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %278 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %277, i32 0, i32 8
  store i32 %276, i32* %278, align 8
  br label %279

279:                                              ; preds = %234, %208
  %280 = load i32, i32* @smb_setup_bcc, align 4
  %281 = load %struct.smb_request*, %struct.smb_request** %3, align 8
  %282 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %281, i32 0, i32 9
  store i32 %280, i32* %282, align 4
  store i32 0, i32* %2, align 4
  br label %283

283:                                              ; preds = %279, %55
  %284 = load i32, i32* %2, align 4
  ret i32 %284
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @smb_setup_header(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WSET(i32*, i32, i32) #1

declare dso_local i32 @DSET(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
