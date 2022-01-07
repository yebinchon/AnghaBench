; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_input_scanner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_input_scanner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu_config = type { i32, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"<all end>\00", align 1
@MPU_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"<Trk data rq #%d>\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"<conductor rq>\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"<MPU: Unknown event %02x> \00", align 1
@len_tab = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Unknown MPU mark %02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"<SYX>\00", align 1
@ST_SONGSEL = common dso_local global i32 0, align 4
@TMR_CLOCK = common dso_local global i32 0, align 4
@TMR_START = common dso_local global i32 0, align 4
@TMR_CONTINUE = common dso_local global i32 0, align 4
@TMR_STOP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"unknown MIDI sysmsg %0x\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"MTC frame %x02\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"<EOX>\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@TMR_SPP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"Bad state %d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpu_config*, i8)* @mpu_input_scanner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu_input_scanner(%struct.mpu_config* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpu_config*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.mpu_config* %0, %struct.mpu_config** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %8 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %326 [
    i32 133, label %10
    i32 128, label %49
    i32 129, label %171
    i32 132, label %230
    i32 130, label %236
    i32 131, label %249
    i32 134, label %290
  ]

10:                                               ; preds = %2
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %36 [
    i32 248, label %13
    i32 252, label %14
    i32 253, label %16
    i32 254, label %24
    i32 240, label %26
    i32 241, label %26
    i32 242, label %26
    i32 243, label %26
    i32 244, label %26
    i32 245, label %26
    i32 246, label %26
    i32 247, label %26
    i32 249, label %31
    i32 255, label %33
  ]

13:                                               ; preds = %10
  br label %48

14:                                               ; preds = %10
  %15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %48

16:                                               ; preds = %10
  %17 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %18 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @mpu_timer_interrupt()
  br label %23

23:                                               ; preds = %21, %16
  br label %48

24:                                               ; preds = %10
  %25 = load i32, i32* @MPU_ACK, align 4
  store i32 %25, i32* %3, align 4
  br label %334

26:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 15
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %48

31:                                               ; preds = %10
  %32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %48

33:                                               ; preds = %10
  %34 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %35 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %34, i32 0, i32 0
  store i32 129, i32* %35, align 8
  br label %48

36:                                               ; preds = %10
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sle i32 %38, 239
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %42 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %41, i32 0, i32 0
  store i32 128, i32* %42, align 8
  br label %47

43:                                               ; preds = %36
  %44 = load i8, i8* %5, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %47, %33, %31, %26, %23, %14, %13
  br label %333

49:                                               ; preds = %2
  %50 = load i8, i8* %5, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 240
  %53 = ashr i32 %52, 4
  store i32 %53, i32* %6, align 4
  %54 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %55 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %54, i32 0, i32 0
  store i32 134, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 8
  br i1 %57, label %58, label %110

58:                                               ; preds = %49
  %59 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %60 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 240
  %63 = ashr i32 %62, 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 8
  store i32 %65, i32* %6, align 4
  %66 = load i32*, i32** @len_tab, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %73 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %75 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %74, i32 0, i32 2
  store i32 2, i32* %75, align 8
  %76 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %77 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %80 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %78, i32* %82, align 4
  %83 = load i8, i8* %5, align 1
  %84 = zext i8 %83 to i32
  %85 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %86 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %84, i32* %88, align 4
  %89 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %90 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %58
  %94 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %95 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %94, i32 0, i32 0
  store i32 133, i32* %95, align 8
  %96 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %97 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %100 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = bitcast i32* %101 to i8*
  %103 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %104 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @do_midi_msg(i32 %98, i8* %102, i32 %105)
  %107 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %108 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %107, i32 0, i32 2
  store i32 0, i32* %108, align 8
  br label %109

109:                                              ; preds = %93, %58
  br label %170

110:                                              ; preds = %49
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 15
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %115 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %114, i32 0, i32 0
  store i32 133, i32* %115, align 8
  %116 = load i8, i8* %5, align 1
  %117 = zext i8 %116 to i32
  switch i32 %117, label %121 [
    i32 248, label %118
    i32 249, label %119
    i32 252, label %120
  ]

118:                                              ; preds = %113
  br label %125

119:                                              ; preds = %113
  br label %125

120:                                              ; preds = %113
  br label %125

121:                                              ; preds = %113
  %122 = load i8, i8* %5, align 1
  %123 = zext i8 %122 to i32
  %124 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %121, %120, %119, %118
  br label %169

126:                                              ; preds = %110
  %127 = load i8, i8* %5, align 1
  %128 = zext i8 %127 to i32
  %129 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %130 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sub nsw i32 %131, 8
  store i32 %132, i32* %6, align 4
  %133 = load i32*, i32** @len_tab, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %139 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %141 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %140, i32 0, i32 2
  store i32 1, i32* %141, align 8
  %142 = load i8, i8* %5, align 1
  %143 = zext i8 %142 to i32
  %144 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %145 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %143, i32* %147, align 4
  %148 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %149 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = icmp sle i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %126
  %153 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %154 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %153, i32 0, i32 0
  store i32 133, i32* %154, align 8
  %155 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %156 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %159 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = bitcast i32* %160 to i8*
  %162 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %163 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @do_midi_msg(i32 %157, i8* %161, i32 %164)
  %166 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %167 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %166, i32 0, i32 2
  store i32 0, i32* %167, align 8
  br label %168

168:                                              ; preds = %152, %126
  br label %169

169:                                              ; preds = %168, %125
  br label %170

170:                                              ; preds = %169, %109
  br label %333

171:                                              ; preds = %2
  %172 = load i8, i8* %5, align 1
  %173 = zext i8 %172 to i32
  switch i32 %173, label %223 [
    i32 240, label %174
    i32 241, label %178
    i32 242, label %181
    i32 243, label %186
    i32 246, label %190
    i32 248, label %193
    i32 250, label %199
    i32 251, label %205
    i32 252, label %211
    i32 254, label %217
    i32 255, label %220
  ]

174:                                              ; preds = %171
  %175 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %176 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %177 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %176, i32 0, i32 0
  store i32 130, i32* %177, align 8
  br label %229

178:                                              ; preds = %171
  %179 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %180 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %179, i32 0, i32 0
  store i32 132, i32* %180, align 8
  br label %229

181:                                              ; preds = %171
  %182 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %183 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %182, i32 0, i32 0
  store i32 131, i32* %183, align 8
  %184 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %185 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %184, i32 0, i32 2
  store i32 0, i32* %185, align 8
  br label %229

186:                                              ; preds = %171
  %187 = load i32, i32* @ST_SONGSEL, align 4
  %188 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %189 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  br label %229

190:                                              ; preds = %171
  %191 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %192 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %191, i32 0, i32 0
  store i32 133, i32* %192, align 8
  br label %193

193:                                              ; preds = %171, %190
  %194 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %195 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %194, i32 0, i32 0
  store i32 133, i32* %195, align 8
  %196 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %197 = load i32, i32* @TMR_CLOCK, align 4
  %198 = call i32 @timer_ext_event(%struct.mpu_config* %196, i32 %197, i32 0)
  br label %229

199:                                              ; preds = %171
  %200 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %201 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %200, i32 0, i32 0
  store i32 133, i32* %201, align 8
  %202 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %203 = load i32, i32* @TMR_START, align 4
  %204 = call i32 @timer_ext_event(%struct.mpu_config* %202, i32 %203, i32 0)
  br label %229

205:                                              ; preds = %171
  %206 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %207 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %206, i32 0, i32 0
  store i32 133, i32* %207, align 8
  %208 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %209 = load i32, i32* @TMR_CONTINUE, align 4
  %210 = call i32 @timer_ext_event(%struct.mpu_config* %208, i32 %209, i32 0)
  br label %229

211:                                              ; preds = %171
  %212 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %213 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %212, i32 0, i32 0
  store i32 133, i32* %213, align 8
  %214 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %215 = load i32, i32* @TMR_STOP, align 4
  %216 = call i32 @timer_ext_event(%struct.mpu_config* %214, i32 %215, i32 0)
  br label %229

217:                                              ; preds = %171
  %218 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %219 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %218, i32 0, i32 0
  store i32 133, i32* %219, align 8
  br label %229

220:                                              ; preds = %171
  %221 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %222 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %221, i32 0, i32 0
  store i32 133, i32* %222, align 8
  br label %229

223:                                              ; preds = %171
  %224 = load i8, i8* %5, align 1
  %225 = zext i8 %224 to i32
  %226 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %225)
  %227 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %228 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %227, i32 0, i32 0
  store i32 133, i32* %228, align 8
  br label %229

