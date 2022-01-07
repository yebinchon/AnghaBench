; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { %struct.file*, %struct.comedi_async* }
%struct.comedi_async = type { i64, i64, i32, i64, i64, i32 }
%struct.comedi_device_file_info = type { %struct.comedi_device* }
%struct.comedi_device = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"no driver configured on comedi%i\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SRF_RUNNING = common dso_local global i32 0, align 4
@SRF_ERROR = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i32*)* @comedi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_read(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca %struct.comedi_async*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.comedi_device_file_info*, align 8
  %17 = alloca %struct.comedi_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @wait, align 4
  %19 = load i32, i32* @current, align 4
  %20 = call i32 @DECLARE_WAITQUEUE(i32 %18, i32 %19)
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iminor(i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call %struct.comedi_device_file_info* @comedi_get_device_file_info(i32 %27)
  store %struct.comedi_device_file_info* %28, %struct.comedi_device_file_info** %16, align 8
  %29 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %16, align 8
  %30 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %29, i32 0, i32 0
  %31 = load %struct.comedi_device*, %struct.comedi_device** %30, align 8
  store %struct.comedi_device* %31, %struct.comedi_device** %17, align 8
  %32 = load %struct.comedi_device*, %struct.comedi_device** %17, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %17, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %14, align 4
  br label %241

43:                                               ; preds = %4
  %44 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %16, align 8
  %45 = call %struct.comedi_subdevice* @comedi_get_read_subdevice(%struct.comedi_device_file_info* %44)
  store %struct.comedi_subdevice* %45, %struct.comedi_subdevice** %9, align 8
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %47 = icmp eq %struct.comedi_subdevice* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %241

51:                                               ; preds = %43
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 1
  %54 = load %struct.comedi_async*, %struct.comedi_async** %53, align 8
  store %struct.comedi_async* %54, %struct.comedi_async** %10, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  br label %241

58:                                               ; preds = %51
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 0
  %61 = load %struct.file*, %struct.file** %60, align 8
  %62 = icmp ne %struct.file* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 0, i32* %14, align 4
  br label %241

64:                                               ; preds = %58
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 0
  %67 = load %struct.file*, %struct.file** %66, align 8
  %68 = load %struct.file*, %struct.file** %5, align 8
  %69 = icmp ne %struct.file* %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EACCES, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %14, align 4
  br label %241

73:                                               ; preds = %64
  %74 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %75 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %74, i32 0, i32 5
  %76 = call i32 @add_wait_queue(i32* %75, i32* @wait)
  br label %77

77:                                               ; preds = %174, %73
  %78 = load i64, i64* %7, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %80, %77
  %85 = phi i1 [ false, %77 ], [ %83, %80 ]
  br i1 %85, label %86, label %214

86:                                               ; preds = %84
  %87 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %88 = call i32 @set_current_state(i32 %87)
  %89 = load i64, i64* %7, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %92 = call i32 @comedi_buf_read_n_available(%struct.comedi_async* %91)
  store i32 %92, i32* %12, align 4
  %93 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %94 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %100 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %86
  %104 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %105 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %108 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %103, %86
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %116, %112
  %119 = load i32, i32* %11, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %175

121:                                              ; preds = %118
  %122 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %123 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %122)
  %124 = load i32, i32* @SRF_RUNNING, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %121
  %128 = load %struct.comedi_device*, %struct.comedi_device** %17, align 8
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %130 = call i32 @do_become_nonbusy(%struct.comedi_device* %128, %struct.comedi_subdevice* %129)
  %131 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %132 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %131)
  %133 = load i32, i32* @SRF_ERROR, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32, i32* @EPIPE, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %14, align 4
  br label %140

139:                                              ; preds = %127
  store i32 0, i32* %14, align 4
  br label %140

140:                                              ; preds = %139, %136
  br label %214

141:                                              ; preds = %121
  %142 = load %struct.file*, %struct.file** %5, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @O_NONBLOCK, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load i32, i32* @EAGAIN, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %14, align 4
  br label %214

151:                                              ; preds = %141
  %152 = load i32, i32* @current, align 4
  %153 = call i64 @signal_pending(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* @ERESTARTSYS, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %14, align 4
  br label %214

158:                                              ; preds = %151
  %159 = call i32 (...) @schedule()
  %160 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %161 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %160, i32 0, i32 0
  %162 = load %struct.file*, %struct.file** %161, align 8
  %163 = icmp ne %struct.file* %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %158
  store i32 0, i32* %14, align 4
  br label %214

165:                                              ; preds = %158
  %166 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %167 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %166, i32 0, i32 0
  %168 = load %struct.file*, %struct.file** %167, align 8
  %169 = load %struct.file*, %struct.file** %5, align 8
  %170 = icmp ne %struct.file* %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i32, i32* @EACCES, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %14, align 4
  br label %214

174:                                              ; preds = %165
  br label %77

175:                                              ; preds = %118
  %176 = load i8*, i8** %6, align 8
  %177 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %178 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %182 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %180, %183
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @copy_to_user(i8* %176, i32 %185, i32 %186)
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %175
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %11, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* @EFAULT, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %14, align 4
  br label %196

196:                                              ; preds = %190, %175
  %197 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @comedi_buf_read_alloc(%struct.comedi_async* %197, i32 %198)
  %200 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @comedi_buf_read_free(%struct.comedi_async* %200, i32 %201)
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* %7, align 8
  %209 = sub i64 %208, %207
  store i64 %209, i64* %7, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load i8*, i8** %6, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %6, align 8
  br label %214

214:                                              ; preds = %196, %171, %164, %155, %148, %140, %84
  %215 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %216 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %215)
  %217 = load i32, i32* @SRF_ERROR, align 4
  %218 = load i32, i32* @SRF_RUNNING, align 4
  %219 = or i32 %217, %218
  %220 = and i32 %216, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %235, label %222

222:                                              ; preds = %214
  %223 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %224 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %227 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = sub nsw i64 %225, %228
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %222
  %232 = load %struct.comedi_device*, %struct.comedi_device** %17, align 8
  %233 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %234 = call i32 @do_become_nonbusy(%struct.comedi_device* %232, %struct.comedi_subdevice* %233)
  br label %235

235:                                              ; preds = %231, %222, %214
  %236 = load i32, i32* @TASK_RUNNING, align 4
  %237 = call i32 @set_current_state(i32 %236)
  %238 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %239 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %238, i32 0, i32 5
  %240 = call i32 @remove_wait_queue(i32* %239, i32* @wait)
  br label %241

241:                                              ; preds = %235, %70, %63, %57, %48, %36
  %242 = load i32, i32* %13, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = load i32, i32* %13, align 4
  br label %248

246:                                              ; preds = %241
  %247 = load i32, i32* %14, align 4
  br label %248

248:                                              ; preds = %246, %244
  %249 = phi i32 [ %245, %244 ], [ %247, %246 ]
  ret i32 %249
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @iminor(i32) #1

declare dso_local %struct.comedi_device_file_info* @comedi_get_device_file_info(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local %struct.comedi_subdevice* @comedi_get_read_subdevice(%struct.comedi_device_file_info*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @comedi_buf_read_n_available(%struct.comedi_async*) #1

declare dso_local i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice*) #1

declare dso_local i32 @do_become_nonbusy(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @copy_to_user(i8*, i32, i32) #1

declare dso_local i32 @comedi_buf_read_alloc(%struct.comedi_async*, i32) #1

declare dso_local i32 @comedi_buf_read_free(%struct.comedi_async*, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
