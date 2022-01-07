; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_capture_ind2_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_capture_ind2_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_indirect2 = type { i32, i64 }
%struct.snd_ml403_ac97cr = type { i32 }

@STATUS = common dso_local global i32 0, align 4
@CR_RECEMPTY = common dso_local global i32 0, align 4
@RECFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*, %struct.snd_pcm_indirect2*, i64)* @snd_ml403_ac97cr_capture_ind2_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_ml403_ac97cr_capture_ind2_copy(%struct.snd_pcm_substream* %0, %struct.snd_pcm_indirect2* %1, i64 %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_indirect2*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_ml403_ac97cr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_indirect2* %1, %struct.snd_pcm_indirect2** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call %struct.snd_ml403_ac97cr* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_ml403_ac97cr* %12, %struct.snd_ml403_ac97cr** %7, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.snd_pcm_indirect2*, %struct.snd_pcm_indirect2** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_indirect2, %struct.snd_pcm_indirect2* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %7, align 8
  %24 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  br label %26

26:                                               ; preds = %40, %3
  %27 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %7, align 8
  %28 = load i32, i32* @STATUS, align 4
  %29 = call i32 @CR_REG(%struct.snd_ml403_ac97cr* %27, i32 %28)
  %30 = call i32 @in_be32(i32 %29)
  %31 = load i32, i32* @CR_RECEMPTY, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @CR_RECEMPTY, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i64, i64* %6, align 8
  %37 = icmp ugt i64 %36, 1
  br label %38

38:                                               ; preds = %35, %26
  %39 = phi i1 [ false, %26 ], [ %37, %35 ]
  br i1 %39, label %40, label %54

40:                                               ; preds = %38
  %41 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %7, align 8
  %42 = load i32, i32* @RECFIFO, align 4
  %43 = call i32 @CR_REG(%struct.snd_ml403_ac97cr* %41, i32 %42)
  %44 = call i32 @in_be32(i32 %43)
  %45 = call i32 @CR_RECDATA(i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %52, 2
  store i64 %53, i64* %6, align 8
  br label %26

54:                                               ; preds = %38
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @CR_RECEMPTY, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.snd_pcm_indirect2*, %struct.snd_pcm_indirect2** %5, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_indirect2, %struct.snd_pcm_indirect2* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %64

61:                                               ; preds = %54
  %62 = load %struct.snd_pcm_indirect2*, %struct.snd_pcm_indirect2** %5, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_indirect2, %struct.snd_pcm_indirect2* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %7, align 8
  %66 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  ret i64 %70
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
