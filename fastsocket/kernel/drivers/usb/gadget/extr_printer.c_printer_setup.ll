; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_printer.c_printer_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_printer.c_printer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }
%struct.printer_dev = type { i32, i32, i32, %struct.usb_request* }
%struct.usb_request = type { i32, i32, i64, i64, i32 (i32, %struct.usb_request*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ctrl req%02x.%02x v%04x i%04x l%d\0A\00", align 1
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@device_desc = common dso_local global i32 0, align 4
@stringtab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"HNP available\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"HNP needs a different root port\0A\00", align 1
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@PRINTER_INTERFACE = common dso_local global i32 0, align 4
@pnp_string = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"1284 PNP String: %x %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"unknown ctrl req%02x.%02x v%04x i%04x l%d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"ep_queue --> %d\0A\00", align 1
@dev_qualifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_ctrlrequest*)* @printer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printer_setup(%struct.usb_gadget* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.printer_dev*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %11 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %12 = call %struct.printer_dev* @get_gadget_data(%struct.usb_gadget* %11)
  store %struct.printer_dev* %12, %struct.printer_dev** %5, align 8
  %13 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %14 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %13, i32 0, i32 3
  %15 = load %struct.usb_request*, %struct.usb_request** %14, align 8
  store %struct.usb_request* %15, %struct.usb_request** %6, align 8
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %27 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %31 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %32 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %35 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (%struct.printer_dev*, i8*, ...) @DBG(%struct.printer_dev* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %42 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %41, i32 0, i32 4
  store i32 (i32, %struct.usb_request*)* @printer_setup_complete, i32 (i32, %struct.usb_request*)** %42, align 8
  %43 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %44 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @USB_TYPE_MASK, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %248 [
    i32 128, label %48
    i32 129, label %193
  ]

48:                                               ; preds = %2
  %49 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %50 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %191 [
    i32 133, label %52
    i32 131, label %107
    i32 134, label %134
    i32 130, label %151
    i32 132, label %167
  ]

52:                                               ; preds = %48
  %53 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %54 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @USB_DIR_IN, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %192

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = ashr i32 %60, 8
  switch i32 %61, label %106 [
    i32 138, label %62
    i32 139, label %70
    i32 135, label %92
  ]

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @min(i32 %63, i32 4)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %66 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @memcpy(i64 %67, i32* @device_desc, i32 %68)
  br label %106

70:                                               ; preds = %59
  %71 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %72 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %75 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 8
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 255
  %81 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %82 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @config_buf(i32 %73, i64 %76, i32 %78, i32 %80, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %70
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @min(i32 %88, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %87, %70
  br label %106

92:                                               ; preds = %59
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, 255
  %95 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %96 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @usb_gadget_get_string(i32* @stringtab, i32 %94, i64 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @min(i32 %102, i32 %103)
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %92
  br label %106

106:                                              ; preds = %59, %105, %91, %62
  br label %192

107:                                              ; preds = %48
  %108 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %109 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %192

113:                                              ; preds = %107
  %114 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %115 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %120 = call i32 (%struct.printer_dev*, i8*, ...) @DBG(%struct.printer_dev* %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %130

121:                                              ; preds = %113
  %122 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %123 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %128 = call i32 (%struct.printer_dev*, i8*, ...) @DBG(%struct.printer_dev* %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %121
  br label %130

130:                                              ; preds = %129, %118
  %131 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @printer_set_config(%struct.printer_dev* %131, i32 %132)
  store i32 %133, i32* %7, align 4
  br label %192

134:                                              ; preds = %48
  %135 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %136 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @USB_DIR_IN, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %192

141:                                              ; preds = %134
  %142 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %143 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %146 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i32*
  store i32 %144, i32* %148, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @min(i32 %149, i32 1)
  store i32 %150, i32* %7, align 4
  br label %192

151:                                              ; preds = %48
  %152 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %153 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %162, label %157

157:                                              ; preds = %151
  %158 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %159 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %157, %151
  br label %192

163:                                              ; preds = %157
  %164 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %165 = load i32, i32* @PRINTER_INTERFACE, align 4
  %166 = call i32 @set_interface(%struct.printer_dev* %164, i32 %165)
  store i32 %166, i32* %7, align 4
  br label %192

167:                                              ; preds = %48
  %168 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %169 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @USB_DIR_IN, align 4
  %172 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %173 = or i32 %171, %172
  %174 = icmp ne i32 %170, %173
  br i1 %174, label %180, label %175

175:                                              ; preds = %167
  %176 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %177 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %175, %167
  br label %192

181:                                              ; preds = %175
  %182 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %183 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %186 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to i32*
  store i32 %184, i32* %188, align 4
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @min(i32 %189, i32 1)
  store i32 %190, i32* %7, align 4
  br label %192

191:                                              ; preds = %48
  br label %249

192:                                              ; preds = %181, %180, %163, %162, %141, %140, %130, %112, %106, %58
  br label %261

193:                                              ; preds = %2
  %194 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %195 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  switch i32 %196, label %246 [
    i32 0, label %197
    i32 1, label %223
    i32 2, label %238
  ]

197:                                              ; preds = %193
  %198 = load i32, i32* %8, align 4
  %199 = ashr i32 %198, 8
  %200 = load i32, i32* @PRINTER_INTERFACE, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %247

203:                                              ; preds = %197
  %204 = load i32*, i32** @pnp_string, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 8
  %208 = load i32*, i32** @pnp_string, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %207, %210
  store i32 %211, i32* %7, align 4
  %212 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %213 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load i32*, i32** @pnp_string, align 8
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @memcpy(i64 %214, i32* %215, i32 %216)
  %218 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %219 = load i32, i32* %7, align 4
  %220 = load i32*, i32** @pnp_string, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  %222 = call i32 (%struct.printer_dev*, i8*, ...) @DBG(%struct.printer_dev* %218, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %219, i32* %221)
  br label %247

223:                                              ; preds = %193
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @PRINTER_INTERFACE, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  br label %247

228:                                              ; preds = %223
  %229 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %230 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %233 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = inttoptr i64 %234 to i32*
  store i32 %231, i32* %235, align 4
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @min(i32 %236, i32 1)
  store i32 %237, i32* %7, align 4
  br label %247

238:                                              ; preds = %193
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* @PRINTER_INTERFACE, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  br label %247

243:                                              ; preds = %238
  %244 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %245 = call i32 @printer_soft_reset(%struct.printer_dev* %244)
  store i32 0, i32* %7, align 4
  br label %247

246:                                              ; preds = %193
  br label %249

247:                                              ; preds = %243, %242, %228, %227, %203, %202
  br label %261

248:                                              ; preds = %2
  br label %249

249:                                              ; preds = %248, %246, %191
  %250 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %251 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %252 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %255 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @VDBG(%struct.printer_dev* %250, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %253, i32 %256, i32 %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %249, %247, %192
  %262 = load i32, i32* %7, align 4
  %263 = icmp sge i32 %262, 0
  br i1 %263, label %264, label %294

264:                                              ; preds = %261
  %265 = load i32, i32* %7, align 4
  %266 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %267 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %10, align 4
  %270 = icmp slt i32 %268, %269
  %271 = zext i1 %270 to i32
  %272 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %273 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %275 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %278 = load i32, i32* @GFP_ATOMIC, align 4
  %279 = call i32 @usb_ep_queue(i32 %276, %struct.usb_request* %277, i32 %278)
  store i32 %279, i32* %7, align 4
  %280 = load i32, i32* %7, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %293

282:                                              ; preds = %264
  %283 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %284 = load i32, i32* %7, align 4
  %285 = call i32 (%struct.printer_dev*, i8*, ...) @DBG(%struct.printer_dev* %283, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %284)
  %286 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %287 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %286, i32 0, i32 2
  store i64 0, i64* %287, align 8
  %288 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %289 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %292 = call i32 @printer_setup_complete(i32 %290, %struct.usb_request* %291)
  br label %293

293:                                              ; preds = %282, %264
  br label %294

294:                                              ; preds = %293, %261
  %295 = load i32, i32* %7, align 4
  ret i32 %295
}

declare dso_local %struct.printer_dev* @get_gadget_data(%struct.usb_gadget*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DBG(%struct.printer_dev*, i8*, ...) #1

declare dso_local i32 @printer_setup_complete(i32, %struct.usb_request*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @config_buf(i32, i64, i32, i32, i32) #1

declare dso_local i32 @usb_gadget_get_string(i32*, i32, i64) #1

declare dso_local i32 @printer_set_config(%struct.printer_dev*, i32) #1

declare dso_local i32 @set_interface(%struct.printer_dev*, i32) #1

declare dso_local i32 @printer_soft_reset(%struct.printer_dev*) #1

declare dso_local i32 @VDBG(%struct.printer_dev*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_ep_queue(i32, %struct.usb_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
