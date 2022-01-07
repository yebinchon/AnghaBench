; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetCRT2Data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetCRT2Data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32 }

@VB_SISVB = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@VB_NoLCD = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_GetCRT2Data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_GetCRT2Data(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VB_SISVB, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %4
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SetCRT2ToLCDA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %24 = load i16, i16* %6, align 2
  %25 = load i16, i16* %7, align 2
  %26 = load i16, i16* %8, align 2
  %27 = call i32 @SiS_GetCRT2DataLVDS(%struct.SiS_Private* %23, i16 zeroext %24, i16 zeroext %25, i16 zeroext %26)
  br label %55

28:                                               ; preds = %15
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %30 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VB_NoLCD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SetCRT2ToLCD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %44 = load i16, i16* %6, align 2
  %45 = load i16, i16* %7, align 2
  %46 = load i16, i16* %8, align 2
  %47 = call i32 @SiS_GetCRT2DataLVDS(%struct.SiS_Private* %43, i16 zeroext %44, i16 zeroext %45, i16 zeroext %46)
  br label %54

48:                                               ; preds = %35, %28
  %49 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %50 = load i16, i16* %6, align 2
  %51 = load i16, i16* %7, align 2
  %52 = load i16, i16* %8, align 2
  %53 = call i32 @SiS_GetCRT2Data301(%struct.SiS_Private* %49, i16 zeroext %50, i16 zeroext %51, i16 zeroext %52)
  br label %54

54:                                               ; preds = %48, %42
  br label %55

55:                                               ; preds = %54, %22
  br label %62

56:                                               ; preds = %4
  %57 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %58 = load i16, i16* %6, align 2
  %59 = load i16, i16* %7, align 2
  %60 = load i16, i16* %8, align 2
  %61 = call i32 @SiS_GetCRT2DataLVDS(%struct.SiS_Private* %57, i16 zeroext %58, i16 zeroext %59, i16 zeroext %60)
  br label %62

62:                                               ; preds = %56, %55
  ret void
}

declare dso_local i32 @SiS_GetCRT2DataLVDS(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_GetCRT2Data301(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
