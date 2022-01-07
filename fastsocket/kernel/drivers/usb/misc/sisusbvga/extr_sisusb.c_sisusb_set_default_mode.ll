; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_set_default_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_set_default_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }

@sisusb_set_default_mode.attrdata = internal constant [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\01\00\00\00", align 16
@sisusb_set_default_mode.crtcrdata = internal constant [25 x i8] c"_OP\82T\80\0B>\00@\00\00\00\00\00\00\EA\8C\DF(@\E7\04\A3\FF", align 16
@sisusb_set_default_mode.grcdata = internal constant [9 x i8] c"\00\00\00\00\00@\05\0F\FF", align 1
@sisusb_set_default_mode.crtcdata = internal constant [17 x i8] c"_OO\83U\81\0B>\E9\8B\DF\E8\0C\00\00\05\00", align 16
@SISSR = common dso_local global i32 0, align 4
@SISCR = common dso_local global i32 0, align 4
@SISMISCW = common dso_local global i32 0, align 4
@SISINPSTAT = common dso_local global i32 0, align 4
@SISAR = common dso_local global i32 0, align 4
@SISGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32)* @sisusb_set_default_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_set_default_mode(%struct.sisusb_usb_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sisusb_usb_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 640, i32* %8, align 4
  store i32 480, i32* %9, align 4
  store i32 2, i32* %10, align 4
  %15 = load i32, i32* @SISSR, align 4
  %16 = call i32 @GETIREG(i32 %15, i32 49, i32* %12)
  %17 = load i32, i32* @SISCR, align 4
  %18 = call i32 @GETIREG(i32 %17, i32 99, i32* %13)
  %19 = load i32, i32* @SISSR, align 4
  %20 = call i32 @SETIREGOR(i32 %19, i32 1, i32 32)
  %21 = load i32, i32* @SISCR, align 4
  %22 = load i32, i32* %13, align 4
  %23 = and i32 %22, 191
  %24 = trunc i32 %23 to i8
  %25 = call i32 @SETIREG(i32 %21, i32 99, i8 signext %24)
  %26 = load i32, i32* @SISCR, align 4
  %27 = call i32 @SETIREGOR(i32 %26, i32 23, i32 128)
  %28 = load i32, i32* @SISSR, align 4
  %29 = call i32 @SETIREGOR(i32 %28, i32 31, i32 4)
  %30 = load i32, i32* @SISSR, align 4
  %31 = call i32 @SETIREGAND(i32 %30, i32 7, i32 251)
  %32 = load i32, i32* @SISSR, align 4
  %33 = call i32 @SETIREG(i32 %32, i32 0, i8 signext 3)
  %34 = load i32, i32* @SISSR, align 4
  %35 = call i32 @SETIREG(i32 %34, i32 1, i8 signext 33)
  %36 = load i32, i32* @SISSR, align 4
  %37 = call i32 @SETIREG(i32 %36, i32 2, i8 signext 15)
  %38 = load i32, i32* @SISSR, align 4
  %39 = call i32 @SETIREG(i32 %38, i32 3, i8 signext 0)
  %40 = load i32, i32* @SISSR, align 4
  %41 = call i32 @SETIREG(i32 %40, i32 4, i8 signext 14)
  %42 = load i32, i32* @SISMISCW, align 4
  %43 = call i32 @SETREG(i32 %42, i8 signext 35)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %55, %2
  %45 = load i32, i32* %6, align 4
  %46 = icmp sle i32 %45, 24
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* @SISCR, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [25 x i8], [25 x i8]* @sisusb_set_default_mode.crtcrdata, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @SETIREG(i32 %48, i32 %49, i8 signext %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %44

58:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 19
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i32, i32* @SISINPSTAT, align 4
  %64 = call i32 @GETREG(i32 %63, i32* %14)
  %65 = load i32, i32* @SISAR, align 4
  %66 = load i32, i32* %6, align 4
  %67 = trunc i32 %66 to i8
  %68 = call i32 @SETREG(i32 %65, i8 signext %67)
  %69 = load i32, i32* @SISAR, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* @sisusb_set_default_mode.attrdata, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @SETREG(i32 %69, i8 signext %73)
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %59

78:                                               ; preds = %59
  %79 = load i32, i32* @SISINPSTAT, align 4
  %80 = call i32 @GETREG(i32 %79, i32* %14)
  %81 = load i32, i32* @SISAR, align 4
  %82 = call i32 @SETREG(i32 %81, i8 signext 20)
  %83 = load i32, i32* @SISAR, align 4
  %84 = call i32 @SETREG(i32 %83, i8 signext 0)
  %85 = load i32, i32* @SISINPSTAT, align 4
  %86 = call i32 @GETREG(i32 %85, i32* %14)
  %87 = load i32, i32* @SISAR, align 4
  %88 = call i32 @SETREG(i32 %87, i8 signext 32)
  %89 = load i32, i32* @SISINPSTAT, align 4
  %90 = call i32 @GETREG(i32 %89, i32* %14)
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %102, %78
  %92 = load i32, i32* %6, align 4
  %93 = icmp sle i32 %92, 8
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i32, i32* @SISGR, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [9 x i8], [9 x i8]* @sisusb_set_default_mode.grcdata, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @SETIREG(i32 %95, i32 %96, i8 signext %100)
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %91

105:                                              ; preds = %91
  %106 = load i32, i32* @SISGR, align 4
  %107 = call i32 @SETIREGAND(i32 %106, i32 5, i32 191)
  store i32 10, i32* %6, align 4
  br label %108

108:                                              ; preds = %115, %105
  %109 = load i32, i32* %6, align 4
  %110 = icmp sle i32 %109, 14
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i32, i32* @SISSR, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @SETIREG(i32 %112, i32 %113, i8 signext 0)
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %108

118:                                              ; preds = %108
  %119 = load i32, i32* @SISSR, align 4
  %120 = call i32 @SETIREGAND(i32 %119, i32 55, i32 254)
  %121 = load i32, i32* @SISMISCW, align 4
  %122 = call i32 @SETREG(i32 %121, i8 signext -17)
  %123 = load i32, i32* @SISCR, align 4
  %124 = call i32 @SETIREG(i32 %123, i32 17, i8 signext 0)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %136, %118
  %126 = load i32, i32* %6, align 4
  %127 = icmp sle i32 %126, 7
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load i32, i32* @SISCR, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [17 x i8], [17 x i8]* @sisusb_set_default_mode.crtcdata, i64 0, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = call i32 @SETIREG(i32 %129, i32 %130, i8 signext %134)
  br label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %125

141:                                              ; preds = %125
  store i32 16, i32* %7, align 4
  br label %142

142:                                              ; preds = %153, %141
  %143 = load i32, i32* %6, align 4
  %144 = icmp sle i32 %143, 10
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = load i32, i32* @SISCR, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [17 x i8], [17 x i8]* @sisusb_set_default_mode.crtcdata, i64 0, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = call i32 @SETIREG(i32 %146, i32 %147, i8 signext %151)
  br label %153

153:                                              ; preds = %145
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %142

158:                                              ; preds = %142
  store i32 21, i32* %7, align 4
  br label %159

159:                                              ; preds = %170, %158
  %160 = load i32, i32* %6, align 4
  %161 = icmp sle i32 %160, 12
  br i1 %161, label %162, label %175

162:                                              ; preds = %159
  %163 = load i32, i32* @SISCR, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [17 x i8], [17 x i8]* @sisusb_set_default_mode.crtcdata, i64 0, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = call i32 @SETIREG(i32 %163, i32 %164, i8 signext %168)
  br label %170

170:                                              ; preds = %162
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %159

175:                                              ; preds = %159
  store i32 10, i32* %7, align 4
  br label %176

176:                                              ; preds = %187, %175
  %177 = load i32, i32* %6, align 4
  %178 = icmp sle i32 %177, 15
  br i1 %178, label %179, label %192

179:                                              ; preds = %176
  %180 = load i32, i32* @SISSR, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [17 x i8], [17 x i8]* @sisusb_set_default_mode.crtcdata, i64 0, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = call i32 @SETIREG(i32 %180, i32 %181, i8 signext %185)
  br label %187

187:                                              ; preds = %179
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %176

192:                                              ; preds = %176
  %193 = load i32, i32* @SISSR, align 4
  %194 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @sisusb_set_default_mode.crtcdata, i64 0, i64 16), align 16
  %195 = sext i8 %194 to i32
  %196 = and i32 %195, 224
  %197 = trunc i32 %196 to i8
  %198 = call i32 @SETIREG(i32 %193, i32 14, i8 signext %197)
  %199 = load i32, i32* @SISCR, align 4
  %200 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @sisusb_set_default_mode.crtcdata, i64 0, i64 16), align 16
  %201 = sext i8 %200 to i32
  %202 = and i32 %201, 1
  %203 = shl i32 %202, 5
  %204 = trunc i32 %203 to i8
  %205 = call i32 @SETIREGANDOR(i32 %199, i32 9, i32 95, i8 signext %204)
  %206 = load i32, i32* @SISCR, align 4
  %207 = call i32 @SETIREG(i32 %206, i32 20, i8 signext 79)
  %208 = load i32, i32* %8, align 4
  %209 = sdiv i32 %208, 16
  %210 = load i32, i32* %10, align 4
  %211 = mul nsw i32 %210, 2
  %212 = mul nsw i32 %209, %211
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %8, align 4
  %214 = srem i32 %213, 16
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %192
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %11, align 4
  br label %220

