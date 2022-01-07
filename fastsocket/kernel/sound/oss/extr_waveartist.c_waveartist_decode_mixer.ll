; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_decode_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_decode_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8, i8)* @waveartist_decode_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waveartist_decode_mixer(%struct.TYPE_3__* %0, i32 %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %25 [
    i32 128, label %10
    i32 129, label %10
    i32 130, label %10
    i32 134, label %10
    i32 131, label %10
    i32 136, label %10
    i32 133, label %10
    i32 132, label %10
    i32 135, label %24
  ]

10:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %11 = load i8, i8* %7, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* %8, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 %14, 8
  %16 = or i32 %12, %15
  %17 = trunc i32 %16 to i8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8 %17, i8* %23, align 1
  br label %28

24:                                               ; preds = %4
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %24, %10
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
