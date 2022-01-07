; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_rate.c_rate_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_rate.c_rate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.rate_priv = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_plugin*)* @rate_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_init(%struct.snd_pcm_plugin* %0) #0 {
  %2 = alloca %struct.snd_pcm_plugin*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rate_priv*, align 8
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %2, align 8
  %5 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.rate_priv*
  store %struct.rate_priv* %8, %struct.rate_priv** %4, align 8
  %9 = load %struct.rate_priv*, %struct.rate_priv** %4, align 8
  %10 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %33, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %2, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = load %struct.rate_priv*, %struct.rate_priv** %4, align 8
  %20 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.rate_priv*, %struct.rate_priv** %4, align 8
  %27 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %11

36:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