220:                                              ; preds = %216, %192
  %221 = load i32, i32* @SISSR, align 4
  %222 = load i32, i32* %11, align 4
  %223 = ashr i32 %222, 8
  %224 = and i32 %223, 15
  %225 = trunc i32 %224 to i8
  %226 = call i32 @SETIREGANDOR(i32 %221, i32 14, i32 240, i8 signext %225)
  %227 = load i32, i32* @SISCR, align 4
  %228 = load i32, i32* %11, align 4
  %229 = and i32 %228, 255
  %230 = trunc i32 %229 to i8
  %231 = call i32 @SETIREG(i32 %227, i32 19, i8 signext %230)
  %232 = load i32, i32* %11, align 4
  %233 = shl i32 %232, 5
  store i32 %233, i32* %11, align 4
  %234 = load i32, i32* %11, align 4
  %235 = ashr i32 %234, 8
  store i32 %235, i32* %14, align 4
  %236 = load i32, i32* %11, align 4
  %237 = and i32 %236, 255
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %220
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %14, align 4
  br label %242

242:                                              ; preds = %239, %220
  %243 = load i32, i32* @SISSR, align 4
  %244 = load i32, i32* %14, align 4
  %245 = trunc i32 %244 to i8
  %246 = call i32 @SETIREG(i32 %243, i32 16, i8 signext %245)
  %247 = load i32, i32* @SISSR, align 4
  %248 = call i32 @SETIREG(i32 %247, i32 49, i8 signext 0)
  %249 = load i32, i32* @SISSR, align 4
  %250 = call i32 @SETIREG(i32 %249, i32 43, i8 signext 27)
  %251 = load i32, i32* @SISSR, align 4
  %252 = call i32 @SETIREG(i32 %251, i32 44, i8 signext -31)
  %253 = load i32, i32* @SISSR, align 4
  %254 = call i32 @SETIREG(i32 %253, i32 45, i8 signext 1)
  %255 = load i32, i32* @SISSR, align 4
  %256 = call i32 @SETIREGAND(i32 %255, i32 61, i32 254)
  %257 = load i32, i32* @SISSR, align 4
  %258 = call i32 @SETIREG(i32 %257, i32 8, i8 signext -82)
  %259 = load i32, i32* @SISSR, align 4
  %260 = call i32 @SETIREGAND(i32 %259, i32 9, i32 240)
  %261 = load i32, i32* @SISSR, align 4
  %262 = call i32 @SETIREG(i32 %261, i32 8, i8 signext 52)
  %263 = load i32, i32* @SISSR, align 4
  %264 = call i32 @SETIREGOR(i32 %263, i32 61, i32 1)
  %265 = load i32, i32* @SISSR, align 4
  %266 = call i32 @SETIREGAND(i32 %265, i32 31, i32 63)
  %267 = load i32, i32* @SISSR, align 4
  %268 = call i32 @SETIREGANDOR(i32 %267, i32 6, i32 192, i8 signext 10)
  %269 = load i32, i32* @SISCR, align 4
  %270 = call i32 @SETIREG(i32 %269, i32 25, i8 signext 0)
  %271 = load i32, i32* @SISCR, align 4
  %272 = call i32 @SETIREGAND(i32 %271, i32 26, i32 252)
  %273 = load i32, i32* @SISSR, align 4
  %274 = call i32 @SETIREGAND(i32 %273, i32 15, i32 183)
  %275 = load i32, i32* @SISSR, align 4
  %276 = call i32 @SETIREGAND(i32 %275, i32 49, i32 251)
  %277 = load i32, i32* @SISSR, align 4
  %278 = call i32 @SETIREGANDOR(i32 %277, i32 33, i32 31, i8 signext -96)
  %279 = load i32, i32* @SISSR, align 4
  %280 = call i32 @SETIREGAND(i32 %279, i32 50, i32 243)
  %281 = load i32, i32* @SISSR, align 4
  %282 = call i32 @SETIREGANDOR(i32 %281, i32 7, i32 248, i8 signext 3)
  %283 = load i32, i32* @SISCR, align 4
  %284 = call i32 @SETIREG(i32 %283, i32 82, i8 signext 108)
  %285 = load i32, i32* @SISCR, align 4
  %286 = call i32 @SETIREG(i32 %285, i32 13, i8 signext 0)
  %287 = load i32, i32* @SISCR, align 4
  %288 = call i32 @SETIREG(i32 %287, i32 12, i8 signext 0)
  %289 = load i32, i32* @SISSR, align 4
  %290 = call i32 @SETIREG(i32 %289, i32 13, i8 signext 0)
  %291 = load i32, i32* @SISSR, align 4
  %292 = call i32 @SETIREGAND(i32 %291, i32 55, i32 254)
  %293 = load i32, i32* @SISCR, align 4
  %294 = call i32 @SETIREG(i32 %293, i32 50, i8 signext 32)
  %295 = load i32, i32* @SISSR, align 4
  %296 = call i32 @SETIREGAND(i32 %295, i32 1, i32 223)
  %297 = load i32, i32* @SISCR, align 4
  %298 = load i32, i32* %13, align 4
  %299 = and i32 %298, 191
  %300 = trunc i32 %299 to i8
  %301 = call i32 @SETIREG(i32 %297, i32 99, i8 signext %300)
  %302 = load i32, i32* @SISSR, align 4
  %303 = load i32, i32* %12, align 4
  %304 = and i32 %303, 251
  %305 = trunc i32 %304 to i8
  %306 = call i32 @SETIREG(i32 %302, i32 49, i8 signext %305)
  %307 = load i32, i32* %4, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %320

