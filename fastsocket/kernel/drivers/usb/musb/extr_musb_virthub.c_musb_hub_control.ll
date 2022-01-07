; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_virthub.c_musb_hub_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_virthub.c_musb_hub_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.musb = type { i32, i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_hub_descriptor = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"clear feature %d\0A\00", align 1
@USB_PORT_STAT_RESET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@MUSB_PORT_STAT_RESUME = common dso_local global i32 0, align 4
@MUSB_POWER = common dso_local global i32 0, align 4
@MUSB_POWER_RESUME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"root port resume stopped, power %02x\0A\00", align 1
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_SUSPEND = common dso_local global i32 0, align 4
@OTG_STATE_A_HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"port status %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"TEST_J\0A\00", align 1
@MUSB_TEST_J = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"TEST_K\0A\00", align 1
@MUSB_TEST_K = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"TEST_SE0_NAK\0A\00", align 1
@MUSB_TEST_SE0_NAK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"TEST_PACKET\0A\00", align 1
@MUSB_TEST_PACKET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"TEST_FORCE_ENABLE\0A\00", align 1
@MUSB_TEST_FORCE_HOST = common dso_local global i32 0, align 4
@MUSB_TEST_FORCE_HS = common dso_local global i32 0, align 4
@MUSB_DEVCTL = common dso_local global i32 0, align 4
@MUSB_DEVCTL_SESSION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"TEST_FIFO_ACCESS\0A\00", align 1
@MUSB_TEST_FIFO_ACCESS = common dso_local global i32 0, align 4
@MUSB_TESTMODE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"set feature %d\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @musb_hub_control(%struct.usb_hcd* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.musb*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.usb_hub_descriptor*, align 8
  %19 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %21 = call %struct.musb* @hcd_to_musb(%struct.usb_hcd* %20)
  store %struct.musb* %21, %struct.musb** %14, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.musb*, %struct.musb** %14, align 8
  %23 = getelementptr inbounds %struct.musb, %struct.musb* %22, i32 0, i32 2
  %24 = load i64, i64* %17, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %27 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %6
  %34 = load %struct.musb*, %struct.musb** %14, align 8
  %35 = getelementptr inbounds %struct.musb, %struct.musb* %34, i32 0, i32 2
  %36 = load i64, i64* %17, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* @ESHUTDOWN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %309

40:                                               ; preds = %6
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %299 [
    i32 144, label %42
    i32 139, label %42
    i32 143, label %47
    i32 142, label %84
    i32 141, label %112
    i32 140, label %117
    i32 138, label %216
  ]

42:                                               ; preds = %40, %40
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %45 [
    i32 145, label %44
    i32 146, label %44
  ]

44:                                               ; preds = %42, %42
  br label %46

45:                                               ; preds = %42
  br label %300

46:                                               ; preds = %44
  br label %303

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 255
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %300

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %73 [
    i32 132, label %54
    i32 129, label %55
    i32 131, label %58
    i32 137, label %72
    i32 136, label %72
    i32 135, label %72
    i32 134, label %72
    i32 133, label %72
  ]

54:                                               ; preds = %52
  br label %74

55:                                               ; preds = %52
  %56 = load %struct.musb*, %struct.musb** %14, align 8
  %57 = call i32 @musb_port_suspend(%struct.musb* %56, i32 0)
  br label %74

58:                                               ; preds = %52
  %59 = load %struct.musb*, %struct.musb** %14, align 8
  %60 = call i32 @is_otg_enabled(%struct.musb* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %64 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62, %58
  %69 = load %struct.musb*, %struct.musb** %14, align 8
  %70 = call i32 @musb_set_vbus(%struct.musb* %69, i32 0)
  br label %71

71:                                               ; preds = %68, %62
  br label %74

72:                                               ; preds = %52, %52, %52, %52, %52
  br label %74

73:                                               ; preds = %52
  br label %300

74:                                               ; preds = %72, %71, %55, %54
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @DBG(i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = shl i32 1, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.musb*, %struct.musb** %14, align 8
  %81 = getelementptr inbounds %struct.musb, %struct.musb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %303

84:                                               ; preds = %40
  %85 = load i8*, i8** %12, align 8
  %86 = bitcast i8* %85 to %struct.usb_hub_descriptor*
  store %struct.usb_hub_descriptor* %86, %struct.usb_hub_descriptor** %18, align 8
  %87 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %18, align 8
  %88 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %87, i32 0, i32 0
  store i32 9, i32* %88, align 8
  %89 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %18, align 8
  %90 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %89, i32 0, i32 1
  store i32 41, i32* %90, align 4
  %91 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %18, align 8
  %92 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  %93 = call i32 @cpu_to_le16(i32 17)
  %94 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %18, align 8
  %95 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %18, align 8
  %97 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %96, i32 0, i32 3
  store i32 5, i32* %97, align 4
  %98 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %18, align 8
  %99 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %98, i32 0, i32 5
  store i32 0, i32* %99, align 8
  %100 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %18, align 8
  %101 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 2, i32* %105, align 4
  %106 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %18, align 8
  %107 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 255, i32* %111, align 4
  br label %303

112:                                              ; preds = %40
  store i32 0, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @cpu_to_le32(i32 %113)
  %115 = load i8*, i8** %12, align 8
  %116 = bitcast i8* %115 to i32*
  store i32 %114, i32* %116, align 4
  br label %303

117:                                              ; preds = %40
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %300

121:                                              ; preds = %117
  %122 = load %struct.musb*, %struct.musb** %14, align 8
  %123 = getelementptr inbounds %struct.musb, %struct.musb* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %121
  %129 = load i32, i32* @jiffies, align 4
  %130 = load %struct.musb*, %struct.musb** %14, align 8
  %131 = getelementptr inbounds %struct.musb, %struct.musb* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @time_after_eq(i32 %129, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load %struct.musb*, %struct.musb** %14, align 8
  %137 = call i32 @musb_port_reset(%struct.musb* %136, i32 0)
  br label %138

138:                                              ; preds = %135, %128, %121
  %139 = load %struct.musb*, %struct.musb** %14, align 8
  %140 = getelementptr inbounds %struct.musb, %struct.musb* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MUSB_PORT_STAT_RESUME, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %194

145:                                              ; preds = %138
  %146 = load i32, i32* @jiffies, align 4
  %147 = load %struct.musb*, %struct.musb** %14, align 8
  %148 = getelementptr inbounds %struct.musb, %struct.musb* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @time_after_eq(i32 %146, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %194

152:                                              ; preds = %145
  %153 = load %struct.musb*, %struct.musb** %14, align 8
  %154 = getelementptr inbounds %struct.musb, %struct.musb* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MUSB_POWER, align 4
  %157 = call i32 @musb_readb(i32 %155, i32 %156)
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* @MUSB_POWER_RESUME, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %19, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @DBG(i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  %164 = load %struct.musb*, %struct.musb** %14, align 8
  %165 = getelementptr inbounds %struct.musb, %struct.musb* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @MUSB_POWER, align 4
  %168 = load i32, i32* %19, align 4
  %169 = call i32 @musb_writeb(i32 %166, i32 %167, i32 %168)
  %170 = load %struct.musb*, %struct.musb** %14, align 8
  %171 = getelementptr inbounds %struct.musb, %struct.musb* %170, i32 0, i32 1
  store i32 1, i32* %171, align 4
  %172 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %173 = load i32, i32* @MUSB_PORT_STAT_RESUME, align 4
  %174 = or i32 %172, %173
  %175 = xor i32 %174, -1
  %176 = load %struct.musb*, %struct.musb** %14, align 8
  %177 = getelementptr inbounds %struct.musb, %struct.musb* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load i32, i32* @USB_PORT_STAT_C_SUSPEND, align 4
  %181 = shl i32 %180, 16
  %182 = load %struct.musb*, %struct.musb** %14, align 8
  %183 = getelementptr inbounds %struct.musb, %struct.musb* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load %struct.musb*, %struct.musb** %14, align 8
  %187 = call i32 @musb_to_hcd(%struct.musb* %186)
  %188 = call i32 @usb_hcd_poll_rh_status(i32 %187)
  %189 = load i32, i32* @OTG_STATE_A_HOST, align 4
  %190 = load %struct.musb*, %struct.musb** %14, align 8
  %191 = getelementptr inbounds %struct.musb, %struct.musb* %190, i32 0, i32 4
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  store i32 %189, i32* %193, align 4
  br label %194

194:                                              ; preds = %152, %145, %138
  %195 = load %struct.musb*, %struct.musb** %14, align 8
  %196 = getelementptr inbounds %struct.musb, %struct.musb* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @MUSB_PORT_STAT_RESUME, align 4
  %199 = xor i32 %198, -1
  %200 = and i32 %197, %199
  %201 = call i32 @cpu_to_le32(i32 %200)
  %202 = load i8*, i8** %12, align 8
  %203 = bitcast i8* %202 to i32*
  %204 = call i32 @put_unaligned(i32 %201, i32* %203)
  %205 = load i8*, i8** %12, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 2
  %207 = bitcast i8* %206 to i32*
  %208 = call i32 @get_unaligned(i32* %207)
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 2, i32 5
  %212 = load %struct.musb*, %struct.musb** %14, align 8
  %213 = getelementptr inbounds %struct.musb, %struct.musb* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @DBG(i32 %211, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %214)
  br label %303

216:                                              ; preds = %40
  %217 = load i32, i32* %11, align 4
  %218 = and i32 %217, 255
  %219 = icmp ne i32 %218, 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  br label %300

221:                                              ; preds = %216
  %222 = load i32, i32* %10, align 4
  switch i32 %222, label %289 [
    i32 131, label %223
    i32 130, label %237
    i32 129, label %240
    i32 128, label %243
  ]

223:                                              ; preds = %221
  %224 = load %struct.musb*, %struct.musb** %14, align 8
  %225 = call i32 @is_otg_enabled(%struct.musb* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %223
  %228 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %229 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %227, %223
  %234 = load %struct.musb*, %struct.musb** %14, align 8
  %235 = call i32 @musb_start(%struct.musb* %234)
  br label %236

236:                                              ; preds = %233, %227
  br label %290

237:                                              ; preds = %221
  %238 = load %struct.musb*, %struct.musb** %14, align 8
  %239 = call i32 @musb_port_reset(%struct.musb* %238, i32 1)
  br label %290

240:                                              ; preds = %221
  %241 = load %struct.musb*, %struct.musb** %14, align 8
  %242 = call i32 @musb_port_suspend(%struct.musb* %241, i32 1)
  br label %290

243:                                              ; preds = %221
  %244 = load %struct.musb*, %struct.musb** %14, align 8
  %245 = call i32 @is_host_active(%struct.musb* %244)
  %246 = call i64 @unlikely(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %243
  br label %300

249:                                              ; preds = %243
  %250 = load i32, i32* %11, align 4
  %251 = ashr i32 %250, 8
  store i32 %251, i32* %11, align 4
  %252 = load i32, i32* %11, align 4
  switch i32 %252, label %281 [
    i32 1, label %253
    i32 2, label %256
    i32 3, label %259
    i32 4, label %262
    i32 5, label %267
    i32 6, label %278
  ]

253:                                              ; preds = %249
  %254 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %255 = load i32, i32* @MUSB_TEST_J, align 4
  store i32 %255, i32* %15, align 4
  br label %282

256:                                              ; preds = %249
  %257 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %258 = load i32, i32* @MUSB_TEST_K, align 4
  store i32 %258, i32* %15, align 4
  br label %282

259:                                              ; preds = %249
  %260 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %261 = load i32, i32* @MUSB_TEST_SE0_NAK, align 4
  store i32 %261, i32* %15, align 4
  br label %282

262:                                              ; preds = %249
  %263 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %264 = load i32, i32* @MUSB_TEST_PACKET, align 4
  store i32 %264, i32* %15, align 4
  %265 = load %struct.musb*, %struct.musb** %14, align 8
  %266 = call i32 @musb_load_testpacket(%struct.musb* %265)
  br label %282

267:                                              ; preds = %249
  %268 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %269 = load i32, i32* @MUSB_TEST_FORCE_HOST, align 4
  %270 = load i32, i32* @MUSB_TEST_FORCE_HS, align 4
  %271 = or i32 %269, %270
  store i32 %271, i32* %15, align 4
  %272 = load %struct.musb*, %struct.musb** %14, align 8
  %273 = getelementptr inbounds %struct.musb, %struct.musb* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @MUSB_DEVCTL, align 4
  %276 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %277 = call i32 @musb_writeb(i32 %274, i32 %275, i32 %276)
  br label %282

278:                                              ; preds = %249
  %279 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %280 = load i32, i32* @MUSB_TEST_FIFO_ACCESS, align 4
  store i32 %280, i32* %15, align 4
  br label %282

281:                                              ; preds = %249
  br label %300

282:                                              ; preds = %278, %267, %262, %259, %256, %253
  %283 = load %struct.musb*, %struct.musb** %14, align 8
  %284 = getelementptr inbounds %struct.musb, %struct.musb* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @MUSB_TESTMODE, align 4
  %287 = load i32, i32* %15, align 4
  %288 = call i32 @musb_writeb(i32 %285, i32 %286, i32 %287)
  br label %290

289:                                              ; preds = %221
  br label %300

290:                                              ; preds = %282, %240, %237, %236
  %291 = load i32, i32* %10, align 4
  %292 = call i32 @DBG(i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %291)
  %293 = load i32, i32* %10, align 4
  %294 = shl i32 1, %293
  %295 = load %struct.musb*, %struct.musb** %14, align 8
  %296 = getelementptr inbounds %struct.musb, %struct.musb* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 8
  br label %303

299:                                              ; preds = %40
  br label %300

300:                                              ; preds = %299, %289, %281, %248, %220, %120, %73, %51, %45
  %301 = load i32, i32* @EPIPE, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %16, align 4
  br label %303

303:                                              ; preds = %300, %290, %194, %112, %84, %74, %46
  %304 = load %struct.musb*, %struct.musb** %14, align 8
  %305 = getelementptr inbounds %struct.musb, %struct.musb* %304, i32 0, i32 2
  %306 = load i64, i64* %17, align 8
  %307 = call i32 @spin_unlock_irqrestore(i32* %305, i64 %306)
  %308 = load i32, i32* %16, align 4
  store i32 %308, i32* %7, align 4
  br label %309

309:                                              ; preds = %303, %33
  %310 = load i32, i32* %7, align 4
  ret i32 %310
}

declare dso_local %struct.musb* @hcd_to_musb(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @musb_port_suspend(%struct.musb*, i32) #1

declare dso_local i32 @is_otg_enabled(%struct.musb*) #1

declare dso_local i32 @musb_set_vbus(%struct.musb*, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @time_after_eq(i32, i32) #1

declare dso_local i32 @musb_port_reset(%struct.musb*, i32) #1

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

declare dso_local i32 @usb_hcd_poll_rh_status(i32) #1

declare dso_local i32 @musb_to_hcd(%struct.musb*) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @musb_start(%struct.musb*) #1

declare dso_local i32 @is_host_active(%struct.musb*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @musb_load_testpacket(%struct.musb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
