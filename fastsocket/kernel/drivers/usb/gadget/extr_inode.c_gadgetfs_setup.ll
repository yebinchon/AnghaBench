; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }
%struct.dev_data = type { i32, i64, i32, i32, i32, i32, i32, %struct.usb_request*, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.usb_request = type { i32, i32, i64, %struct.TYPE_11__*, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.usb_gadgetfs_event = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.usb_ctrlrequest }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@STATE_DEV_UNCONNECTED = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"no high speed config??\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STATE_DEV_CONNECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"connected\0A\00", align 1
@GADGETFS_CONNECT = common dso_local global i32 0, align 4
@STATE_DEV_SETUP = common dso_local global i64 0, align 8
@DMA_ADDR_INVALID = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"configuration #%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s req%02x.%02x v%04x i%04x l%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"delegate\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GADGETFS_SETUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"ep_queue --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_ctrlrequest*)* @gadgetfs_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gadgetfs_setup(%struct.usb_gadget* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca %struct.dev_data*, align 8
  %7 = alloca %struct.usb_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_gadgetfs_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %14 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %15 = call %struct.dev_data* @get_gadget_data(%struct.usb_gadget* %14)
  store %struct.dev_data* %15, %struct.dev_data** %6, align 8
  %16 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %17 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %16, i32 0, i32 7
  %18 = load %struct.usb_request*, %struct.usb_request** %17, align 8
  store %struct.usb_request* %18, %struct.usb_request** %7, align 8
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %22 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %30 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %29, i32 0, i32 6
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %33 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %35 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @STATE_DEV_UNCONNECTED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %2
  %40 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %41 = call i64 @gadget_is_dualspeed(%struct.usb_gadget* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %45 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @USB_SPEED_HIGH, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %51 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %50, i32 0, i32 12
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = icmp eq %struct.TYPE_9__* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %56 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %55, i32 0, i32 6
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %59 = call i32 @ERROR(%struct.dev_data* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %390

62:                                               ; preds = %49, %43, %39
  %63 = load i64, i64* @STATE_DEV_CONNECTED, align 8
  %64 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %65 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %67 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %66, i32 0, i32 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %72 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %71, i32 0, i32 13
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  %75 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %76 = call i32 (%struct.dev_data*, i8*, ...) @INFO(%struct.dev_data* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %78 = load i32, i32* @GADGETFS_CONNECT, align 4
  %79 = call %struct.usb_gadgetfs_event* @next_event(%struct.dev_data* %77, i32 %78)
  store %struct.usb_gadgetfs_event* %79, %struct.usb_gadgetfs_event** %9, align 8
  %80 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %81 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.usb_gadgetfs_event*, %struct.usb_gadgetfs_event** %9, align 8
  %84 = getelementptr inbounds %struct.usb_gadgetfs_event, %struct.usb_gadgetfs_event* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %87 = call i32 @ep0_readable(%struct.dev_data* %86)
  br label %98

88:                                               ; preds = %2
  %89 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %90 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @STATE_DEV_SETUP, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %96 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %88
  br label %98

98:                                               ; preds = %97, %62
  %99 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %100 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %99, i32 0, i32 14
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %103 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %102, i32 0, i32 3
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %103, align 8
  %104 = load i32, i32* @DMA_ADDR_INVALID, align 4
  %105 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %106 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %108 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %107, i32 0, i32 4
  store i32* null, i32** %108, align 8
  %109 = load i32, i32* @EOPNOTSUPP, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %8, align 4
  %111 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %112 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %242 [
    i32 129, label %114
    i32 128, label %149
    i32 130, label %226
  ]

114:                                              ; preds = %98
  %115 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %116 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @USB_DIR_IN, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %243

121:                                              ; preds = %114
  %122 = load i32, i32* %10, align 4
  %123 = ashr i32 %122, 8
  switch i32 %123, label %147 [
    i32 134, label %124
    i32 135, label %132
    i32 131, label %146
  ]

124:                                              ; preds = %121
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @min(i32 %125, i32 4)
  store i32 %126, i32* %8, align 4
  %127 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %128 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %127, i32 0, i32 13
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %131 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %130, i32 0, i32 3
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %131, align 8
  br label %148

132:                                              ; preds = %121
  %133 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %134 = load i32, i32* %10, align 4
  %135 = ashr i32 %134, 8
  %136 = load i32, i32* %10, align 4
  %137 = and i32 %136, 255
  %138 = call i32 @config_buf(%struct.dev_data* %133, i32 %135, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %132
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @min(i32 %142, i32 %143)
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %141, %132
  br label %148

146:                                              ; preds = %121
  br label %243

147:                                              ; preds = %121
  br label %148

148:                                              ; preds = %147, %145, %124
  br label %351

149:                                              ; preds = %98
  %150 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %151 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %243

155:                                              ; preds = %149
  %156 = load i32, i32* %10, align 4
  %157 = icmp eq i32 0, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  store i32 0, i32* %8, align 4
  %159 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %160 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %159, i32 0, i32 2
  store i32 0, i32* %160, align 8
  %161 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %162 = call i32 @usb_gadget_vbus_draw(%struct.usb_gadget* %161, i32 8)
  br label %208

163:                                              ; preds = %155
  %164 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %165 = call i64 @gadget_is_dualspeed(%struct.usb_gadget* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %163
  %168 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %169 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @USB_SPEED_HIGH, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %167
  %174 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %175 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %174, i32 0, i32 12
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %12, align 4
  %179 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %180 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %179, i32 0, i32 12
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %13, align 4
  br label %195

184:                                              ; preds = %167, %163
  %185 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %186 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %185, i32 0, i32 11
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %12, align 4
  %190 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %191 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %190, i32 0, i32 11
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %184, %173
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  store i32 0, i32* %8, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %202 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %204 = load i32, i32* %13, align 4
  %205 = mul nsw i32 2, %204
  %206 = call i32 @usb_gadget_vbus_draw(%struct.usb_gadget* %203, i32 %205)
  br label %207

207:                                              ; preds = %199, %195
  br label %208

208:                                              ; preds = %207, %158
  %209 = load i32, i32* %8, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %208
  %212 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %213 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %214 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 (%struct.dev_data*, i8*, ...) @INFO(%struct.dev_data* %212, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %215)
  %217 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %218 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %217, i32 0, i32 10
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %211
  %222 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %223 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %222, i32 0, i32 3
  store i32 0, i32* %223, align 4
  br label %271

224:                                              ; preds = %211
  br label %225

225:                                              ; preds = %224, %208
  br label %351

226:                                              ; preds = %98
  %227 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %228 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 128
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %243

232:                                              ; preds = %226
  %233 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %234 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %237 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %236, i32 0, i32 3
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = bitcast %struct.TYPE_11__* %238 to i32*
  store i32 %235, i32* %239, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @min(i32 %240, i32 1)
  store i32 %241, i32* %8, align 4
  br label %351

242:                                              ; preds = %98
  br label %243

243:                                              ; preds = %242, %231, %154, %146, %120
  %244 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %245 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %246 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %245, i32 0, i32 10
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %251 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %252 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %255 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %10, align 4
  %258 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %259 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @le16_to_cpu(i32 %260)
  %262 = load i32, i32* %11, align 4
  %263 = call i32 @VDEBUG(%struct.dev_data* %244, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %250, i32 %253, i32 %256, i32 %257, i32 %261, i32 %262)
  %264 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %265 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %264, i32 0, i32 10
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %350

268:                                              ; preds = %243
  %269 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %270 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %269, i32 0, i32 3
  store i32 1, i32* %270, align 4
  br label %271

271:                                              ; preds = %268, %221
  %272 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %273 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @USB_DIR_IN, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 1, i32 0
  %280 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %281 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %280, i32 0, i32 4
  store i32 %279, i32* %281, align 8
  %282 = load i32, i32* %11, align 4
  %283 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %284 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %283, i32 0, i32 5
  store i32 %282, i32* %284, align 4
  %285 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %286 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %285, i32 0, i32 9
  store i32 0, i32* %286, align 4
  %287 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %288 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %287, i32 0, i32 8
  store i32 0, i32* %288, align 8
  store i32 0, i32* %8, align 4
  %289 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %290 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %271
  %294 = load i32, i32* %11, align 4
  %295 = icmp ne i32 %294, 0
  br label %296

296:                                              ; preds = %293, %271
  %297 = phi i1 [ false, %271 ], [ %295, %293 ]
  %298 = zext i1 %297 to i32
  %299 = call i32 @unlikely(i32 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %335

301:                                              ; preds = %296
  %302 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %303 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %302, i32 0, i32 1
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %303, align 8
  %305 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %306 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %305, i32 0, i32 7
  %307 = load %struct.usb_request*, %struct.usb_request** %306, align 8
  %308 = load i32, i32* %11, align 4
  %309 = call i32 @setup_req(%struct.TYPE_12__* %304, %struct.usb_request* %307, i32 %308)
  store i32 %309, i32* %8, align 4
  %310 = load i32, i32* %8, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %301
  br label %351

313:                                              ; preds = %301
  %314 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %315 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %314, i32 0, i32 1
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %315, align 8
  %317 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %318 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %317, i32 0, i32 7
  %319 = load %struct.usb_request*, %struct.usb_request** %318, align 8
  %320 = load i32, i32* @GFP_ATOMIC, align 4
  %321 = call i32 @usb_ep_queue(%struct.TYPE_12__* %316, %struct.usb_request* %319, i32 %320)
  store i32 %321, i32* %8, align 4
  %322 = load i32, i32* %8, align 4
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %332

324:                                              ; preds = %313
  %325 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %326 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %325, i32 0, i32 1
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %326, align 8
  %328 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %329 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %328, i32 0, i32 7
  %330 = load %struct.usb_request*, %struct.usb_request** %329, align 8
  %331 = call i32 @clean_req(%struct.TYPE_12__* %327, %struct.usb_request* %330)
  br label %351

332:                                              ; preds = %313
  %333 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %334 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %333, i32 0, i32 3
  store i32 0, i32* %334, align 4
  br label %335

335:                                              ; preds = %332, %296
  %336 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %337 = load i32, i32* @GADGETFS_SETUP, align 4
  %338 = call %struct.usb_gadgetfs_event* @next_event(%struct.dev_data* %336, i32 %337)
  store %struct.usb_gadgetfs_event* %338, %struct.usb_gadgetfs_event** %9, align 8
  %339 = load %struct.usb_gadgetfs_event*, %struct.usb_gadgetfs_event** %9, align 8
  %340 = getelementptr inbounds %struct.usb_gadgetfs_event, %struct.usb_gadgetfs_event* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 1
  %342 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %343 = bitcast %struct.usb_ctrlrequest* %341 to i8*
  %344 = bitcast %struct.usb_ctrlrequest* %342 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %343, i8* align 4 %344, i64 20, i1 false)
  %345 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %346 = call i32 @ep0_readable(%struct.dev_data* %345)
  %347 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %348 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %347, i32 0, i32 6
  %349 = call i32 @spin_unlock(i32* %348)
  store i32 0, i32* %3, align 4
  br label %390

350:                                              ; preds = %243
  br label %351

351:                                              ; preds = %350, %324, %312, %232, %225, %148
  %352 = load i32, i32* %8, align 4
  %353 = icmp sge i32 %352, 0
  br i1 %353, label %354, label %385

354:                                              ; preds = %351
  %355 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %356 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @STATE_DEV_SETUP, align 8
  %359 = icmp ne i64 %357, %358
  br i1 %359, label %360, label %385

360:                                              ; preds = %354
  %361 = load i32, i32* %8, align 4
  %362 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %363 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %362, i32 0, i32 0
  store i32 %361, i32* %363, align 8
  %364 = load i32, i32* %8, align 4
  %365 = load i32, i32* %11, align 4
  %366 = icmp slt i32 %364, %365
  %367 = zext i1 %366 to i32
  %368 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %369 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %368, i32 0, i32 1
  store i32 %367, i32* %369, align 4
  %370 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %371 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %370, i32 0, i32 1
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %371, align 8
  %373 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %374 = load i32, i32* @GFP_ATOMIC, align 4
  %375 = call i32 @usb_ep_queue(%struct.TYPE_12__* %372, %struct.usb_request* %373, i32 %374)
  store i32 %375, i32* %8, align 4
  %376 = load i32, i32* %8, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %384

378:                                              ; preds = %360
  %379 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %380 = load i32, i32* %8, align 4
  %381 = call i32 @DBG(%struct.dev_data* %379, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %380)
  %382 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %383 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %382, i32 0, i32 2
  store i64 0, i64* %383, align 8
  br label %384

384:                                              ; preds = %378, %360
  br label %385

385:                                              ; preds = %384, %354, %351
  %386 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %387 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %386, i32 0, i32 6
  %388 = call i32 @spin_unlock(i32* %387)
  %389 = load i32, i32* %8, align 4
  store i32 %389, i32* %3, align 4
  br label %390

390:                                              ; preds = %385, %335, %54
  %391 = load i32, i32* %3, align 4
  ret i32 %391
}

declare dso_local %struct.dev_data* @get_gadget_data(%struct.usb_gadget*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @gadget_is_dualspeed(%struct.usb_gadget*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ERROR(%struct.dev_data*, i8*) #1

declare dso_local i32 @INFO(%struct.dev_data*, i8*, ...) #1

declare dso_local %struct.usb_gadgetfs_event* @next_event(%struct.dev_data*, i32) #1

declare dso_local i32 @ep0_readable(%struct.dev_data*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @config_buf(%struct.dev_data*, i32, i32) #1

declare dso_local i32 @usb_gadget_vbus_draw(%struct.usb_gadget*, i32) #1

declare dso_local i32 @VDEBUG(%struct.dev_data*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @setup_req(%struct.TYPE_12__*, %struct.usb_request*, i32) #1

declare dso_local i32 @usb_ep_queue(%struct.TYPE_12__*, %struct.usb_request*, i32) #1

declare dso_local i32 @clean_req(%struct.TYPE_12__*, %struct.usb_request*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DBG(%struct.dev_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
