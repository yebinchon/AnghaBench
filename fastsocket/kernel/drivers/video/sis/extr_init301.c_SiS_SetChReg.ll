; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetChReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetChReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i8, i32 }

@SiS_I2CDELAYSHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SiS_Private*, i16, i8, i16)* @SiS_SetChReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SiS_SetChReg(%struct.SiS_Private* %0, i16 zeroext %1, i8 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.SiS_Private*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %6, align 8
  store i16 %1, i16* %7, align 2
  store i8 %2, i8* %8, align 1
  store i16 %3, i16* %9, align 2
  store i16 0, i16* %11, align 2
  br label %12

12:                                               ; preds = %67, %4
  %13 = load i16, i16* %11, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp slt i32 %14, 20
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = load i16, i16* %11, align 2
  %18 = icmp ne i16 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %6, align 8
  %21 = call i64 @SiS_SetStop(%struct.SiS_Private* %20)
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %6, align 8
  %23 = load i32, i32* @SiS_I2CDELAYSHORT, align 4
  %24 = mul nsw i32 %23, 4
  %25 = call i32 @SiS_DDC2Delay(%struct.SiS_Private* %22, i32 %24)
  br label %26

26:                                               ; preds = %19, %16
  %27 = load %struct.SiS_Private*, %struct.SiS_Private** %6, align 8
  %28 = call i64 @SiS_SetStart(%struct.SiS_Private* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %67

31:                                               ; preds = %26
  %32 = load %struct.SiS_Private*, %struct.SiS_Private** %6, align 8
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %6, align 8
  %34 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 4
  %36 = call zeroext i16 @SiS_WriteDDC2Data(%struct.SiS_Private* %32, i8 zeroext %35)
  store i16 %36, i16* %10, align 2
  %37 = load i16, i16* %10, align 2
  %38 = icmp ne i16 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %67

40:                                               ; preds = %31
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %6, align 8
  %42 = load i16, i16* %7, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* %9, align 2
  %45 = zext i16 %44 to i32
  %46 = or i32 %43, %45
  %47 = trunc i32 %46 to i8
  %48 = call zeroext i16 @SiS_WriteDDC2Data(%struct.SiS_Private* %41, i8 zeroext %47)
  store i16 %48, i16* %10, align 2
  %49 = load i16, i16* %10, align 2
  %50 = icmp ne i16 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %67

52:                                               ; preds = %40
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %6, align 8
  %54 = load i8, i8* %8, align 1
  %55 = call zeroext i16 @SiS_WriteDDC2Data(%struct.SiS_Private* %53, i8 zeroext %54)
  store i16 %55, i16* %10, align 2
  %56 = load i16, i16* %10, align 2
  %57 = icmp ne i16 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %67

59:                                               ; preds = %52
  %60 = load %struct.SiS_Private*, %struct.SiS_Private** %6, align 8
  %61 = call i64 @SiS_SetStop(%struct.SiS_Private* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %67

64:                                               ; preds = %59
  %65 = load %struct.SiS_Private*, %struct.SiS_Private** %6, align 8
  %66 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  store i32 1, i32* %5, align 4
  br label %71

67:                                               ; preds = %63, %58, %51, %39, %30
  %68 = load i16, i16* %11, align 2
  %69 = add i16 %68, 1
  store i16 %69, i16* %11, align 2
  br label %12

70:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %64
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @SiS_SetStop(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_DDC2Delay(%struct.SiS_Private*, i32) #1

declare dso_local i64 @SiS_SetStart(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SiS_WriteDDC2Data(%struct.SiS_Private*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
