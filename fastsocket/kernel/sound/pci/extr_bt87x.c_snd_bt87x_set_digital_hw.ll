; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_set_digital_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_set_digital_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_bt87x = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_runtime = type { %struct.TYPE_4__ }

@CTL_DA_IOM_DA = common dso_local global i32 0, align 4
@CTL_A_PWRDN = common dso_local global i32 0, align 4
@snd_bt87x_digital_hw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bt87x*, %struct.snd_pcm_runtime*)* @snd_bt87x_set_digital_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_set_digital_hw(%struct.snd_bt87x* %0, %struct.snd_pcm_runtime* %1) #0 {
  %3 = alloca %struct.snd_bt87x*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_bt87x* %0, %struct.snd_bt87x** %3, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %4, align 8
  %5 = load i32, i32* @CTL_DA_IOM_DA, align 4
  %6 = load i32, i32* @CTL_A_PWRDN, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %9 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = bitcast %struct.TYPE_4__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_4__* @snd_bt87x_digital_hw to i8*), i64 12, i1 false)
  %15 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %16 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @snd_pcm_rate_to_rate_bit(i32 %18)
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %24 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %31 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