229:                                              ; preds = %223, %220, %217, %211, %205, %199, %193, %186, %181, %178, %174
  br label %333

230:                                              ; preds = %2
  %231 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %232 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %231, i32 0, i32 0
  store i32 133, i32* %232, align 8
  %233 = load i8, i8* %5, align 1
  %234 = zext i8 %233 to i32
  %235 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %234)
  br label %333

236:                                              ; preds = %2
  %237 = load i8, i8* %5, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp eq i32 %238, 247
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %242 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %243 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %242, i32 0, i32 0
  store i32 133, i32* %243, align 8
  br label %248

244:                                              ; preds = %236
  %245 = load i8, i8* %5, align 1
  %246 = zext i8 %245 to i32
  %247 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %244, %240
  br label %333

249:                                              ; preds = %2
  %250 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %251 = call i32 @BUFTEST(%struct.mpu_config* %250)
  %252 = load i8, i8* %5, align 1
  %253 = zext i8 %252 to i32
  %254 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %255 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %258 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 8
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %256, i64 %261
  store i32 %253, i32* %262, align 4
  %263 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %264 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = icmp eq i32 %265, 2
  br i1 %266, label %267, label %289

267:                                              ; preds = %249
  %268 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %269 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %268, i32 0, i32 0
  store i32 133, i32* %269, align 8
  %270 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %271 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %270, i32 0, i32 2
  store i32 0, i32* %271, align 8
  %272 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %273 = load i32, i32* @TMR_SPP, align 4
  %274 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %275 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %274, i32 0, i32 3
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 127
  %280 = shl i32 %279, 7
  %281 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %282 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = and i32 %285, 127
  %287 = or i32 %280, %286
  %288 = call i32 @timer_ext_event(%struct.mpu_config* %272, i32 %273, i32 %287)
  br label %289

