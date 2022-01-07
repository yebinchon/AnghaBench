; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-core.c_ioctl_standard_iw_point.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-core.c_ioctl_standard_iw_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_point = type { i32, i32 }
%struct.iw_ioctl_description = type { i32, i32, i32, i32 }
%union.iwreq_data = type { i32 }
%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_encode_ext = type { i64 }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_DESCR_FLAG_NOMAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIOCSIWENCODEEXT = common dso_local global i32 0, align 4
@IW_DESCR_FLAG_EVENT = common dso_local global i32 0, align 4
@EIWCOMMIT = common dso_local global i32 0, align 4
@IW_DESCR_FLAG_RESTRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iw_point*, i32, %struct.iw_ioctl_description*, i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)*, %struct.net_device*, %struct.iw_request_info*)* @ioctl_standard_iw_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_standard_iw_point(%struct.iw_point* %0, i32 %1, %struct.iw_ioctl_description* %2, i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* %3, %struct.net_device* %4, %struct.iw_request_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iw_ioctl_description*, align 8
  %11 = alloca i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.iw_request_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.iw_encode_ext*, align 8
  %24 = alloca %union.iwreq_data*, align 8
  store %struct.iw_point* %0, %struct.iw_point** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.iw_ioctl_description* %2, %struct.iw_ioctl_description** %10, align 8
  store i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* %3, i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)** %11, align 8
  store %struct.net_device* %4, %struct.net_device** %12, align 8
  store %struct.iw_request_info* %5, %struct.iw_request_info** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %26 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %29 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %100 [
    i32 129, label %33
    i32 131, label %33
    i32 128, label %33
    i32 130, label %33
  ]

