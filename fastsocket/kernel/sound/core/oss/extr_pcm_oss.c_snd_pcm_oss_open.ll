; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i32 }
%struct.snd_pcm = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.snd_pcm_oss_file = type { i32 }
%struct.snd_pcm_oss_setup = type { i32 }

@SNDRV_OSS_DEVICE_TYPE_PCM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@nonblock_open = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_pcm_oss_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca %struct.snd_pcm_oss_file*, align 8
  %10 = alloca [2 x %struct.snd_pcm_oss_setup], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call i32 @nonseekable_open(%struct.inode* %13, %struct.file* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %186

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @iminor(%struct.inode* %21)
  %23 = load i32, i32* @SNDRV_OSS_DEVICE_TYPE_PCM, align 4
  %24 = call %struct.snd_pcm* @snd_lookup_oss_minor_data(i32 %22, i32 %23)
  store %struct.snd_pcm* %24, %struct.snd_pcm** %8, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %26 = icmp eq %struct.snd_pcm* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %184

30:                                               ; preds = %20
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %32 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = call i32 @snd_card_file_add(%struct.TYPE_3__* %33, %struct.file* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %184

39:                                               ; preds = %30
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @try_module_get(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %178

50:                                               ; preds = %39
  %51 = load i32, i32* @current, align 4
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %53 = call i64 @snd_task_name(i32 %51, i8* %52, i32 32)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EFAULT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %171

58:                                               ; preds = %50
  %59 = getelementptr inbounds [2 x %struct.snd_pcm_oss_setup], [2 x %struct.snd_pcm_oss_setup]* %10, i64 0, i64 0
  %60 = call i32 @memset(%struct.snd_pcm_oss_setup* %59, i32 0, i32 8)
  %61 = load %struct.file*, %struct.file** %5, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FMODE_WRITE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %69 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %71 = getelementptr inbounds [2 x %struct.snd_pcm_oss_setup], [2 x %struct.snd_pcm_oss_setup]* %10, i64 0, i64 0
  %72 = call i32 @snd_pcm_oss_look_for_setup(%struct.snd_pcm* %68, i32 %69, i8* %70, %struct.snd_pcm_oss_setup* %71)
  br label %73

73:                                               ; preds = %67, %58
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FMODE_READ, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %82 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %84 = getelementptr inbounds [2 x %struct.snd_pcm_oss_setup], [2 x %struct.snd_pcm_oss_setup]* %10, i64 0, i64 1
  %85 = call i32 @snd_pcm_oss_look_for_setup(%struct.snd_pcm* %81, i32 %82, i8* %83, %struct.snd_pcm_oss_setup* %84)
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.file*, %struct.file** %5, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @O_NONBLOCK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %86
  %99 = load i32, i32* @nonblock_open, align 4
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %98, %86
  %101 = load i32, i32* @current, align 4
  %102 = call i32 @init_waitqueue_entry(i32* %12, i32 %101)
  %103 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %104 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %103, i32 0, i32 2
  %105 = call i32 @add_wait_queue(i32* %104, i32* %12)
  %106 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %107 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %106, i32 0, i32 1
  %108 = call i32 @mutex_lock(i32* %107)
  br label %109

109:                                              ; preds = %100, %158
  %110 = load %struct.file*, %struct.file** %5, align 8
  %111 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = call i32 @iminor(%struct.inode* %112)
  %114 = getelementptr inbounds [2 x %struct.snd_pcm_oss_setup], [2 x %struct.snd_pcm_oss_setup]* %10, i64 0, i64 0
  %115 = call i32 @snd_pcm_oss_open_file(%struct.file* %110, %struct.snd_pcm* %111, %struct.snd_pcm_oss_file** %9, i32 %113, %struct.snd_pcm_oss_setup* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %159

119:                                              ; preds = %109
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @EAGAIN, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* @EBUSY, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %159

130:                                              ; preds = %124
  br label %132

131:                                              ; preds = %119
  br label %159

132:                                              ; preds = %130
  %133 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %134 = call i32 @set_current_state(i32 %133)
  %135 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %136 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %135, i32 0, i32 1
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = call i32 (...) @schedule()
  %139 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %140 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %139, i32 0, i32 1
  %141 = call i32 @mutex_lock(i32* %140)
  %142 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %143 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %132
  %149 = load i32, i32* @ENODEV, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %6, align 4
  br label %159

151:                                              ; preds = %132
  %152 = load i32, i32* @current, align 4
  %153 = call i64 @signal_pending(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* @ERESTARTSYS, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %6, align 4
  br label %159

158:                                              ; preds = %151
  br label %109

159:                                              ; preds = %155, %148, %131, %127, %118
  %160 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %161 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %160, i32 0, i32 2
  %162 = call i32 @remove_wait_queue(i32* %161, i32* %12)
  %163 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %164 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %163, i32 0, i32 1
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %159
  br label %171

169:                                              ; preds = %159
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %3, align 4
  br label %186

171:                                              ; preds = %168, %55
  %172 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %173 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %172, i32 0, i32 0
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @module_put(i32 %176)
  br label %178

178:                                              ; preds = %171, %47
  %179 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %180 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %179, i32 0, i32 0
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = load %struct.file*, %struct.file** %5, align 8
  %183 = call i32 @snd_card_file_remove(%struct.TYPE_3__* %181, %struct.file* %182)
  br label %184

184:                                              ; preds = %178, %38, %27
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %184, %169, %18
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.snd_pcm* @snd_lookup_oss_minor_data(i32, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @snd_card_file_add(%struct.TYPE_3__*, %struct.file*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i64 @snd_task_name(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.snd_pcm_oss_setup*, i32, i32) #1

declare dso_local i32 @snd_pcm_oss_look_for_setup(%struct.snd_pcm*, i32, i8*, %struct.snd_pcm_oss_setup*) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_pcm_oss_open_file(%struct.file*, %struct.snd_pcm*, %struct.snd_pcm_oss_file**, i32, %struct.snd_pcm_oss_setup*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @snd_card_file_remove(%struct.TYPE_3__*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
