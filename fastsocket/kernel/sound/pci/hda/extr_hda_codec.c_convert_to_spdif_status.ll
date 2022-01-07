; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_convert_to_spdif_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_convert_to_spdif_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AC_DIG1_NONAUDIO = common dso_local global i16 0, align 2
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@AC_DIG1_PROFESSIONAL = common dso_local global i16 0, align 2
@IEC958_AES0_PROFESSIONAL = common dso_local global i32 0, align 4
@AC_DIG1_EMPHASIS = common dso_local global i16 0, align 2
@IEC958_AES0_PRO_EMPHASIS_5015 = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS_5015 = common dso_local global i32 0, align 4
@AC_DIG1_COPYRIGHT = common dso_local global i16 0, align 2
@IEC958_AES0_CON_NOT_COPYRIGHT = common dso_local global i32 0, align 4
@AC_DIG1_LEVEL = common dso_local global i16 0, align 2
@IEC958_AES1_CON_ORIGINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @convert_to_spdif_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_spdif_status(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  store i32 0, i32* %3, align 4
  %4 = load i16, i16* %2, align 2
  %5 = zext i16 %4 to i32
  %6 = load i16, i16* @AC_DIG1_NONAUDIO, align 2
  %7 = zext i16 %6 to i32
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i16, i16* %2, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @AC_DIG1_PROFESSIONAL, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %14
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i16, i16* %2, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @AC_DIG1_EMPHASIS, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS_5015, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %30
  br label %82

42:                                               ; preds = %25
  %43 = load i16, i16* %2, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* @AC_DIG1_EMPHASIS, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_5015, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i16, i16* %2, align 2
  %55 = zext i16 %54 to i32
  %56 = load i16, i16* @AC_DIG1_COPYRIGHT, align 2
  %57 = zext i16 %56 to i32
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @IEC958_AES0_CON_NOT_COPYRIGHT, align 4
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load i16, i16* %2, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* @AC_DIG1_LEVEL, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* @IEC958_AES1_CON_ORIGINAL, align 4
  %73 = shl i32 %72, 8
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %64
  %77 = load i16, i16* %2, align 2
  %78 = zext i16 %77 to i32
  %79 = and i32 %78, 32512
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %76, %41
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
