; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_qe_ep_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_qe_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { i32, i32, i32, i32, %struct.TYPE_3__, %struct.qe_ep* }
%struct.TYPE_3__ = type { i32 }
%struct.qe_ep = type { i64, i32, i32, %struct.TYPE_4__, i32, i32, i32*, i64, %struct.usb_endpoint_descriptor* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_endpoint_descriptor = type { i32, i32, i32 }

@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"-iso\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-int\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-bulk\00", align 1
@USB_DIR_BOTH = common dso_local global i32 0, align 4
@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@USBP_TM_CTL = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"malloc txframe failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to initialize %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_udc*, i8, %struct.usb_endpoint_descriptor*)* @qe_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_ep_init(%struct.qe_udc* %0, i8 zeroext %1, %struct.usb_endpoint_descriptor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qe_udc*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.qe_ep*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qe_udc* %0, %struct.qe_udc** %5, align 8
  store i8 %1, i8* %6, align 1
  store %struct.usb_endpoint_descriptor* %2, %struct.usb_endpoint_descriptor** %7, align 8
  %12 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %13 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %12, i32 0, i32 5
  %14 = load %struct.qe_ep*, %struct.qe_ep** %13, align 8
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %14, i64 %16
  store %struct.qe_ep* %17, %struct.qe_ep** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %19 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %163

25:                                               ; preds = %3
  %26 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %161 [
    i32 134, label %31
    i32 132, label %69
    i32 131, label %98
    i32 133, label %130
  ]

31:                                               ; preds = %25
  %32 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %33 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strstr(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %40 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strstr(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %31
  br label %286

46:                                               ; preds = %38
  %47 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %48 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %62 [
    i32 129, label %51
  ]

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 128
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 256
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 512
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %54, %51
  br label %68

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %46, %61
  %63 = load i32, i32* %11, align 4
  switch i32 %63, label %65 [
    i32 4, label %64
    i32 8, label %64
    i32 16, label %64
    i32 32, label %64
    i32 64, label %64
    i32 128, label %66
  ]

64:                                               ; preds = %62, %62, %62, %62, %62
  br label %67

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %62, %65
  br label %286

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67, %60
  br label %162

69:                                               ; preds = %25
  %70 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %71 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strstr(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %286

77:                                               ; preds = %69
  %78 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %79 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %92 [
    i32 129, label %82
    i32 130, label %87
  ]

82:                                               ; preds = %77
  %83 = load i32, i32* %11, align 4
  %84 = icmp sle i32 %83, 1024
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %97

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %77, %86
  %88 = load i32, i32* %11, align 4
  %89 = icmp sle i32 %88, 64
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %97

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %77, %91
  %93 = load i32, i32* %11, align 4
  %94 = icmp sle i32 %93, 8
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %97

96:                                               ; preds = %92
  br label %286

97:                                               ; preds = %95, %90, %85
  br label %162

98:                                               ; preds = %25
  %99 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %100 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @strstr(i32 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %98
  %106 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %107 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @strstr(i32 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105, %98
  br label %286

113:                                              ; preds = %105
  %114 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %115 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %128 [
    i32 129, label %118
    i32 130, label %123
  ]

118:                                              ; preds = %113
  %119 = load i32, i32* %11, align 4
  %120 = icmp sle i32 %119, 1024
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %129

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %113, %122
  %124 = load i32, i32* %11, align 4
  %125 = icmp sle i32 %124, 1023
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %129

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %113, %127
  br label %286

129:                                              ; preds = %126, %121
  br label %162

130:                                              ; preds = %25
  %131 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %132 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @strstr(i32 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %130
  %138 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %139 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @strstr(i32 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137, %130
  br label %286

145:                                              ; preds = %137
  %146 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %147 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %160 [
    i32 129, label %150
    i32 130, label %150
    i32 128, label %155
  ]

150:                                              ; preds = %145, %145
  %151 = load i32, i32* %11, align 4
  switch i32 %151, label %153 [
    i32 1, label %152
    i32 2, label %152
    i32 4, label %152
    i32 8, label %152
    i32 16, label %152
    i32 32, label %152
    i32 64, label %152
  ]

152:                                              ; preds = %150, %150, %150, %150, %150, %150, %150
  br label %154

153:                                              ; preds = %150
  br label %286

154:                                              ; preds = %152
  br label %155

155:                                              ; preds = %145, %154
  %156 = load i32, i32* %11, align 4
  switch i32 %156, label %158 [
    i32 1, label %157
    i32 2, label %157
    i32 4, label %157
    i32 8, label %157
  ]

157:                                              ; preds = %155, %155, %155, %155
  br label %159

158:                                              ; preds = %155
  br label %286

159:                                              ; preds = %157
  br label %160

160:                                              ; preds = %145, %159
  br label %286

161:                                              ; preds = %25
  br label %286

162:                                              ; preds = %129, %97, %68
  br label %163

163:                                              ; preds = %162, %3
  %164 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %165 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %164, i32 0, i32 2
  %166 = load i64, i64* %9, align 8
  %167 = call i32 @spin_lock_irqsave(i32* %165, i64 %166)
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %170 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  %172 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %173 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %176 = and i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %179 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %181 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %182 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %181, i32 0, i32 8
  store %struct.usb_endpoint_descriptor* %180, %struct.usb_endpoint_descriptor** %182, align 8
  %183 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %184 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %183, i32 0, i32 7
  store i64 0, i64* %184, align 8
  %185 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %186 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %185, i32 0, i32 1
  store i32 1, i32* %186, align 8
  %187 = load i8, i8* %6, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %163
  %191 = load i32, i32* @USB_DIR_BOTH, align 4
  %192 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %193 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  %194 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %195 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %194, i32 0, i32 0
  store i32 135, i32* %195, align 8
  %196 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %197 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %198 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 4
  br label %213

199:                                              ; preds = %163
  %200 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %201 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %204 = and i32 %202, %203
  switch i32 %204, label %211 [
    i32 135, label %205
    i32 136, label %208
  ]

205:                                              ; preds = %199
  %206 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %207 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %206, i32 0, i32 2
  store i32 135, i32* %207, align 4
  br label %212

208:                                              ; preds = %199
  %209 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %210 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %209, i32 0, i32 2
  store i32 136, i32* %210, align 4
  br label %211

211:                                              ; preds = %199, %208
  br label %212

212:                                              ; preds = %211, %205
  br label %213

213:                                              ; preds = %212, %190
  %214 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %215 = load i8, i8* %6, align 1
  %216 = call i32 @qe_ep_bd_init(%struct.qe_udc* %214, i8 zeroext %215)
  %217 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %218 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @USBP_TM_CTL, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %227, label %222

222:                                              ; preds = %213
  %223 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %224 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 135
  br i1 %226, label %227, label %234

227:                                              ; preds = %222, %213
  %228 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %229 = call i32 @qe_ep_rxbd_update(%struct.qe_ep* %228)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  br label %281

233:                                              ; preds = %227
  br label %234

234:                                              ; preds = %233, %222
  %235 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %236 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @USBP_TM_CTL, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %245, label %240

240:                                              ; preds = %234
  %241 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %242 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, 136
  br i1 %244, label %245, label %264

245:                                              ; preds = %240, %234
  %246 = load i32, i32* @GFP_ATOMIC, align 4
  %247 = call i32* @kmalloc(i32 4, i32 %246)
  %248 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %249 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %248, i32 0, i32 6
  store i32* %247, i32** %249, align 8
  %250 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %251 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %250, i32 0, i32 6
  %252 = load i32*, i32** %251, align 8
  %253 = icmp eq i32* %252, null
  br i1 %253, label %254, label %259

254:                                              ; preds = %245
  %255 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %256 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (i32, i8*, ...) @dev_err(i32 %257, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %272

259:                                              ; preds = %245
  %260 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %261 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %260, i32 0, i32 6
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 @qe_frame_init(i32* %262)
  br label %264

264:                                              ; preds = %259, %240
  %265 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %266 = load i8, i8* %6, align 1
  %267 = call i32 @qe_ep_register_init(%struct.qe_udc* %265, i8 zeroext %266)
  %268 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %269 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %268, i32 0, i32 2
  %270 = load i64, i64* %9, align 8
  %271 = call i32 @spin_unlock_irqrestore(i32* %269, i64 %270)
  store i32 0, i32* %4, align 4
  br label %297

272:                                              ; preds = %254
  %273 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %274 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @kfree(i32 %275)
  %277 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %278 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @kfree(i32 %279)
  br label %281

281:                                              ; preds = %272, %232
  %282 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %283 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %282, i32 0, i32 2
  %284 = load i64, i64* %9, align 8
  %285 = call i32 @spin_unlock_irqrestore(i32* %283, i64 %284)
  br label %286

286:                                              ; preds = %281, %161, %160, %158, %153, %144, %128, %112, %96, %76, %66, %45
  %287 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %288 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %291 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (i32, i8*, ...) @dev_err(i32 %289, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %293)
  %295 = load i32, i32* @ENODEV, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %4, align 4
  br label %297

297:                                              ; preds = %286, %264
  %298 = load i32, i32* %4, align 4
  ret i32 %298
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strstr(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qe_ep_bd_init(%struct.qe_udc*, i8 zeroext) #1

declare dso_local i32 @qe_ep_rxbd_update(%struct.qe_ep*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @qe_frame_init(i32*) #1

declare dso_local i32 @qe_ep_register_init(%struct.qe_udc*, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
