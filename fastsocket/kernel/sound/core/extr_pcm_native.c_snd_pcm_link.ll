; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.file = type { %struct.snd_pcm_file* }
%struct.snd_pcm_file = type { %struct.snd_pcm_substream* }

@EBADFD = common dso_local global i32 0, align 4
@snd_pcm_link_rwsem = common dso_local global i32 0, align 4
@snd_pcm_link_rwlock = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_OPEN = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_pcm_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_link(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.snd_pcm_file*, align 8
  %9 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.file* @snd_pcm_file_fd(i32 %10)
  store %struct.file* %11, %struct.file** %7, align 8
  %12 = load %struct.file*, %struct.file** %7, align 8
  %13 = icmp ne %struct.file* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EBADFD, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %124

17:                                               ; preds = %2
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %19, align 8
  store %struct.snd_pcm_file* %20, %struct.snd_pcm_file** %8, align 8
  %21 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %8, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_file, %struct.snd_pcm_file* %21, i32 0, i32 0
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %22, align 8
  store %struct.snd_pcm_substream* %23, %struct.snd_pcm_substream** %9, align 8
  %24 = call i32 @down_write(i32* @snd_pcm_link_rwsem)
  %25 = call i32 @write_lock_irq(i32* @snd_pcm_link_rwlock)
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SNDRV_PCM_STATE_OPEN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %17
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %42, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %35, %17
  %52 = load i32, i32* @EBADFD, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %118

54:                                               ; preds = %35
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %56 = call i64 @snd_pcm_stream_linked(%struct.snd_pcm_substream* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EALREADY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %118

61:                                               ; preds = %54
  %62 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %63 = call i64 @snd_pcm_stream_linked(%struct.snd_pcm_substream* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %99, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call %struct.TYPE_6__* @kmalloc(i32 4, i32 %66)
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %68, i32 0, i32 0
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %69, align 8
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = icmp eq %struct.TYPE_6__* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %118

77:                                               ; preds = %65
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = call i32 @spin_lock_init(i32* %81)
  %83 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %88, i32 0, i32 1
  %90 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = call i32 @list_add_tail(i32* %89, i32* %93)
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %77, %61
  %100 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %100, i32 0, i32 1
  %102 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %103 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = call i32 @list_add_tail(i32* %101, i32* %105)
  %107 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %114 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %117 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %116, i32 0, i32 0
  store %struct.TYPE_6__* %115, %struct.TYPE_6__** %117, align 8
  br label %118

118:                                              ; preds = %99, %74, %58, %51
  %119 = call i32 @write_unlock_irq(i32* @snd_pcm_link_rwlock)
  %120 = call i32 @up_write(i32* @snd_pcm_link_rwsem)
  %121 = load %struct.file*, %struct.file** %7, align 8
  %122 = call i32 @fput(%struct.file* %121)
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %118, %14
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.file* @snd_pcm_file_fd(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i64 @snd_pcm_stream_linked(%struct.snd_pcm_substream*) #1

declare dso_local %struct.TYPE_6__* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
