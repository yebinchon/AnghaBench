; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.snd_pcm = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.snd_pcm_file = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.snd_pcm*, i32)* @snd_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_open(%struct.file* %0, %struct.snd_pcm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_file*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.snd_pcm* %1, %struct.snd_pcm** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %12 = icmp eq %struct.snd_pcm* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  br label %122

16:                                               ; preds = %3
  %17 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %18 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = call i32 @snd_card_file_add(%struct.TYPE_3__* %19, %struct.file* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %122

25:                                               ; preds = %16
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %27 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @try_module_get(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @EFAULT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %116

36:                                               ; preds = %25
  %37 = load i32, i32* @current, align 4
  %38 = call i32 @init_waitqueue_entry(i32* %10, i32 %37)
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %40 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %39, i32 0, i32 2
  %41 = call i32 @add_wait_queue(i32* %40, i32* %10)
  %42 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %43 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  br label %45

45:                                               ; preds = %36, %96
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @snd_pcm_open_file(%struct.file* %46, %struct.snd_pcm* %47, i32 %48, %struct.snd_pcm_file** %9)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %97

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @O_NONBLOCK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %97

68:                                               ; preds = %58
  br label %70

69:                                               ; preds = %53
  br label %97

70:                                               ; preds = %68
  %71 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %72 = call i32 @set_current_state(i32 %71)
  %73 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %74 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = call i32 (...) @schedule()
  %77 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %78 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %77, i32 0, i32 1
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %81 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %8, align 4
  br label %97

89:                                               ; preds = %70
  %90 = load i32, i32* @current, align 4
  %91 = call i64 @signal_pending(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @ERESTARTSYS, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %97

96:                                               ; preds = %89
  br label %45

97:                                               ; preds = %93, %86, %69, %65, %52
  %98 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %99 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %98, i32 0, i32 2
  %100 = call i32 @remove_wait_queue(i32* %99, i32* %10)
  %101 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %102 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %109

107:                                              ; preds = %97
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %4, align 4
  br label %124

109:                                              ; preds = %106
  %110 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %111 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @module_put(i32 %114)
  br label %116

116:                                              ; preds = %109, %33
  %117 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %118 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load %struct.file*, %struct.file** %5, align 8
  %121 = call i32 @snd_card_file_remove(%struct.TYPE_3__* %119, %struct.file* %120)
  br label %122

122:                                              ; preds = %116, %24, %13
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %107
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @snd_card_file_add(%struct.TYPE_3__*, %struct.file*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_pcm_open_file(%struct.file*, %struct.snd_pcm*, i32, %struct.snd_pcm_file**) #1

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