309:                                              ; preds = %242
  %310 = load i32, i32* @SISSR, align 4
  %311 = call i32 @SETIREG(i32 %310, i32 32, i8 signext -95)
  %312 = load i32, i32* @SISSR, align 4
  %313 = call i32 @SETIREGOR(i32 %312, i32 30, i32 90)
  %314 = load i32, i32* @SISSR, align 4
  %315 = call i32 @SETIREG(i32 %314, i32 38, i8 signext 1)
  %316 = load i32, i32* @SISSR, align 4
  %317 = call i32 @SETIREG(i32 %316, i32 39, i8 signext 31)
  %318 = load i32, i32* @SISSR, align 4
  %319 = call i32 @SETIREG(i32 %318, i32 38, i8 signext 0)
  br label %320

320:                                              ; preds = %309, %242
  %321 = load i32, i32* @SISCR, align 4
  %322 = call i32 @SETIREG(i32 %321, i32 52, i8 signext 68)
  %323 = load i32, i32* %5, align 4
  ret i32 %323
}

declare dso_local i32 @GETIREG(i32, i32, i32*) #1

declare dso_local i32 @SETIREGOR(i32, i32, i32) #1

declare dso_local i32 @SETIREG(i32, i32, i8 signext) #1

declare dso_local i32 @SETIREGAND(i32, i32, i32) #1

declare dso_local i32 @SETREG(i32, i8 signext) #1

declare dso_local i32 @GETREG(i32, i32*) #1

declare dso_local i32 @SETIREGANDOR(i32, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