33:                                               ; preds = %6, %6, %6, %6
  %34 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %35 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %38 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 1, i32* %17, align 4
  br label %99

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @IW_IS_SET(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %98

47:                                               ; preds = %43
  %48 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %49 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %98

52:                                               ; preds = %47
  %53 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %54 = add i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %19, align 8
  %57 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %20, align 8
  %58 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %59 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %62 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %94

71:                                               ; preds = %52
  %72 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %73 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %21, align 4
  %76 = call i32 @copy_from_user(i8* %57, i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @EFAULT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %94

82:                                               ; preds = %71
  %83 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %84 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %57, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  store i32 1, i32* %17, align 4
  br label %93

93:                                               ; preds = %92, %82
  store i32 0, i32* %22, align 4
  br label %94

94:                                               ; preds = %93, %79, %68
  %95 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %22, align 4
  switch i32 %96, label %339 [
    i32 0, label %97
    i32 1, label %337
  ]

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %97, %47, %43
  br label %99

99:                                               ; preds = %98, %42
  br label %101

100:                                              ; preds = %6
  br label %101

101:                                              ; preds = %100, %99
  %102 = load i32, i32* %17, align 4
  %103 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %104 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @IW_IS_SET(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %101
  %111 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %112 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %117 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @EFAULT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %7, align 4
  br label %337

123:                                              ; preds = %115, %110
  %124 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %125 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %128 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32, i32* @E2BIG, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %7, align 4
  br label %337

134:                                              ; preds = %123
  %135 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %136 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %139 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %7, align 4
  br label %337

145:                                              ; preds = %134
  br label %177

146:                                              ; preds = %101
  %147 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %148 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* @EFAULT, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %7, align 4
  br label %337

154:                                              ; preds = %146
  %155 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %156 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %16, align 4
  %158 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %159 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @IW_DESCR_FLAG_NOMAX, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %154
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %167 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %165, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load i32, i32* %16, align 4
  %172 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %173 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %171, %174
  store i32 %175, i32* %15, align 4
  br label %176

176:                                              ; preds = %170, %164, %154
  br label %177

177:                                              ; preds = %176, %145
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* @GFP_KERNEL, align 4
  %180 = call i8* @kzalloc(i32 %178, i32 %179)
  store i8* %180, i8** %18, align 8
  %181 = load i8*, i8** %18, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %177
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %7, align 4
  br label %337

186:                                              ; preds = %177
  %187 = load i32, i32* %9, align 4
  %188 = call i64 @IW_IS_SET(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %233

190:                                              ; preds = %186
  %191 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %192 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %233

195:                                              ; preds = %190
  %196 = load i8*, i8** %18, align 8
  %197 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %198 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %201 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %204 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %202, %205
  %207 = call i32 @copy_from_user(i8* %196, i32 %199, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %195
  %210 = load i32, i32* @EFAULT, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %14, align 4
  br label %333

212:                                              ; preds = %195
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @SIOCSIWENCODEEXT, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %232

216:                                              ; preds = %212
  %217 = load i8*, i8** %18, align 8
  %218 = bitcast i8* %217 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %218, %struct.iw_encode_ext** %23, align 8
  %219 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %220 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %23, align 8
  %224 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = add i64 8, %225
  %227 = icmp ult i64 %222, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %216
  %229 = load i32, i32* @EFAULT, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %14, align 4
  br label %333

231:                                              ; preds = %216
  br label %232

232:                                              ; preds = %231, %212
  br label %233

233:                                              ; preds = %232, %190, %186
  %234 = load i32, i32* %9, align 4
  %235 = call i64 @IW_IS_GET(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %233
  %238 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %239 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @IW_DESCR_FLAG_NOMAX, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %237
  %245 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %246 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %249 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 4
  br label %250

250:                                              ; preds = %244, %237, %233
  %251 = load i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)*, i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)** %11, align 8
  %252 = load %struct.net_device*, %struct.net_device** %12, align 8
  %253 = load %struct.iw_request_info*, %struct.iw_request_info** %13, align 8
  %254 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %255 = bitcast %struct.iw_point* %254 to %union.iwreq_data*
  %256 = load i8*, i8** %18, align 8
  %257 = call i32 %251(%struct.net_device* %252, %struct.iw_request_info* %253, %union.iwreq_data* %255, i8* %256)
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %17, align 4
  %259 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %260 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, %258
  store i32 %262, i32* %260, align 4
  %263 = load i32, i32* %14, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %296, label %265

265:                                              ; preds = %250
  %266 = load i32, i32* %9, align 4
  %267 = call i64 @IW_IS_GET(i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %296

269:                                              ; preds = %265
  %270 = load i32, i32* %16, align 4
  %271 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %272 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %270, %273
  br i1 %274, label %275, label %278

275:                                              ; preds = %269
  %276 = load i32, i32* @E2BIG, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %14, align 4
  br label %333

278:                                              ; preds = %269
  %279 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %280 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i8*, i8** %18, align 8
  %283 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %284 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %287 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = mul nsw i32 %285, %288
  %290 = call i64 @copy_to_user(i32 %281, i8* %282, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %278
  %293 = load i32, i32* @EFAULT, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %14, align 4
  br label %333

295:                                              ; preds = %278
  br label %296

296:                                              ; preds = %295, %265, %250
  %297 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %298 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @IW_DESCR_FLAG_EVENT, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %332

303:                                              ; preds = %296
  %304 = load i32, i32* %14, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %303
  %307 = load i32, i32* %14, align 4
  %308 = load i32, i32* @EIWCOMMIT, align 4
  %309 = sub nsw i32 0, %308
  %310 = icmp eq i32 %307, %309
  br i1 %310, label %311, label %332

311:                                              ; preds = %306, %303
  %312 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %313 = bitcast %struct.iw_point* %312 to %union.iwreq_data*
  store %union.iwreq_data* %313, %union.iwreq_data** %24, align 8
  %314 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %10, align 8
  %315 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @IW_DESCR_FLAG_RESTRICT, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %311
  %321 = load %struct.net_device*, %struct.net_device** %12, align 8
  %322 = load i32, i32* %9, align 4
  %323 = load %union.iwreq_data*, %union.iwreq_data** %24, align 8
  %324 = call i32 @wireless_send_event(%struct.net_device* %321, i32 %322, %union.iwreq_data* %323, i8* null)
  br label %331

325:                                              ; preds = %311
  %326 = load %struct.net_device*, %struct.net_device** %12, align 8
  %327 = load i32, i32* %9, align 4
  %328 = load %union.iwreq_data*, %union.iwreq_data** %24, align 8
  %329 = load i8*, i8** %18, align 8
  %330 = call i32 @wireless_send_event(%struct.net_device* %326, i32 %327, %union.iwreq_data* %328, i8* %329)
  br label %331

331:                                              ; preds = %325, %320
  br label %332

332:                                              ; preds = %331, %306, %296
  br label %333

333:                                              ; preds = %332, %292, %275, %228, %209
  %334 = load i8*, i8** %18, align 8
  %335 = call i32 @kfree(i8* %334)
  %336 = load i32, i32* %14, align 4
  store i32 %336, i32* %7, align 4
  br label %337

337:                                              ; preds = %333, %183, %151, %142, %131, %120, %94
  %338 = load i32, i32* %7, align 4
  ret i32 %338

339:                                              ; preds = %94
  unreachable
}

declare dso_local i64 @IW_IS_SET(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @copy_from_user(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @IW_IS_GET(i32) #1

declare dso_local i64 @copy_to_user(i32, i8*, i32) #1

declare dso_local i32 @wireless_send_event(%struct.net_device*, i32, %union.iwreq_data*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
