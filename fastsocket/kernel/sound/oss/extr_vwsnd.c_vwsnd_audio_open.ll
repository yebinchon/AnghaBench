; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_vwsnd_audio_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_vwsnd_audio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i8*, i8*, i8*, i64, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i8*, i8*, i8*, i64, i8* }
%struct.inode = type { i32 }
%struct.file = type { i32, i32, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [25 x i8] c"(inode=0x%p, file=0x%p)\0A\00", align 1
@INC_USE_COUNT = common dso_local global i32 0, align 4
@vwsnd_dev_list = common dso_local global %struct.TYPE_7__* null, align 8
@DEC_USE_COUNT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@SND_DEV_DSP = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@SND_DEV_AUDIO = common dso_local global i32 0, align 4
@AFMT_MU_LAW = common dso_local global i32 0, align 4
@SND_DEV_DSP16 = common dso_local global i32 0, align 4
@AFMT_S16_LE = common dso_local global i32 0, align 4
@SW_INITIAL = common dso_local global i8* null, align 8
@DEFAULT_FRAGSHIFT = common dso_local global i8* null, align 8
@DEFAULT_FRAGCOUNT = common dso_local global i8* null, align 8
@DEFAULT_SUBDIVSHIFT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vwsnd_audio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vwsnd_audio_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call i32 @DBGE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.inode* %11, %struct.file* %12)
  %14 = load i32, i32* @INC_USE_COUNT, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vwsnd_dev_list, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %6, align 8
  br label %16

16:                                               ; preds = %29, %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, -16
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, -16
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %33

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 7
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %6, align 8
  br label %16

33:                                               ; preds = %27, %16
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = icmp eq %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @DEC_USE_COUNT, align 4
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %218

40:                                               ; preds = %33
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  %43 = call i32 @mutex_lock(i32* %42)
  br label %44

44:                                               ; preds = %78, %40
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 5
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @O_NONBLOCK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i32, i32* @DEC_USE_COUNT, align 4
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %218

67:                                               ; preds = %53
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 6
  %70 = call i32 @interruptible_sleep_on(i32* %69)
  %71 = load i32, i32* @current, align 4
  %72 = call i64 @signal_pending(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @DEC_USE_COUNT, align 4
  %76 = load i32, i32* @ERESTARTSYS, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %218

78:                                               ; preds = %67
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 5
  %81 = call i32 @mutex_lock(i32* %80)
  br label %44

82:                                               ; preds = %44
  %83 = load %struct.file*, %struct.file** %5, align 8
  %84 = getelementptr inbounds %struct.file, %struct.file* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FMODE_READ, align 4
  %87 = load i32, i32* @FMODE_WRITE, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 5
  %96 = call i32 @mutex_unlock(i32* %95)
  store i32 0, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 15
  %99 = load i32, i32* @SND_DEV_DSP, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %82
  %102 = load i32, i32* @AFMT_U8, align 4
  store i32 %102, i32* %8, align 4
  br label %121

103:                                              ; preds = %82
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, 15
  %106 = load i32, i32* @SND_DEV_AUDIO, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @AFMT_MU_LAW, align 4
  store i32 %109, i32* %8, align 4
  br label %120

110:                                              ; preds = %103
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, 15
  %113 = load i32, i32* @SND_DEV_DSP16, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @AFMT_S16_LE, align 4
  store i32 %116, i32* %8, align 4
  br label %119

117:                                              ; preds = %110
  %118 = call i32 @ASSERT(i32 0)
  br label %119

119:                                              ; preds = %117, %115
  br label %120

120:                                              ; preds = %119, %108
  br label %121

121:                                              ; preds = %120, %101
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = call i32 @mutex_lock(i32* %123)
  %125 = load %struct.file*, %struct.file** %5, align 8
  %126 = getelementptr inbounds %struct.file, %struct.file* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @FMODE_READ, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %167

131:                                              ; preds = %121
  %132 = load i8*, i8** @SW_INITIAL, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 9
  store i8* %132, i8** %135, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 8
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  store i32 8000, i32* %148, align 8
  %149 = load i8*, i8** @DEFAULT_FRAGSHIFT, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 7
  store i8* %149, i8** %152, align 8
  %153 = load i8*, i8** @DEFAULT_FRAGCOUNT, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 6
  store i8* %153, i8** %156, align 8
  %157 = load i8*, i8** @DEFAULT_SUBDIVSHIFT, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 5
  store i8* %157, i8** %160, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 4
  store i64 0, i64* %163, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 3
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %131, %121
  %168 = load %struct.file*, %struct.file** %5, align 8
  %169 = getelementptr inbounds %struct.file, %struct.file* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @FMODE_WRITE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %210

174:                                              ; preds = %167
  %175 = load i8*, i8** @SW_INITIAL, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 9
  store i8* %175, i8** %178, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 8
  store i64 0, i64* %181, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  store i32 %185, i32* %188, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  store i32 8000, i32* %191, align 8
  %192 = load i8*, i8** @DEFAULT_FRAGSHIFT, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 7
  store i8* %192, i8** %195, align 8
  %196 = load i8*, i8** @DEFAULT_FRAGCOUNT, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 6
  store i8* %196, i8** %199, align 8
  %200 = load i8*, i8** @DEFAULT_SUBDIVSHIFT, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 5
  store i8* %200, i8** %203, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 4
  store i64 0, i64* %206, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 3
  store i64 0, i64* %209, align 8
  br label %210

210:                                              ; preds = %174, %167
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  %213 = call i32 @mutex_unlock(i32* %212)
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %215 = load %struct.file*, %struct.file** %5, align 8
  %216 = getelementptr inbounds %struct.file, %struct.file* %215, i32 0, i32 2
  store %struct.TYPE_7__* %214, %struct.TYPE_7__** %216, align 8
  %217 = call i32 (...) @DBGRV()
  store i32 0, i32* %3, align 4
  br label %218

218:                                              ; preds = %210, %74, %63, %36
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @DBGE(i8*, %struct.inode*, %struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DBGRV(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
