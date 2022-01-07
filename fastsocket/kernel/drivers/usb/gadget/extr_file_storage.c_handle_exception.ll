; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_handle_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.fsg_dev = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lun*, i32, %struct.fsg_buffhd*, %struct.fsg_buffhd*, %struct.fsg_buffhd*, i32, i64, i32, i64, i64, i32 }
%struct.lun = type { i64, i64, i32, i32, i64 }
%struct.fsg_buffhd = type { i32, i64, i64, i32, i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@SIGUSR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Main thread exiting on signal\0A\00", align 1
@NUM_BUFFERS = common dso_local global i32 0, align 4
@BUF_STATE_EMPTY = common dso_local global i32 0, align 4
@FSG_STATE_STATUS_PHASE = common dso_local global i64 0, align 8
@SS_NO_SENSE = common dso_local global i32 0, align 4
@FSG_STATE_IDLE = common dso_local global i8* null, align 8
@IGNORE_BULK_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsg_dev*)* @handle_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_exception(%struct.fsg_dev* %0) #0 {
  %2 = alloca %struct.fsg_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsg_buffhd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lun*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %2, align 8
  br label %13

13:                                               ; preds = %36, %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @dequeue_signal_lock(%struct.TYPE_3__* %14, i32* %16, i32* %3)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %37

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SIGUSR1, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %27 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 131
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %32 = call i32 @DBG(%struct.fsg_dev* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %35 = call i32 @raise_exception(%struct.fsg_dev* %34, i64 131)
  br label %36

36:                                               ; preds = %33, %21
  br label %13

37:                                               ; preds = %20
  %38 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %39 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %44 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %43, i32 0, i32 14
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %47 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %46, i32 0, i32 19
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @usb_ep_dequeue(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %42, %37
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %88, %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @NUM_BUFFERS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %57 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %56, i32 0, i32 11
  %58 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %58, i64 %60
  store %struct.fsg_buffhd* %61, %struct.fsg_buffhd** %7, align 8
  %62 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  %63 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %55
  %67 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %68 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  %71 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @usb_ep_dequeue(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %66, %55
  %75 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  %76 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %81 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %80, i32 0, i32 16
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  %84 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @usb_ep_dequeue(i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %79, %74
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %51

91:                                               ; preds = %51
  br label %92

92:                                               ; preds = %130, %91
  %93 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %94 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %118, %92
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @NUM_BUFFERS, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  %101 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %102 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %101, i32 0, i32 11
  %103 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %103, i64 %105
  store %struct.fsg_buffhd* %106, %struct.fsg_buffhd** %7, align 8
  %107 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  %108 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  %111 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %100
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %96

121:                                              ; preds = %96
  %122 = load i32, i32* %6, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %131

125:                                              ; preds = %121
  %126 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %127 = call i64 @sleep_thread(%struct.fsg_dev* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %359

130:                                              ; preds = %125
  br label %92

131:                                              ; preds = %124
  %132 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %133 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %132, i32 0, i32 18
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %138 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @usb_ep_fifo_flush(i32 %139)
  br label %141

141:                                              ; preds = %136, %131
  %142 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %143 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %142, i32 0, i32 17
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %148 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %147, i32 0, i32 16
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @usb_ep_fifo_flush(i32 %149)
  br label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %153 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %152, i32 0, i32 15
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %158 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @usb_ep_fifo_flush(i32 %159)
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %163 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %162, i32 0, i32 5
  %164 = call i32 @spin_lock_irq(i32* %163)
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %179, %161
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @NUM_BUFFERS, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %182

169:                                              ; preds = %165
  %170 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %171 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %170, i32 0, i32 11
  %172 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %172, i64 %174
  store %struct.fsg_buffhd* %175, %struct.fsg_buffhd** %7, align 8
  %176 = load i32, i32* @BUF_STATE_EMPTY, align 4
  %177 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  %178 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %169
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %165

182:                                              ; preds = %165
  %183 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %184 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %183, i32 0, i32 11
  %185 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %184, align 8
  %186 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %185, i64 0
  %187 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %188 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %187, i32 0, i32 12
  store %struct.fsg_buffhd* %186, %struct.fsg_buffhd** %188, align 8
  %189 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %190 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %189, i32 0, i32 13
  store %struct.fsg_buffhd* %186, %struct.fsg_buffhd** %190, align 8
  %191 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %192 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %11, align 4
  %194 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %195 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 8
  store i32 %196, i32* %9, align 4
  %197 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %198 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp eq i32 %201, 134
  br i1 %202, label %203, label %207

203:                                              ; preds = %182
  %204 = load i64, i64* @FSG_STATE_STATUS_PHASE, align 8
  %205 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %206 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %205, i32 0, i32 0
  store i64 %204, i64* %206, align 8
  br label %240

207:                                              ; preds = %182
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %232, %207
  %209 = load i32, i32* %5, align 4
  %210 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %211 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %235

214:                                              ; preds = %208
  %215 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %216 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %215, i32 0, i32 9
  %217 = load %struct.lun*, %struct.lun** %216, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.lun, %struct.lun* %217, i64 %219
  store %struct.lun* %220, %struct.lun** %10, align 8
  %221 = load %struct.lun*, %struct.lun** %10, align 8
  %222 = getelementptr inbounds %struct.lun, %struct.lun* %221, i32 0, i32 4
  store i64 0, i64* %222, align 8
  %223 = load i32, i32* @SS_NO_SENSE, align 4
  %224 = load %struct.lun*, %struct.lun** %10, align 8
  %225 = getelementptr inbounds %struct.lun, %struct.lun* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  %226 = load %struct.lun*, %struct.lun** %10, align 8
  %227 = getelementptr inbounds %struct.lun, %struct.lun* %226, i32 0, i32 3
  store i32 %223, i32* %227, align 4
  %228 = load %struct.lun*, %struct.lun** %10, align 8
  %229 = getelementptr inbounds %struct.lun, %struct.lun* %228, i32 0, i32 1
  store i64 0, i64* %229, align 8
  %230 = load %struct.lun*, %struct.lun** %10, align 8
  %231 = getelementptr inbounds %struct.lun, %struct.lun* %230, i32 0, i32 0
  store i64 0, i64* %231, align 8
  br label %232

232:                                              ; preds = %214
  %233 = load i32, i32* %5, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %5, align 4
  br label %208

235:                                              ; preds = %208
  %236 = load i8*, i8** @FSG_STATE_IDLE, align 8
  %237 = ptrtoint i8* %236 to i64
  %238 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %239 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %238, i32 0, i32 0
  store i64 %237, i64* %239, align 8
  br label %240

240:                                              ; preds = %235, %203
  %241 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %242 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %241, i32 0, i32 5
  %243 = call i32 @spin_unlock_irq(i32* %242)
  %244 = load i32, i32* %8, align 4
  switch i32 %244, label %245 [
    i32 134, label %246
    i32 129, label %266
    i32 130, label %298
    i32 133, label %320
    i32 132, label %343
    i32 131, label %348
    i32 128, label %348
  ]

245:                                              ; preds = %240
  br label %359

246:                                              ; preds = %240
  %247 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %248 = call i32 @send_status(%struct.fsg_dev* %247)
  %249 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %250 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %249, i32 0, i32 5
  %251 = call i32 @spin_lock_irq(i32* %250)
  %252 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %253 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @FSG_STATE_STATUS_PHASE, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %246
  %258 = load i8*, i8** @FSG_STATE_IDLE, align 8
  %259 = ptrtoint i8* %258 to i64
  %260 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %261 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  br label %262

262:                                              ; preds = %257, %246
  %263 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %264 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %263, i32 0, i32 5
  %265 = call i32 @spin_unlock_irq(i32* %264)
  br label %359

266:                                              ; preds = %240
  %267 = load i32, i32* @IGNORE_BULK_OUT, align 4
  %268 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %269 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %268, i32 0, i32 8
  %270 = call i32 @test_and_clear_bit(i32 %267, i32* %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %266
  %273 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %274 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %273, i32 0, i32 7
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @usb_ep_clear_halt(i32 %275)
  br label %277

277:                                              ; preds = %272, %266
  %278 = call i32 (...) @transport_is_bbb()
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %277
  %281 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %282 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %11, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %280
  %287 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %288 = call i32 @ep0_queue(%struct.fsg_dev* %287)
  br label %289

289:                                              ; preds = %286, %280
  br label %297

290:                                              ; preds = %277
  %291 = call i32 (...) @transport_is_cbi()
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %295 = call i32 @send_status(%struct.fsg_dev* %294)
  br label %296

296:                                              ; preds = %293, %290
  br label %297

297:                                              ; preds = %296, %289
  br label %359

298:                                              ; preds = %240
  %299 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %300 = call i32 @do_set_interface(%struct.fsg_dev* %299, i32 0)
  store i32 %300, i32* %12, align 4
  %301 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %302 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %11, align 4
  %305 = icmp ne i32 %303, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %298
  br label %359

307:                                              ; preds = %298
  %308 = load i32, i32* %12, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %307
  %311 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %312 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %313 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @fsg_set_halt(%struct.fsg_dev* %311, i32 %314)
  br label %319

316:                                              ; preds = %307
  %317 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %318 = call i32 @ep0_queue(%struct.fsg_dev* %317)
  br label %319

319:                                              ; preds = %316, %310
  br label %359

320:                                              ; preds = %240
  %321 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %322 = load i32, i32* %9, align 4
  %323 = call i32 @do_set_config(%struct.fsg_dev* %321, i32 %322)
  store i32 %323, i32* %12, align 4
  %324 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %325 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %11, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %320
  br label %359

330:                                              ; preds = %320
  %331 = load i32, i32* %12, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %330
  %334 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %335 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %336 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @fsg_set_halt(%struct.fsg_dev* %334, i32 %337)
  br label %342

339:                                              ; preds = %330
  %340 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %341 = call i32 @ep0_queue(%struct.fsg_dev* %340)
  br label %342

342:                                              ; preds = %339, %333
  br label %359

343:                                              ; preds = %240
  %344 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %345 = call i32 @fsync_all(%struct.fsg_dev* %344)
  %346 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %347 = call i32 @do_set_config(%struct.fsg_dev* %346, i32 0)
  br label %359

348:                                              ; preds = %240, %240
  %349 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %350 = call i32 @do_set_config(%struct.fsg_dev* %349, i32 0)
  %351 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %352 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %351, i32 0, i32 5
  %353 = call i32 @spin_lock_irq(i32* %352)
  %354 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %355 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %354, i32 0, i32 0
  store i64 128, i64* %355, align 8
  %356 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %357 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %356, i32 0, i32 5
  %358 = call i32 @spin_unlock_irq(i32* %357)
  br label %359

359:                                              ; preds = %129, %348, %343, %342, %329, %319, %306, %297, %262, %245
  ret void
}

declare dso_local i32 @dequeue_signal_lock(%struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*) #1

declare dso_local i32 @raise_exception(%struct.fsg_dev*, i64) #1

declare dso_local i32 @usb_ep_dequeue(i32, i32) #1

declare dso_local i64 @sleep_thread(%struct.fsg_dev*) #1

declare dso_local i32 @usb_ep_fifo_flush(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @send_status(%struct.fsg_dev*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @usb_ep_clear_halt(i32) #1

declare dso_local i32 @transport_is_bbb(...) #1

declare dso_local i32 @ep0_queue(%struct.fsg_dev*) #1

declare dso_local i32 @transport_is_cbi(...) #1

declare dso_local i32 @do_set_interface(%struct.fsg_dev*, i32) #1

declare dso_local i32 @fsg_set_halt(%struct.fsg_dev*, i32) #1

declare dso_local i32 @do_set_config(%struct.fsg_dev*, i32) #1

declare dso_local i32 @fsync_all(%struct.fsg_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
