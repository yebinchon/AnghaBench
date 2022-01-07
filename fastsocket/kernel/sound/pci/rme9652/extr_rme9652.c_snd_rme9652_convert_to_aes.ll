; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_convert_to_aes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_convert_to_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_aes_iec958 = type { i32* }

@RME9652_PRO = common dso_local global i32 0, align 4
@IEC958_AES0_PROFESSIONAL = common dso_local global i32 0, align 4
@RME9652_Dolby = common dso_local global i32 0, align 4
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@RME9652_EMP = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_EMPHASIS_5015 = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS_5015 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_aes_iec958*, i32)* @snd_rme9652_convert_to_aes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme9652_convert_to_aes(%struct.snd_aes_iec958* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_aes_iec958*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_aes_iec958* %0, %struct.snd_aes_iec958** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RME9652_PRO, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 0, %11 ]
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RME9652_Dolby, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = or i32 %13, %22
  %24 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %3, align 8
  %25 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @RME9652_PRO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @RME9652_EMP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS_5015, align 4
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %3, align 8
  %43 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %41
  store i32 %47, i32* %45, align 4
  br label %64

48:                                               ; preds = %21
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @RME9652_EMP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_5015, align 4
  br label %56

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %3, align 8
  %59 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %57
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %56, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
