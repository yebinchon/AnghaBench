; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { %struct.file*, %struct.comedi_async* }
%struct.comedi_async = type { i64, i64, i32, i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i32*)* @comedi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_write(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
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
  br label %230

43:                                               ; preds = %4
  %44 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %16, align 8
  %45 = call %struct.comedi_subdevice* @comedi_get_write_subdevice(%struct.comedi_device_file_info* %44)
  store %struct.comedi_subdevice* %45, %struct.comedi_subdevice** %9, align 8
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %47 = icmp eq %struct.comedi_subdevice* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %230

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
  br label %230

58:                                               ; preds = %51
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 0
  %61 = load %struct.file*, %struct.file** %60, align 8
  %62 = icmp ne %struct.file* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 0, i32* %14, align 4
  br label %230

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
  br label %230

73:                                               ; preds = %64
  %74 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %75 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %74, i32 0, i32 3
  %76 = call i32 @add_wait_queue(i32* %75, i32* @wait)
  br label %77

77:                                               ; preds = %187, %73
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
  br i1 %85, label %86, label %224

86:                                               ; preds = %84
  %87 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %88 = call i32 @set_current_state(i32 %87)
  %89 = load i64, i64* %7, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %12, align 4
  %92 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %93 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %99 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %86
  %103 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %104 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %107 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %102, %86
  %112 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %113 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %114 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @comedi_buf_write_alloc(%struct.comedi_async* %112, i32 %116)
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %120 = call i32 @comedi_buf_write_n_allocated(%struct.comedi_async* %119)
  %121 = icmp sgt i32 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %124 = call i32 @comedi_buf_write_n_allocated(%struct.comedi_async* %123)
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %122, %111
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %129, %125
  %132 = load i32, i32* %11, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %188

134:                                              ; preds = %131
  %135 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %136 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %135)
  %137 = load i32, i32* @SRF_RUNNING, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %154, label %140

140:                                              ; preds = %134
  %141 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %142 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %141)
  %143 = load i32, i32* @SRF_ERROR, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, i32* @EPIPE, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %14, align 4
  br label %150

149:                                              ; preds = %140
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %149, %146
  %151 = load %struct.comedi_device*, %struct.comedi_device** %17, align 8
  %152 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %153 = call i32 @do_become_nonbusy(%struct.comedi_device* %151, %struct.comedi_subdevice* %152)
  br label %224

154:                                              ; preds = %134
  %155 = load %struct.file*, %struct.file** %5, align 8
  %156 = getelementptr inbounds %struct.file, %struct.file* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @O_NONBLOCK, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load i32, i32* @EAGAIN, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %14, align 4
  br label %224

164:                                              ; preds = %154
  %165 = load i32, i32* @current, align 4
  %166 = call i64 @signal_pending(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, i32* @ERESTARTSYS, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %14, align 4
  br label %224

171:                                              ; preds = %164
  %172 = call i32 (...) @schedule()
  %173 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %174 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %173, i32 0, i32 0
  %175 = load %struct.file*, %struct.file** %174, align 8
  %176 = icmp ne %struct.file* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %171
  br label %224

178:                                              ; preds = %171
  %179 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %180 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %179, i32 0, i32 0
  %181 = load %struct.file*, %struct.file** %180, align 8
  %182 = load %struct.file*, %struct.file** %5, align 8
  %183 = icmp ne %struct.file* %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load i32, i32* @EACCES, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %14, align 4
  br label %224

187:                                              ; preds = %178
  br label %77

188:                                              ; preds = %131
  %189 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %190 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %194 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %192, %195
  %197 = trunc i64 %196 to i32
  %198 = load i8*, i8** %6, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @copy_from_user(i32 %197, i8* %198, i32 %199)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %188
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %11, align 4
  %206 = sub nsw i32 %205, %204
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* @EFAULT, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %203, %188
  %210 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @comedi_buf_write_free(%struct.comedi_async* %210, i32 %211)
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %13, align 4
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = load i64, i64* %7, align 8
  %219 = sub i64 %218, %217
  store i64 %219, i64* %7, align 8
  %220 = load i32, i32* %11, align 4
  %221 = load i8*, i8** %6, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  store i8* %223, i8** %6, align 8
  br label %224

224:                                              ; preds = %209, %184, %177, %168, %161, %150, %84
  %225 = load i32, i32* @TASK_RUNNING, align 4
  %226 = call i32 @set_current_state(i32 %225)
  %227 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %228 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %227, i32 0, i32 3
  %229 = call i32 @remove_wait_queue(i32* %228, i32* @wait)
  br label %230

230:                                              ; preds = %224, %70, %63, %57, %48, %36
  %231 = load i32, i32* %13, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  %234 = load i32, i32* %13, align 4
  br label %237

235:                                              ; preds = %230
  %236 = load i32, i32* %14, align 4
  br label %237

237:                                              ; preds = %235, %233
  %238 = phi i32 [ %234, %233 ], [ %236, %235 ]
  ret i32 %238
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @iminor(i32) #1

declare dso_local %struct.comedi_device_file_info* @comedi_get_device_file_info(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local %struct.comedi_subdevice* @comedi_get_write_subdevice(%struct.comedi_device_file_info*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @comedi_buf_write_alloc(%struct.comedi_async*, i32) #1

declare dso_local i32 @comedi_buf_write_n_allocated(%struct.comedi_async*) #1

declare dso_local i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice*) #1

declare dso_local i32 @do_become_nonbusy(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @copy_from_user(i32, i8*, i32) #1

declare dso_local i32 @comedi_buf_write_free(%struct.comedi_async*, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
