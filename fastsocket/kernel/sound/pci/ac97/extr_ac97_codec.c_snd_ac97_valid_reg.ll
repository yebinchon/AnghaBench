; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_valid_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_valid_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*, i16)* @snd_ac97_valid_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_valid_reg(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %7 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %62 [
    i32 136, label %9
    i32 135, label %9
    i32 143, label %27
    i32 142, label %27
    i32 141, label %27
    i32 140, label %37
    i32 139, label %37
    i32 138, label %37
    i32 137, label %37
    i32 134, label %52
    i32 133, label %52
    i32 132, label %52
    i32 131, label %52
    i32 130, label %52
    i32 129, label %52
    i32 128, label %52
  ]

9:                                                ; preds = %2, %2
  %10 = load i16, i16* %5, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp sle i32 %11, 28
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i16, i16* %5, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %19, 38
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i16, i16* %5, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp sge i32 %23, 124
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17, %13, %9
  store i32 1, i32* %3, align 4
  br label %63

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %63

27:                                               ; preds = %2, %2, %2
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp sge i32 %29, 58
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i16, i16* %5, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp sle i32 %33, 110
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %63

36:                                               ; preds = %31, %27
  store i32 1, i32* %3, align 4
  br label %63

37:                                               ; preds = %2, %2, %2, %2
  %38 = load i16, i16* %5, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp eq i32 %39, 90
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %63

42:                                               ; preds = %37
  %43 = load i16, i16* %5, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp sge i32 %44, 60
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i16, i16* %5, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp sle i32 %48, 110
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %63

51:                                               ; preds = %46, %42
  store i32 1, i32* %3, align 4
  br label %63

52:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %53 = load i16, i16* %5, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp sle i32 %54, 58
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i16, i16* %5, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp sge i32 %58, 90
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52
  store i32 1, i32* %3, align 4
  br label %63

61:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61, %60, %51, %50, %41, %36, %35, %26, %25
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
