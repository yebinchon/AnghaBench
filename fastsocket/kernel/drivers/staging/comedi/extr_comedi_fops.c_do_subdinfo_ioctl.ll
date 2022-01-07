; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_do_subdinfo_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_do_subdinfo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i8*, i8*, i32, i32*, i64, i64, i64, i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SRF_RUNNING = common dso_local global i32 0, align 4
@SDF_RUNNING = common dso_local global i32 0, align 4
@SDF_BUSY = common dso_local global i32 0, align 4
@SDF_BUSY_OWNER = common dso_local global i32 0, align 4
@SDF_LOCKED = common dso_local global i32 0, align 4
@SDF_LOCK_OWNER = common dso_local global i32 0, align 4
@SDF_MAXDATA = common dso_local global i32 0, align 4
@SDF_FLAGS = common dso_local global i32 0, align 4
@SDF_RANGETYPE = common dso_local global i32 0, align 4
@SDF_CMD = common dso_local global i32 0, align 4
@insn_inval = common dso_local global i32 0, align 4
@COMEDI_SUPPORTED = common dso_local global i32 0, align 4
@COMEDI_UNSUPPORTED = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@TIMER_nanosec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdinfo*, i8*)* @do_subdinfo_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_subdinfo_ioctl(%struct.comedi_device* %0, %struct.comedi_subdinfo* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.comedi_subdinfo*, align 8
  %11 = alloca %struct.comedi_subdinfo*, align 8
  %12 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdinfo* %1, %struct.comedi_subdinfo** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.comedi_subdinfo* @kcalloc(i32 %15, i32 40, i32 %16)
  store %struct.comedi_subdinfo* %17, %struct.comedi_subdinfo** %10, align 8
  %18 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %10, align 8
  %19 = icmp ne %struct.comedi_subdinfo* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %240

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %217, %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %220

30:                                               ; preds = %24
  %31 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 1
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i64 %35
  store %struct.comedi_subdevice* %36, %struct.comedi_subdevice** %12, align 8
  %37 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %10, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %37, i64 %39
  store %struct.comedi_subdinfo* %40, %struct.comedi_subdinfo** %11, align 8
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 14
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %45 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %50 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %55 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %57 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %56)
  %58 = load i32, i32* @SRF_RUNNING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %30
  %62 = load i32, i32* @SDF_RUNNING, align 4
  %63 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %64 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %30
  %68 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %69 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %68, i32 0, i32 7
  store i32 5, i32* %69, align 4
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %74 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %79 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 10
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = icmp ne %struct.TYPE_2__* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %67
  %85 = load i32, i32* %9, align 4
  %86 = shl i32 %85, 24
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 10
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %86, %91
  %93 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %94 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %98

95:                                               ; preds = %67
  %96 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %97 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %84
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %100 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %103 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %105 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %98
  %109 = load i32, i32* @SDF_BUSY, align 4
  %110 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %111 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %98
  %115 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %116 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = icmp eq i8* %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load i32, i32* @SDF_BUSY_OWNER, align 4
  %122 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %123 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %114
  %127 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %128 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i32, i32* @SDF_LOCKED, align 4
  %133 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %134 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %131, %126
  %138 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %139 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = icmp eq i8* %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i32, i32* @SDF_LOCK_OWNER, align 4
  %145 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %146 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %143, %137
  %150 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %151 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %149
  %155 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %156 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i32, i32* @SDF_MAXDATA, align 4
  %161 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %162 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %159, %154, %149
  %166 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %167 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load i32, i32* @SDF_FLAGS, align 4
  %172 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %173 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %170, %165
  %177 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %178 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load i32, i32* @SDF_RANGETYPE, align 4
  %183 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %184 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %181, %176
  %188 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %189 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load i32, i32* @SDF_CMD, align 4
  %194 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %195 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %187
  %199 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %200 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, @insn_inval
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i32, i32* @COMEDI_SUPPORTED, align 4
  %205 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %206 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  br label %211

207:                                              ; preds = %198
  %208 = load i32, i32* @COMEDI_UNSUPPORTED, align 4
  %209 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %210 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %207, %203
  %212 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %213 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %11, align 8
  %216 = getelementptr inbounds %struct.comedi_subdinfo, %struct.comedi_subdinfo* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  br label %217

217:                                              ; preds = %211
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  br label %24

220:                                              ; preds = %24
  %221 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %6, align 8
  %222 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %10, align 8
  %223 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %224 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = mul i64 %226, 40
  %228 = trunc i64 %227 to i32
  %229 = call i32 @copy_to_user(%struct.comedi_subdinfo* %221, %struct.comedi_subdinfo* %222, i32 %228)
  store i32 %229, i32* %8, align 4
  %230 = load %struct.comedi_subdinfo*, %struct.comedi_subdinfo** %10, align 8
  %231 = call i32 @kfree(%struct.comedi_subdinfo* %230)
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %220
  %235 = load i32, i32* @EFAULT, align 4
  %236 = sub nsw i32 0, %235
  br label %238

237:                                              ; preds = %220
  br label %238

238:                                              ; preds = %237, %234
  %239 = phi i32 [ %236, %234 ], [ 0, %237 ]
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %238, %20
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local %struct.comedi_subdinfo* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice*) #1

declare dso_local i32 @copy_to_user(%struct.comedi_subdinfo*, %struct.comedi_subdinfo*, i32) #1

declare dso_local i32 @kfree(%struct.comedi_subdinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
