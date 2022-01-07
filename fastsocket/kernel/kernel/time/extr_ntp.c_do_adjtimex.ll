; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_ntp.c_do_adjtimex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_ntp.c_do_adjtimex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timex = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_2__, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@ADJ_ADJTIME = common dso_local global i32 0, align 4
@ADJ_OFFSET_SINGLESHOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADJ_OFFSET_READONLY = common dso_local global i32 0, align 4
@CAP_SYS_TIME = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ADJ_TICK = common dso_local global i32 0, align 4
@USER_HZ = common dso_local global i32 0, align 4
@ADJ_SETOFFSET = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@ADJ_NANO = common dso_local global i32 0, align 4
@ntp_lock = common dso_local global i32 0, align 4
@time_adjust = common dso_local global i64 0, align 8
@time_offset = common dso_local global i32 0, align 4
@NTP_INTERVAL_FREQ = common dso_local global i32 0, align 4
@NTP_SCALE_SHIFT = common dso_local global i32 0, align 4
@time_status = common dso_local global i32 0, align 4
@STA_NANO = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@time_state = common dso_local global i32 0, align 4
@STA_UNSYNC = common dso_local global i32 0, align 4
@STA_CLOCKERR = common dso_local global i32 0, align 4
@TIME_ERROR = common dso_local global i32 0, align 4
@time_freq = common dso_local global i32 0, align 4
@PPM_SCALE_INV_SHIFT = common dso_local global i32 0, align 4
@PPM_SCALE_INV = common dso_local global i32 0, align 4
@time_maxerror = common dso_local global i32 0, align 4
@time_esterror = common dso_local global i32 0, align 4
@time_constant = common dso_local global i32 0, align 4
@MAXFREQ_SCALED = common dso_local global i32 0, align 4
@PPM_SCALE = common dso_local global i32 0, align 4
@tick_usec = common dso_local global i32 0, align 4
@time_tai = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_adjtimex(%struct.timex* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timex*, align 8
  %4 = alloca %struct.timespec, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca i64, align 8
  store %struct.timex* %0, %struct.timex** %3, align 8
  %8 = load %struct.timex*, %struct.timex** %3, align 8
  %9 = getelementptr inbounds %struct.timex, %struct.timex* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ADJ_ADJTIME, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %1
  %15 = load %struct.timex*, %struct.timex** %3, align 8
  %16 = getelementptr inbounds %struct.timex, %struct.timex* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ADJ_OFFSET_SINGLESHOT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %266

24:                                               ; preds = %14
  %25 = load %struct.timex*, %struct.timex** %3, align 8
  %26 = getelementptr inbounds %struct.timex, %struct.timex* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ADJ_OFFSET_READONLY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @CAP_SYS_TIME, align 4
  %33 = call i32 @capable(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %266

38:                                               ; preds = %31, %24
  br label %76

39:                                               ; preds = %1
  %40 = load %struct.timex*, %struct.timex** %3, align 8
  %41 = getelementptr inbounds %struct.timex, %struct.timex* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @CAP_SYS_TIME, align 4
  %46 = call i32 @capable(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %266

51:                                               ; preds = %44, %39
  %52 = load %struct.timex*, %struct.timex** %3, align 8
  %53 = getelementptr inbounds %struct.timex, %struct.timex* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ADJ_TICK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  %59 = load %struct.timex*, %struct.timex** %3, align 8
  %60 = getelementptr inbounds %struct.timex, %struct.timex* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @USER_HZ, align 4
  %63 = sdiv i32 900000, %62
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.timex*, %struct.timex** %3, align 8
  %67 = getelementptr inbounds %struct.timex, %struct.timex* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @USER_HZ, align 4
  %70 = sdiv i32 1100000, %69
  %71 = icmp sgt i32 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65, %58
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %266

75:                                               ; preds = %65, %51
  br label %76

76:                                               ; preds = %75, %38
  %77 = load %struct.timex*, %struct.timex** %3, align 8
  %78 = getelementptr inbounds %struct.timex, %struct.timex* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ADJ_SETOFFSET, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %124

83:                                               ; preds = %76
  %84 = load %struct.timex*, %struct.timex** %3, align 8
  %85 = getelementptr inbounds %struct.timex, %struct.timex* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @NSEC_PER_SEC, align 8
  %90 = icmp uge i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %266

94:                                               ; preds = %83
  %95 = load %struct.timex*, %struct.timex** %3, align 8
  %96 = getelementptr inbounds %struct.timex, %struct.timex* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = load %struct.timex*, %struct.timex** %3, align 8
  %101 = getelementptr inbounds %struct.timex, %struct.timex* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @CAP_SYS_TIME, align 4
  %106 = call i32 @capable(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %94
  %109 = load i32, i32* @EPERM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %266

111:                                              ; preds = %94
  %112 = load %struct.timex*, %struct.timex** %3, align 8
  %113 = getelementptr inbounds %struct.timex, %struct.timex* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ADJ_NANO, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %120, 1000
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %118, %111
  %123 = call i32 @timekeeping_inject_offset(%struct.timespec* %6)
  br label %124

124:                                              ; preds = %122, %76
  %125 = call i32 @getnstimeofday(%struct.timespec* %4)
  %126 = call i32 @spin_lock_irq(i32* @ntp_lock)
  %127 = load %struct.timex*, %struct.timex** %3, align 8
  %128 = getelementptr inbounds %struct.timex, %struct.timex* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ADJ_ADJTIME, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %124
  %134 = load i64, i64* @time_adjust, align 8
  store i64 %134, i64* %7, align 8
  %135 = load %struct.timex*, %struct.timex** %3, align 8
  %136 = getelementptr inbounds %struct.timex, %struct.timex* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @ADJ_OFFSET_READONLY, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %133
  %142 = load %struct.timex*, %struct.timex** %3, align 8
  %143 = getelementptr inbounds %struct.timex, %struct.timex* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* @time_adjust, align 8
  %145 = call i32 (...) @ntp_update_frequency()
  br label %146

146:                                              ; preds = %141, %133
  %147 = load i64, i64* %7, align 8
  %148 = load %struct.timex*, %struct.timex** %3, align 8
  %149 = getelementptr inbounds %struct.timex, %struct.timex* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  br label %178

150:                                              ; preds = %124
  %151 = load %struct.timex*, %struct.timex** %3, align 8
  %152 = getelementptr inbounds %struct.timex, %struct.timex* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.timex*, %struct.timex** %3, align 8
  %157 = call i32 @process_adjtimex_modes(%struct.timex* %156, %struct.timespec* %4)
  br label %158

158:                                              ; preds = %155, %150
  %159 = load i32, i32* @time_offset, align 4
  %160 = load i32, i32* @NTP_INTERVAL_FREQ, align 4
  %161 = mul nsw i32 %159, %160
  %162 = load i32, i32* @NTP_SCALE_SHIFT, align 4
  %163 = call i8* @shift_right(i32 %161, i32 %162)
  %164 = ptrtoint i8* %163 to i64
  %165 = load %struct.timex*, %struct.timex** %3, align 8
  %166 = getelementptr inbounds %struct.timex, %struct.timex* %165, i32 0, i32 2
  store i64 %164, i64* %166, align 8
  %167 = load i32, i32* @time_status, align 4
  %168 = load i32, i32* @STA_NANO, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %158
  %172 = load i64, i64* @NSEC_PER_USEC, align 8
  %173 = load %struct.timex*, %struct.timex** %3, align 8
  %174 = getelementptr inbounds %struct.timex, %struct.timex* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = sdiv i64 %175, %172
  store i64 %176, i64* %174, align 8
  br label %177

177:                                              ; preds = %171, %158
  br label %178

178:                                              ; preds = %177, %146
  %179 = load i32, i32* @time_state, align 4
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* @time_status, align 4
  %181 = load i32, i32* @STA_UNSYNC, align 4
  %182 = load i32, i32* @STA_CLOCKERR, align 4
  %183 = or i32 %181, %182
  %184 = and i32 %180, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* @TIME_ERROR, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %186, %178
  %189 = load i32, i32* @time_freq, align 4
  %190 = load i32, i32* @PPM_SCALE_INV_SHIFT, align 4
  %191 = ashr i32 %189, %190
  %192 = load i32, i32* @PPM_SCALE_INV, align 4
  %193 = mul nsw i32 %191, %192
  %194 = load i32, i32* @NTP_SCALE_SHIFT, align 4
  %195 = call i8* @shift_right(i32 %193, i32 %194)
  %196 = load %struct.timex*, %struct.timex** %3, align 8
  %197 = getelementptr inbounds %struct.timex, %struct.timex* %196, i32 0, i32 19
  store i8* %195, i8** %197, align 8
  %198 = load i32, i32* @time_maxerror, align 4
  %199 = load %struct.timex*, %struct.timex** %3, align 8
  %200 = getelementptr inbounds %struct.timex, %struct.timex* %199, i32 0, i32 18
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* @time_esterror, align 4
  %202 = load %struct.timex*, %struct.timex** %3, align 8
  %203 = getelementptr inbounds %struct.timex, %struct.timex* %202, i32 0, i32 17
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* @time_status, align 4
  %205 = load %struct.timex*, %struct.timex** %3, align 8
  %206 = getelementptr inbounds %struct.timex, %struct.timex* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* @time_constant, align 4
  %208 = load %struct.timex*, %struct.timex** %3, align 8
  %209 = getelementptr inbounds %struct.timex, %struct.timex* %208, i32 0, i32 16
  store i32 %207, i32* %209, align 4
  %210 = load %struct.timex*, %struct.timex** %3, align 8
  %211 = getelementptr inbounds %struct.timex, %struct.timex* %210, i32 0, i32 4
  store i32 1, i32* %211, align 4
  %212 = load i32, i32* @MAXFREQ_SCALED, align 4
  %213 = load i32, i32* @PPM_SCALE, align 4
  %214 = sdiv i32 %212, %213
  %215 = load %struct.timex*, %struct.timex** %3, align 8
  %216 = getelementptr inbounds %struct.timex, %struct.timex* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* @tick_usec, align 4
  %218 = load %struct.timex*, %struct.timex** %3, align 8
  %219 = getelementptr inbounds %struct.timex, %struct.timex* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* @time_tai, align 4
  %221 = load %struct.timex*, %struct.timex** %3, align 8
  %222 = getelementptr inbounds %struct.timex, %struct.timex* %221, i32 0, i32 15
  store i32 %220, i32* %222, align 8
  %223 = load %struct.timex*, %struct.timex** %3, align 8
  %224 = getelementptr inbounds %struct.timex, %struct.timex* %223, i32 0, i32 14
  store i64 0, i64* %224, align 8
  %225 = load %struct.timex*, %struct.timex** %3, align 8
  %226 = getelementptr inbounds %struct.timex, %struct.timex* %225, i32 0, i32 13
  store i64 0, i64* %226, align 8
  %227 = load %struct.timex*, %struct.timex** %3, align 8
  %228 = getelementptr inbounds %struct.timex, %struct.timex* %227, i32 0, i32 12
  store i64 0, i64* %228, align 8
  %229 = load %struct.timex*, %struct.timex** %3, align 8
  %230 = getelementptr inbounds %struct.timex, %struct.timex* %229, i32 0, i32 11
  store i64 0, i64* %230, align 8
  %231 = load %struct.timex*, %struct.timex** %3, align 8
  %232 = getelementptr inbounds %struct.timex, %struct.timex* %231, i32 0, i32 10
  store i64 0, i64* %232, align 8
  %233 = load %struct.timex*, %struct.timex** %3, align 8
  %234 = getelementptr inbounds %struct.timex, %struct.timex* %233, i32 0, i32 9
  store i64 0, i64* %234, align 8
  %235 = load %struct.timex*, %struct.timex** %3, align 8
  %236 = getelementptr inbounds %struct.timex, %struct.timex* %235, i32 0, i32 8
  store i64 0, i64* %236, align 8
  %237 = load %struct.timex*, %struct.timex** %3, align 8
  %238 = getelementptr inbounds %struct.timex, %struct.timex* %237, i32 0, i32 7
  store i64 0, i64* %238, align 8
  %239 = call i32 @spin_unlock_irq(i32* @ntp_lock)
  %240 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.timex*, %struct.timex** %3, align 8
  %243 = getelementptr inbounds %struct.timex, %struct.timex* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  store i32 %241, i32* %244, align 4
  %245 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.timex*, %struct.timex** %3, align 8
  %248 = getelementptr inbounds %struct.timex, %struct.timex* %247, i32 0, i32 6
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  store i32 %246, i32* %249, align 4
  %250 = load i32, i32* @time_status, align 4
  %251 = load i32, i32* @STA_NANO, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %263, label %254

254:                                              ; preds = %188
  %255 = load i64, i64* @NSEC_PER_USEC, align 8
  %256 = load %struct.timex*, %struct.timex** %3, align 8
  %257 = getelementptr inbounds %struct.timex, %struct.timex* %256, i32 0, i32 6
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = sdiv i64 %260, %255
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %258, align 4
  br label %263

263:                                              ; preds = %254, %188
  %264 = call i32 (...) @notify_cmos_timer()
  %265 = load i32, i32* %5, align 4
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %263, %108, %91, %72, %48, %35, %21
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @timekeeping_inject_offset(%struct.timespec*) #1

declare dso_local i32 @getnstimeofday(%struct.timespec*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ntp_update_frequency(...) #1

declare dso_local i32 @process_adjtimex_modes(%struct.timex*, %struct.timespec*) #1

declare dso_local i8* @shift_right(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @notify_cmos_timer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
