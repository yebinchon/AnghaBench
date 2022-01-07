; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_capture_ind2_null.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_capture_ind2_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_indirect2 = type { i64 }
%struct.snd_ml403_ac97cr = type { i32 }

@STATUS = common dso_local global i32 0, align 4
@CR_RECEMPTY = common dso_local global i32 0, align 4
@RECFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*, %struct.snd_pcm_indirect2*)* @snd_ml403_ac97cr_capture_ind2_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_ml403_ac97cr_capture_ind2_null(%struct.snd_pcm_substream* %0, %struct.snd_pcm_indirect2* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_indirect2*, align 8
  %5 = alloca %struct.snd_ml403_ac97cr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_indirect2* %1, %struct.snd_pcm_indirect2** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_ml403_ac97cr* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_ml403_ac97cr* %10, %struct.snd_ml403_ac97cr** %5, align 8
  %11 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  br label %14

14:                                               ; preds = %23, %2
  %15 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %5, align 8
  %16 = load i32, i32* @STATUS, align 4
  %17 = call i32 @CR_REG(%struct.snd_ml403_ac97cr* %15, i32 %16)
  %18 = call i32 @in_be32(i32 %17)
  %19 = load i32, i32* @CR_RECEMPTY, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @CR_RECEMPTY, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  %24 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %5, align 8
  %25 = load i32, i32* @RECFIFO, align 4
  %26 = call i32 @CR_REG(%struct.snd_ml403_ac97cr* %24, i32 %25)
  %27 = call i32 @in_be32(i32 %26)
  %28 = call i32 @CR_RECDATA(i32 %27)
  store volatile i32 %28, i32* %8, align 4
  %29 = load volatile i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store volatile i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.snd_pcm_indirect2*, %struct.snd_pcm_indirect2** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_indirect2, %struct.snd_pcm_indirect2* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %5, align 8
  %37 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  ret i64 %41
}

declare dso_local %struct.snd_ml403_ac97cr* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @in_be32(i32) #1

declare dso_local i32 @CR_REG(%struct.snd_ml403_ac97cr*, i32) #1

declare dso_local i32 @CR_RECDATA(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
