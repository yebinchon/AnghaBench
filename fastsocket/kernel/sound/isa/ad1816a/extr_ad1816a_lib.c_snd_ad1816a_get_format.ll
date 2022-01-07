; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_get_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1816a = type { i32 }

@AD1816A_FMT_LINEAR_8 = common dso_local global i8 0, align 1
@AD1816A_FMT_ULAW_8 = common dso_local global i8 0, align 1
@AD1816A_FMT_ALAW_8 = common dso_local global i8 0, align 1
@AD1816A_FMT_LINEAR_16_LIT = common dso_local global i8 0, align 1
@AD1816A_FMT_LINEAR_16_BIG = common dso_local global i8 0, align 1
@AD1816A_FMT_STEREO = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.snd_ad1816a*, i32, i32)* @snd_ad1816a_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snd_ad1816a_get_format(%struct.snd_ad1816a* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ad1816a*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.snd_ad1816a* %0, %struct.snd_ad1816a** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8, i8* @AD1816A_FMT_LINEAR_8, align 1
  store i8 %8, i8* %7, align 1
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %18 [
    i32 130, label %10
    i32 131, label %12
    i32 128, label %14
    i32 129, label %16
  ]

10:                                               ; preds = %3
  %11 = load i8, i8* @AD1816A_FMT_ULAW_8, align 1
  store i8 %11, i8* %7, align 1
  br label %18

12:                                               ; preds = %3
  %13 = load i8, i8* @AD1816A_FMT_ALAW_8, align 1
  store i8 %13, i8* %7, align 1
  br label %18

14:                                               ; preds = %3
  %15 = load i8, i8* @AD1816A_FMT_LINEAR_16_LIT, align 1
  store i8 %15, i8* %7, align 1
  br label %18

16:                                               ; preds = %3
  %17 = load i8, i8* @AD1816A_FMT_LINEAR_16_BIG, align 1
  store i8 %17, i8* %7, align 1
  br label %18

18:                                               ; preds = %16, %3, %14, %12, %10
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @AD1816A_FMT_STEREO, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  br label %30

27:                                               ; preds = %18
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i32 [ %26, %21 ], [ %29, %27 ]
  %32 = trunc i32 %31 to i8
  ret i8 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