289:                                              ; preds = %267, %249
  br label %333

290:                                              ; preds = %2
  %291 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %292 = call i32 @BUFTEST(%struct.mpu_config* %291)
  %293 = load i8, i8* %5, align 1
  %294 = zext i8 %293 to i32
  %295 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %296 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %295, i32 0, i32 3
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %299 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %299, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i32, i32* %297, i64 %302
  store i32 %294, i32* %303, align 4
  %304 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %305 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %305, align 4
  %308 = icmp sle i32 %307, 0
  br i1 %308, label %309, label %325

309:                                              ; preds = %290
  %310 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %311 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %310, i32 0, i32 0
  store i32 133, i32* %311, align 8
  %312 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %313 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %316 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %315, i32 0, i32 3
  %317 = load i32*, i32** %316, align 8
  %318 = bitcast i32* %317 to i8*
  %319 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %320 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @do_midi_msg(i32 %314, i8* %318, i32 %321)
  %323 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %324 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %323, i32 0, i32 2
  store i32 0, i32* %324, align 8
  br label %325

325:                                              ; preds = %309, %290
  br label %333

326:                                              ; preds = %2
  %327 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %328 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %329)
  %331 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %332 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %331, i32 0, i32 0
  store i32 133, i32* %332, align 8
  br label %333

333:                                              ; preds = %326, %325, %289, %248, %230, %229, %170, %48
  store i32 1, i32* %3, align 4
  br label %334

334:                                              ; preds = %333, %24
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @mpu_timer_interrupt(...) #1

declare dso_local i32 @do_midi_msg(i32, i8*, i32) #1

declare dso_local i32 @timer_ext_event(%struct.mpu_config*, i32, i32) #1

declare dso_local i32 @BUFTEST(%struct.mpu_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
