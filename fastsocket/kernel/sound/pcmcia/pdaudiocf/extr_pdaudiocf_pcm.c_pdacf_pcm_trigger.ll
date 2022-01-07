; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_pcm.c_pdacf_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_pcm.c_pdacf_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_pdacf = type { i32, %struct.TYPE_2__*, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PDAUDIOCF_STAT_IS_STALE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PDAUDIOCF_RECORD = common dso_local global i16 0, align 2
@AK4117_CHECK_NO_STAT = common dso_local global i32 0, align 4
@AK4117_CHECK_NO_RATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PDAUDIOCF_REG_SCR = common dso_local global i32 0, align 4
@AK4117_UNLCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @pdacf_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdacf_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pdacf*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = call %struct.snd_pdacf* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %14)
  store %struct.snd_pdacf* %15, %struct.snd_pdacf** %6, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %20 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PDAUDIOCF_STAT_IS_STALE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %119

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %46 [
    i32 130, label %30
    i32 132, label %35
    i32 131, label %35
    i32 129, label %44
    i32 133, label %44
    i32 128, label %44
  ]

30:                                               ; preds = %28
  %31 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %32 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %31, i32 0, i32 5
  store i32 0, i32* %32, align 4
  %33 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %34 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %33, i32 0, i32 4
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %28, %28, %30
  store i16 0, i16* %11, align 2
  %36 = load i16, i16* @PDAUDIOCF_RECORD, align 2
  store i16 %36, i16* %12, align 2
  store i32 1, i32* %8, align 4
  %37 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* @AK4117_CHECK_NO_STAT, align 4
  %41 = load i32, i32* @AK4117_CHECK_NO_RATE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @snd_ak4117_check_rate_and_errors(%struct.TYPE_2__* %39, i32 %42)
  store i32 %43, i32* %10, align 4
  br label %49

44:                                               ; preds = %28, %28, %28
  %45 = load i16, i16* @PDAUDIOCF_RECORD, align 2
  store i16 %45, i16* %11, align 2
  store i16 0, i16* %12, align 2
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %49

46:                                               ; preds = %28
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %119

49:                                               ; preds = %44, %35
  %50 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %51 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %50, i32 0, i32 2
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %56 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %60 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %61 = call zeroext i16 @pdacf_reg_read(%struct.snd_pdacf* %59, i32 %60)
  store i16 %61, i16* %13, align 2
  %62 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %63 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %49
  %67 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %68 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AK4117_UNLCK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %66
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75, %66
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %85 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %109

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %49
  %92 = load i16, i16* %11, align 2
  %93 = zext i16 %92 to i32
  %94 = xor i32 %93, -1
  %95 = load i16, i16* %13, align 2
  %96 = zext i16 %95 to i32
  %97 = and i32 %96, %94
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %13, align 2
  %99 = load i16, i16* %12, align 2
  %100 = zext i16 %99 to i32
  %101 = load i16, i16* %13, align 2
  %102 = zext i16 %101 to i32
  %103 = or i32 %102, %100
  %104 = trunc i32 %103 to i16
  store i16 %104, i16* %13, align 2
  %105 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %106 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %107 = load i16, i16* %13, align 2
  %108 = call i32 @pdacf_reg_write(%struct.snd_pdacf* %105, i32 %106, i16 zeroext %107)
  br label %109

109:                                              ; preds = %91, %81
  %110 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %111 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %110, i32 0, i32 2
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %114 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* @AK4117_CHECK_NO_RATE, align 4
  %117 = call i32 @snd_ak4117_check_rate_and_errors(%struct.TYPE_2__* %115, i32 %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %109, %46, %25
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.snd_pdacf* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ak4117_check_rate_and_errors(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i16 @pdacf_reg_read(%struct.snd_pdacf*, i32) #1

declare dso_local i32 @pdacf_reg_write(%struct.snd_pdacf*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
