; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { i32, %struct.uea_softc* }
%struct.uea_softc = type { i64, i32, %struct.usb_device*, i8*, %struct.usbatm_data* }
%struct.usb_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.usb_interface = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device_id = type { i32 }

@UEA_INTR_IFACE_NO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@sync_wait = common dso_local global i64* null, align 8
@modem_index = common dso_local global i64 0, align 8
@UDSL_SKIP_HEAVY_INIT = common dso_local global i32 0, align 4
@UEA_US_IFACE_NO = common dso_local global i32 0, align 4
@ADI930 = common dso_local global i64 0, align 8
@UEA_DS_IFACE_NO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"uea_init: not enough memory !\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NB_MODEM = common dso_local global i64 0, align 8
@annex = common dso_local global i32* null, align 8
@ANNEXA = common dso_local global i8* null, align 8
@ANNEXB = common dso_local global i8* null, align 8
@AUTO_ANNEX_A = common dso_local global i32 0, align 4
@AUTO_ANNEX_B = common dso_local global i32 0, align 4
@altsetting = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"set alternate %u for 2 interface\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"using iso mode\0A\00", align 1
@UDSL_USE_ISOC = common dso_local global i32 0, align 4
@UDSL_IGNORE_EILSEQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"setting alternate %u failed for 2 interface, using bulk mode\0A\00", align 1
@attr_grp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbatm_data*, %struct.usb_interface*, %struct.usb_device_id*)* @uea_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_bind(%struct.usbatm_data* %0, %struct.usb_interface* %1, %struct.usb_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbatm_data*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_device_id*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.uea_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usbatm_data* %0, %struct.usbatm_data** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store %struct.usb_device_id* %2, %struct.usb_device_id** %7, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %8, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %22 = call i32 @uea_enters(%struct.usb_device* %21)
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @UEA_INTR_IFACE_NO, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %232

29:                                               ; preds = %3
  %30 = load i64*, i64** @sync_wait, align 8
  %31 = load i64, i64* @modem_index, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @UDSL_SKIP_HEAVY_INIT, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i32 [ 0, %35 ], [ %37, %36 ]
  %40 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %41 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %43 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %44 = load i32, i32* @UEA_US_IFACE_NO, align 4
  %45 = call i32 @claim_interface(%struct.usb_device* %42, %struct.usbatm_data* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %232

50:                                               ; preds = %38
  %51 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %52 = call i64 @UEA_CHIP_VERSION(%struct.usb_device_id* %51)
  %53 = load i64, i64* @ADI930, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %57 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %58 = load i32, i32* @UEA_DS_IFACE_NO, align 4
  %59 = call i32 @claim_interface(%struct.usb_device* %56, %struct.usbatm_data* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %232

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %50
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.uea_softc* @kzalloc(i32 40, i32 %66)
  store %struct.uea_softc* %67, %struct.uea_softc** %9, align 8
  %68 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %69 = icmp ne %struct.uea_softc* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %72 = call i32 (%struct.usb_device*, i8*, ...) @uea_err(%struct.usb_device* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %232

75:                                               ; preds = %65
  %76 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %77 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %78 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %77, i32 0, i32 2
  store %struct.usb_device* %76, %struct.usb_device** %78, align 8
  %79 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %80 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %81 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %80, i32 0, i32 1
  store %struct.uea_softc* %79, %struct.uea_softc** %81, align 8
  %82 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %83 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %84 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %83, i32 0, i32 4
  store %struct.usbatm_data* %82, %struct.usbatm_data** %84, align 8
  %85 = load i64, i64* @modem_index, align 8
  %86 = load i64, i64* @NB_MODEM, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = load i64, i64* @modem_index, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* @modem_index, align 8
  br label %92

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi i64 [ %89, %88 ], [ 0, %91 ]
  %94 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %95 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %97 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %100 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load i32*, i32** @annex, align 8
  %102 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %103 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %92
  %109 = load i8*, i8** @ANNEXA, align 8
  %110 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %111 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  br label %167

112:                                              ; preds = %92
  %113 = load i32*, i32** @annex, align 8
  %114 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %115 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load i8*, i8** @ANNEXB, align 8
  %122 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %123 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  br label %166

124:                                              ; preds = %112
  %125 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %126 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @AUTO_ANNEX_A, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i8*, i8** @ANNEXA, align 8
  %133 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %134 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  br label %165

135:                                              ; preds = %124
  %136 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %137 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @AUTO_ANNEX_B, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i8*, i8** @ANNEXB, align 8
  %144 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %145 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %144, i32 0, i32 3
  store i8* %143, i8** %145, align 8
  br label %164

146:                                              ; preds = %135
  %147 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %148 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %147, i32 0, i32 2
  %149 = load %struct.usb_device*, %struct.usb_device** %148, align 8
  %150 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @le16_to_cpu(i32 %152)
  %154 = and i32 %153, 128
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i8*, i8** @ANNEXB, align 8
  br label %160

158:                                              ; preds = %146
  %159 = load i8*, i8** @ANNEXA, align 8
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i8* [ %157, %156 ], [ %159, %158 ]
  %162 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %163 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %162, i32 0, i32 3
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %160, %142
  br label %165

165:                                              ; preds = %164, %131
  br label %166

166:                                              ; preds = %165, %120
  br label %167

167:                                              ; preds = %166, %108
  %168 = load i32*, i32** @altsetting, align 8
  %169 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %170 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %12, align 4
  %174 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %175 = call i64 @UEA_CHIP_VERSION(%struct.usb_device_id* %174)
  %176 = load i64, i64* @ADI930, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %208

178:                                              ; preds = %167
  %179 = load i32, i32* %12, align 4
  %180 = icmp ugt i32 %179, 0
  br i1 %180, label %181, label %208

181:                                              ; preds = %178
  %182 = load i32, i32* %12, align 4
  %183 = icmp ule i32 %182, 8
  br i1 %183, label %184, label %203

184:                                              ; preds = %181
  %185 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %186 = load i32, i32* @UEA_DS_IFACE_NO, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i64 @usb_set_interface(%struct.usb_device* %185, i32 %186, i32 %187)
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %184
  %191 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @uea_dbg(%struct.usb_device* %191, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %192)
  %194 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %195 = call i32 @uea_info(%struct.usb_device* %194, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i32, i32* @UDSL_USE_ISOC, align 4
  %197 = load i32, i32* @UDSL_IGNORE_EILSEQ, align 4
  %198 = or i32 %196, %197
  %199 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %200 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  br label %207

203:                                              ; preds = %184, %181
  %204 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %205 = load i32, i32* %12, align 4
  %206 = call i32 (%struct.usb_device*, i8*, ...) @uea_err(%struct.usb_device* %204, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %203, %190
  br label %208

208:                                              ; preds = %207, %178, %167
  %209 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %210 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = call i32 @sysfs_create_group(i32* %211, i32* @attr_grp)
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %10, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  br label %228

216:                                              ; preds = %208
  %217 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %218 = call i32 @uea_boot(%struct.uea_softc* %217)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %223

222:                                              ; preds = %216
  store i32 0, i32* %4, align 4
  br label %232

223:                                              ; preds = %221
  %224 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %225 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = call i32 @sysfs_remove_group(i32* %226, i32* @attr_grp)
  br label %228

228:                                              ; preds = %223, %215
  %229 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %230 = call i32 @kfree(%struct.uea_softc* %229)
  %231 = load i32, i32* %10, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %228, %222, %70, %62, %48, %26
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @uea_enters(%struct.usb_device*) #1

declare dso_local i32 @claim_interface(%struct.usb_device*, %struct.usbatm_data*, i32) #1

declare dso_local i64 @UEA_CHIP_VERSION(%struct.usb_device_id*) #1

declare dso_local %struct.uea_softc* @kzalloc(i32, i32) #1

declare dso_local i32 @uea_err(%struct.usb_device*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @uea_dbg(%struct.usb_device*, i8*, i32) #1

declare dso_local i32 @uea_info(%struct.usb_device*, i8*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @uea_boot(%struct.uea_softc*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.uea_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
