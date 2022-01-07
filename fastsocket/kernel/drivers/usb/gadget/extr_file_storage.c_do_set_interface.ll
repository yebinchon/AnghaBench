; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_set_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_set_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__*, i32, i32, i32, %struct.fsg_buffhd*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.fsg_buffhd*, i32 }
%struct.fsg_buffhd = type { %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"reset interface\0A\00", align 1
@NUM_BUFFERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"set interface %d\0A\00", align 1
@fs_bulk_in_desc = common dso_local global i32 0, align 4
@hs_bulk_in_desc = common dso_local global i32 0, align 4
@fs_bulk_out_desc = common dso_local global i32 0, align 4
@hs_bulk_out_desc = common dso_local global i32 0, align 4
@IGNORE_BULK_OUT = common dso_local global i32 0, align 4
@fs_intr_in_desc = common dso_local global i32 0, align 4
@hs_intr_in_desc = common dso_local global i32 0, align 4
@bulk_in_complete = common dso_local global i32 0, align 4
@bulk_out_complete = common dso_local global i32 0, align 4
@intr_in_complete = common dso_local global i32 0, align 4
@SS_RESET_OCCURRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, i32)* @do_set_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_set_interface(%struct.fsg_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.fsg_buffhd*, align 8
  %10 = alloca %struct.fsg_buffhd*, align 8
  store %struct.fsg_dev* %0, %struct.fsg_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %12 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %17 = call i32 (%struct.fsg_dev*, i8*, ...) @DBG(%struct.fsg_dev* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %2
  br label %19

19:                                               ; preds = %264, %217, %207, %183, %155, %140, %18
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %61, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NUM_BUFFERS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %26 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %25, i32 0, i32 10
  %27 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %27, i64 %29
  store %struct.fsg_buffhd* %30, %struct.fsg_buffhd** %9, align 8
  %31 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  %32 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %37 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  %40 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @usb_ep_free_request(i32 %38, %struct.TYPE_5__* %41)
  %43 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  %44 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %43, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %44, align 8
  br label %45

45:                                               ; preds = %35, %24
  %46 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  %47 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %52 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  %55 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @usb_ep_free_request(i32 %53, %struct.TYPE_5__* %56)
  %58 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  %59 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %58, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %59, align 8
  br label %60

60:                                               ; preds = %50, %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %20

64:                                               ; preds = %20
  %65 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %66 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %65, i32 0, i32 6
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %71 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %74 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %73, i32 0, i32 6
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = call i32 @usb_ep_free_request(i32 %72, %struct.TYPE_5__* %75)
  %77 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %78 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %77, i32 0, i32 6
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %78, align 8
  br label %79

79:                                               ; preds = %69, %64
  %80 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %81 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %86 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @usb_ep_disable(i32 %87)
  %89 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %90 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %84, %79
  %92 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %93 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %98 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @usb_ep_disable(i32 %99)
  %101 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %102 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %101, i32 0, i32 2
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %96, %91
  %104 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %105 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %110 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @usb_ep_disable(i32 %111)
  %113 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %114 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %113, i32 0, i32 3
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %108, %103
  %116 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %117 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %294

125:                                              ; preds = %120
  %126 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 (%struct.fsg_dev*, i8*, ...) @DBG(%struct.fsg_dev* %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %130 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %129, i32 0, i32 11
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.usb_endpoint_descriptor* @ep_desc(i32 %131, i32* @fs_bulk_in_desc, i32* @hs_bulk_in_desc)
  store %struct.usb_endpoint_descriptor* %132, %struct.usb_endpoint_descriptor** %8, align 8
  %133 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %134 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %135 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %138 = call i32 @enable_endpoint(%struct.fsg_dev* %133, i32 %136, %struct.usb_endpoint_descriptor* %137)
  store i32 %138, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %125
  br label %19

141:                                              ; preds = %125
  %142 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %143 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  %144 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %145 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %144, i32 0, i32 11
  %146 = load i32, i32* %145, align 8
  %147 = call %struct.usb_endpoint_descriptor* @ep_desc(i32 %146, i32* @fs_bulk_out_desc, i32* @hs_bulk_out_desc)
  store %struct.usb_endpoint_descriptor* %147, %struct.usb_endpoint_descriptor** %8, align 8
  %148 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %149 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %150 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %153 = call i32 @enable_endpoint(%struct.fsg_dev* %148, i32 %151, %struct.usb_endpoint_descriptor* %152)
  store i32 %153, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %141
  br label %19

156:                                              ; preds = %141
  %157 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %158 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %157, i32 0, i32 2
  store i32 1, i32* %158, align 8
  %159 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %160 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le16_to_cpu(i32 %161)
  %163 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %164 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %163, i32 0, i32 13
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @IGNORE_BULK_OUT, align 4
  %166 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %167 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %166, i32 0, i32 12
  %168 = call i32 @clear_bit(i32 %165, i32* %167)
  %169 = call i64 (...) @transport_is_cbi()
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %187

171:                                              ; preds = %156
  %172 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %173 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 8
  %175 = call %struct.usb_endpoint_descriptor* @ep_desc(i32 %174, i32* @fs_intr_in_desc, i32* @hs_intr_in_desc)
  store %struct.usb_endpoint_descriptor* %175, %struct.usb_endpoint_descriptor** %8, align 8
  %176 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %177 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %178 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %181 = call i32 @enable_endpoint(%struct.fsg_dev* %176, i32 %179, %struct.usb_endpoint_descriptor* %180)
  store i32 %181, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %171
  br label %19

184:                                              ; preds = %171
  %185 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %186 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %185, i32 0, i32 3
  store i32 1, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %156
  store i32 0, i32* %7, align 4
  br label %188

188:                                              ; preds = %249, %187
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* @NUM_BUFFERS, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %252

192:                                              ; preds = %188
  %193 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %194 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %193, i32 0, i32 10
  %195 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %195, i64 %197
  store %struct.fsg_buffhd* %198, %struct.fsg_buffhd** %10, align 8
  %199 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %200 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %201 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %200, i32 0, i32 9
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %204 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %203, i32 0, i32 1
  %205 = call i32 @alloc_request(%struct.fsg_dev* %199, i32 %202, %struct.TYPE_5__** %204)
  store i32 %205, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %192
  br label %19

208:                                              ; preds = %192
  %209 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %210 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %211 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %214 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %213, i32 0, i32 0
  %215 = call i32 @alloc_request(%struct.fsg_dev* %209, i32 %212, %struct.TYPE_5__** %214)
  store i32 %215, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  br label %19

218:                                              ; preds = %208
  %219 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %220 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %223 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %222, i32 0, i32 0
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 2
  store i32 %221, i32* %225, align 8
  %226 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %227 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %226, i32 0, i32 1
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 2
  store i32 %221, i32* %229, align 8
  %230 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %231 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %232 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %231, i32 0, i32 0
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  store %struct.fsg_buffhd* %230, %struct.fsg_buffhd** %234, align 8
  %235 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %236 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %235, i32 0, i32 1
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 1
  store %struct.fsg_buffhd* %230, %struct.fsg_buffhd** %238, align 8
  %239 = load i32, i32* @bulk_in_complete, align 4
  %240 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %241 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %240, i32 0, i32 1
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  store i32 %239, i32* %243, align 8
  %244 = load i32, i32* @bulk_out_complete, align 4
  %245 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %246 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %245, i32 0, i32 0
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  store i32 %244, i32* %248, align 8
  br label %249

249:                                              ; preds = %218
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %7, align 4
  br label %188

252:                                              ; preds = %188
  %253 = call i64 (...) @transport_is_cbi()
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %271

255:                                              ; preds = %252
  %256 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %257 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %258 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %261 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %260, i32 0, i32 6
  %262 = call i32 @alloc_request(%struct.fsg_dev* %256, i32 %259, %struct.TYPE_5__** %261)
  store i32 %262, i32* %6, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %255
  br label %19

265:                                              ; preds = %255
  %266 = load i32, i32* @intr_in_complete, align 4
  %267 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %268 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %267, i32 0, i32 6
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  store i32 %266, i32* %270, align 8
  br label %271

271:                                              ; preds = %265, %252
  %272 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %273 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %272, i32 0, i32 0
  store i32 1, i32* %273, align 8
  store i32 0, i32* %7, align 4
  br label %274

274:                                              ; preds = %289, %271
  %275 = load i32, i32* %7, align 4
  %276 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %277 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %292

280:                                              ; preds = %274
  %281 = load i32, i32* @SS_RESET_OCCURRED, align 4
  %282 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %283 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %282, i32 0, i32 5
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %283, align 8
  %285 = load i32, i32* %7, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  store i32 %281, i32* %288, align 4
  br label %289

289:                                              ; preds = %280
  %290 = load i32, i32* %7, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %7, align 4
  br label %274

292:                                              ; preds = %274
  %293 = load i32, i32* %6, align 4
  store i32 %293, i32* %3, align 4
  br label %294

294:                                              ; preds = %292, %123
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*, ...) #1

declare dso_local i32 @usb_ep_free_request(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @usb_ep_disable(i32) #1

declare dso_local %struct.usb_endpoint_descriptor* @ep_desc(i32, i32*, i32*) #1

declare dso_local i32 @enable_endpoint(%struct.fsg_dev*, i32, %struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @transport_is_cbi(...) #1

declare dso_local i32 @alloc_request(%struct.fsg_dev*, i32, %struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
