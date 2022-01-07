; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_linear.c_linear_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_linear.c_linear_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_plugin_channel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ENXIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i64)* @linear_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @linear_transfer(%struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_pcm_plugin*, align 8
  %7 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %8 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %9 = alloca i64, align 8
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %6, align 8
  store %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel** %7, align 8
  store %struct.snd_pcm_plugin_channel* %2, %struct.snd_pcm_plugin_channel** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %11 = icmp ne %struct.snd_pcm_plugin* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %14 = icmp ne %struct.snd_pcm_plugin_channel* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %17 = icmp ne %struct.snd_pcm_plugin_channel* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %12, %4
  %20 = phi i1 [ true, %12 ], [ true, %4 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* @ENXIO, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %38

27:                                               ; preds = %19
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i64 0, i64* %5, align 8
  br label %38

31:                                               ; preds = %27
  %32 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %33 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %34 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @convert(%struct.snd_pcm_plugin* %32, %struct.snd_pcm_plugin_channel* %33, %struct.snd_pcm_plugin_channel* %34, i64 %35)
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %31, %30, %24
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @convert(%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
