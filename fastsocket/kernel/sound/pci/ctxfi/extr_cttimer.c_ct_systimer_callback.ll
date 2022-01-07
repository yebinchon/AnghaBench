; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cttimer.c_ct_systimer_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cttimer.c_ct_systimer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_timer_instance = type { i32, i32, i32, i64, %struct.ct_atc_pcm*, %struct.snd_pcm_substream* }
%struct.ct_atc_pcm = type { i32 (%struct.ct_atc_pcm*)* }
%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.snd_pcm_runtime* }
%struct.TYPE_2__ = type { i32 (%struct.snd_pcm_substream*)* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ct_systimer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_systimer_callback(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ct_timer_instance*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.ct_atc_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = inttoptr i64 %13 to %struct.ct_timer_instance*
  store %struct.ct_timer_instance* %14, %struct.ct_timer_instance** %3, align 8
  %15 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %16 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %15, i32 0, i32 5
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %16, align 8
  store %struct.snd_pcm_substream* %17, %struct.snd_pcm_substream** %4, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 1
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %19, align 8
  store %struct.snd_pcm_runtime* %20, %struct.snd_pcm_runtime** %5, align 8
  %21 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %22 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %21, i32 0, i32 4
  %23 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %22, align 8
  store %struct.ct_atc_pcm* %23, %struct.ct_atc_pcm** %6, align 8
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %33, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %36 = call i32 %34(%struct.snd_pcm_substream* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %37, %38
  %40 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %41 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub i32 %39, %42
  %44 = load i32, i32* %8, align 4
  %45 = urem i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %1
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = udiv i32 %50, %51
  %53 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %54 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = udiv i32 %55, %56
  %58 = icmp ne i32 %52, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %49, %1
  %60 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %61 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %60, i32 0, i32 0
  %62 = load i32 (%struct.ct_atc_pcm*)*, i32 (%struct.ct_atc_pcm*)** %61, align 8
  %63 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %64 = call i32 %62(%struct.ct_atc_pcm* %63)
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %67 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %59, %49
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  %72 = urem i32 %70, %71
  %73 = sub i32 %69, %72
  %74 = load i32, i32* @HZ, align 4
  %75 = mul i32 %73, %74
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = add i32 %75, %79
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = udiv i32 %80, %83
  %85 = load i32, i32* @HZ, align 4
  %86 = mul i32 %85, 5
  %87 = udiv i32 %86, 1000
  %88 = add i32 %84, %87
  store i32 %88, i32* %12, align 4
  %89 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %90 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %89, i32 0, i32 1
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  %93 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %94 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %68
  %98 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %99 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %98, i32 0, i32 2
  %100 = load i64, i64* @jiffies, align 8
  %101 = load i32, i32* %12, align 4
  %102 = zext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = call i32 @mod_timer(i32* %99, i64 %103)
  br label %105

105:                                              ; preds = %97, %68
  %106 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %107 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %106, i32 0, i32 1
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
