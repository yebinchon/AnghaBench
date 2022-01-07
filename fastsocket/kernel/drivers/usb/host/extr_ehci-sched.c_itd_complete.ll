; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_itd_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_itd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, i64, i32 }
%struct.ehci_itd = type { i32*, i64, i32, %struct.ehci_iso_stream*, %struct.urb*, i64* }
%struct.ehci_iso_stream = type { i32, i32, %struct.TYPE_5__*, i32, i64, i32, i64, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.urb = type { i32, %struct.usb_device*, i32, i32, i32, %struct.usb_iso_packet_descriptor* }
%struct.usb_device = type { i32 }
%struct.usb_iso_packet_descriptor = type { i32, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@ISO_ERRS = common dso_local global i32 0, align 4
@EHCI_ISOC_BUF_ERR = common dso_local global i32 0, align 4
@ENOSR = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@EHCI_ISOC_BABBLE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@EHCI_ISOC_ACTIVE = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"deschedule devp %s ep%d%s-iso\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, %struct.ehci_itd*)* @itd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itd_complete(%struct.ehci_hcd* %0, %struct.ehci_itd* %1) #0 {
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca %struct.ehci_itd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ehci_iso_stream*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  store %struct.ehci_itd* %1, %struct.ehci_itd** %4, align 8
  %13 = load %struct.ehci_itd*, %struct.ehci_itd** %4, align 8
  %14 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %13, i32 0, i32 4
  %15 = load %struct.urb*, %struct.urb** %14, align 8
  store %struct.urb* %15, %struct.urb** %5, align 8
  store i32 -1, i32* %9, align 4
  %16 = load %struct.ehci_itd*, %struct.ehci_itd** %4, align 8
  %17 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %16, i32 0, i32 3
  %18 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %17, align 8
  store %struct.ehci_iso_stream* %18, %struct.ehci_iso_stream** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %169, %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp ult i32 %20, 8
  br i1 %21, label %22, label %172

22:                                               ; preds = %19
  %23 = load %struct.ehci_itd*, %struct.ehci_itd** %4, align 8
  %24 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %169

35:                                               ; preds = %22
  %36 = load %struct.ehci_itd*, %struct.ehci_itd** %4, align 8
  %37 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 5
  %45 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %45, i64 %47
  store %struct.usb_iso_packet_descriptor* %48, %struct.usb_iso_packet_descriptor** %6, align 8
  %49 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %50 = load %struct.ehci_itd*, %struct.ehci_itd** %4, align 8
  %51 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %50, i32 0, i32 5
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = call i32 @hc32_to_cpup(%struct.ehci_hcd* %49, i64* %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.ehci_itd*, %struct.ehci_itd** %4, align 8
  %58 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %57, i32 0, i32 5
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 0, i64* %62, align 8
  %63 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %64 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %67 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @ISO_ERRS, align 4
  %74 = and i32 %72, %73
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %138

77:                                               ; preds = %35
  %78 = load %struct.urb*, %struct.urb** %5, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @EHCI_ISOC_BUF_ERR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %77
  %87 = load %struct.urb*, %struct.urb** %5, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @usb_pipein(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @ENOSR, align 4
  %94 = sub nsw i32 0, %93
  br label %98

95:                                               ; preds = %86
  %96 = load i32, i32* @ECOMM, align 4
  %97 = sub nsw i32 0, %96
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i32 [ %94, %92 ], [ %97, %95 ]
  %100 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %101 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %118

102:                                              ; preds = %77
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @EHCI_ISOC_BABBLE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i32, i32* @EOVERFLOW, align 4
  %109 = sub nsw i32 0, %108
  %110 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %111 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %117

112:                                              ; preds = %102
  %113 = load i32, i32* @EPROTO, align 4
  %114 = sub nsw i32 0, %113
  %115 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %116 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %112, %107
  br label %118

118:                                              ; preds = %117, %98
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @EHCI_ISOC_BABBLE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  %125 = call i8* @EHCI_ITD_LENGTH(i32 %124)
  %126 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %127 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %129 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.urb*, %struct.urb** %5, align 8
  %132 = getelementptr inbounds %struct.urb, %struct.urb* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr i8, i8* %130, i64 %134
  %136 = ptrtoint i8* %135 to i32
  store i32 %136, i32* %132, align 8
  br label %137

137:                                              ; preds = %123, %118
  br label %168

138:                                              ; preds = %35
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @EHCI_ISOC_ACTIVE, align 4
  %141 = and i32 %139, %140
  %142 = icmp eq i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i64 @likely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %138
  %147 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %148 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i8* @EHCI_ITD_LENGTH(i32 %149)
  %151 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %152 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %154 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.urb*, %struct.urb** %5, align 8
  %157 = getelementptr inbounds %struct.urb, %struct.urb* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr i8, i8* %155, i64 %159
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* %157, align 8
  br label %167

162:                                              ; preds = %138
  %163 = load i32, i32* @EXDEV, align 4
  %164 = sub nsw i32 0, %163
  %165 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %166 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %162, %146
  br label %168

168:                                              ; preds = %167, %137
  br label %169

169:                                              ; preds = %168, %34
  %170 = load i32, i32* %8, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %19

172:                                              ; preds = %19
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  %175 = load %struct.urb*, %struct.urb** %5, align 8
  %176 = getelementptr inbounds %struct.urb, %struct.urb* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %174, %177
  %179 = zext i1 %178 to i32
  %180 = call i64 @likely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  br label %251

183:                                              ; preds = %172
  %184 = load %struct.urb*, %struct.urb** %5, align 8
  %185 = getelementptr inbounds %struct.urb, %struct.urb* %184, i32 0, i32 1
  %186 = load %struct.usb_device*, %struct.usb_device** %185, align 8
  store %struct.usb_device* %186, %struct.usb_device** %11, align 8
  %187 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %188 = load %struct.urb*, %struct.urb** %5, align 8
  %189 = call i32 @ehci_urb_done(%struct.ehci_hcd* %187, %struct.urb* %188, i32 0)
  store i32 1, i32* %12, align 4
  store %struct.urb* null, %struct.urb** %5, align 8
  %190 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %191 = call i32 @disable_periodic(%struct.ehci_hcd* %190)
  %192 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %193 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %192)
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, -1
  store i64 %197, i64* %195, align 8
  %198 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %199 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %198)
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %183
  %205 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %206 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = call i32 (...) @usb_amd_quirk_pll_enable()
  br label %211

211:                                              ; preds = %209, %204
  br label %212

212:                                              ; preds = %211, %183
  %213 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %214 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %213, i32 0, i32 5
  %215 = call i32 @list_is_singular(i32* %214)
  %216 = call i64 @unlikely(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %247

218:                                              ; preds = %212
  %219 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %220 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %223 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %222)
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = sub nsw i64 %227, %221
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %225, align 8
  %230 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %231 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %232 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %235 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = and i32 %236, 15
  %238 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %239 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @USB_DIR_IN, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %246 = call i32 @ehci_vdbg(%struct.ehci_hcd* %230, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %233, i32 %237, i8* %245)
  br label %247

247:                                              ; preds = %218, %212
  %248 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %249 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %250 = call i32 @iso_stream_put(%struct.ehci_hcd* %248, %struct.ehci_iso_stream* %249)
  br label %251

251:                                              ; preds = %247, %182
  %252 = load %struct.ehci_itd*, %struct.ehci_itd** %4, align 8
  %253 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %252, i32 0, i32 4
  store %struct.urb* null, %struct.urb** %253, align 8
  %254 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %255 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.ehci_itd*, %struct.ehci_itd** %4, align 8
  %258 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %256, %259
  br i1 %260, label %268, label %261

261:                                              ; preds = %251
  %262 = load %struct.ehci_itd*, %struct.ehci_itd** %4, align 8
  %263 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 7
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, -1
  br i1 %267, label %268, label %279

268:                                              ; preds = %261, %251
  %269 = load %struct.ehci_itd*, %struct.ehci_itd** %4, align 8
  %270 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %269, i32 0, i32 3
  store %struct.ehci_iso_stream* null, %struct.ehci_iso_stream** %270, align 8
  %271 = load %struct.ehci_itd*, %struct.ehci_itd** %4, align 8
  %272 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %271, i32 0, i32 2
  %273 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %274 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %273, i32 0, i32 3
  %275 = call i32 @list_move(i32* %272, i32* %274)
  %276 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %277 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %278 = call i32 @iso_stream_put(%struct.ehci_hcd* %276, %struct.ehci_iso_stream* %277)
  br label %297

279:                                              ; preds = %261
  %280 = load %struct.ehci_itd*, %struct.ehci_itd** %4, align 8
  %281 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %280, i32 0, i32 2
  %282 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %283 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %282, i32 0, i32 2
  %284 = call i32 @list_move(i32* %281, i32* %283)
  %285 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %286 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = icmp eq i32 %287, 2
  br i1 %288, label %289, label %296

289:                                              ; preds = %279
  %290 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %291 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %290, i32 0, i32 2
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  store i32* null, i32** %293, align 8
  %294 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %295 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %294, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %295, align 8
  br label %296

296:                                              ; preds = %289, %279
  br label %297

297:                                              ; preds = %296, %268
  %298 = load i32, i32* %12, align 4
  ret i32 %298
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hc32_to_cpup(%struct.ehci_hcd*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i8* @EHCI_ITD_LENGTH(i32) #1

declare dso_local i32 @ehci_urb_done(%struct.ehci_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @disable_periodic(%struct.ehci_hcd*) #1

declare dso_local %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @usb_amd_quirk_pll_enable(...) #1

declare dso_local i32 @list_is_singular(i32*) #1

declare dso_local i32 @ehci_vdbg(%struct.ehci_hcd*, i8*, i32, i32, i8*) #1

declare dso_local i32 @iso_stream_put(%struct.ehci_hcd*, %struct.ehci_iso_stream*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
