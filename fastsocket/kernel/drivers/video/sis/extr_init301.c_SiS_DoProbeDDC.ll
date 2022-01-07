; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_DoProbeDDC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_DoProbeDDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

@X_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*)* @SiS_DoProbeDDC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_DoProbeDDC(%struct.SiS_Private* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 0, i16* %7, align 2
  store i32 0, i32* %8, align 4
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %10 = call i32 @SiS_SetSwitchDDC2(%struct.SiS_Private* %9)
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %12 = call i64 @SiS_PrepareDDC(%struct.SiS_Private* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %16 = call i32 @SiS_SetStop(%struct.SiS_Private* %15)
  store i16 -1, i16* %2, align 2
  br label %74

17:                                               ; preds = %1
  store i8 -16, i8* %4, align 1
  store i8 32, i8* %5, align 1
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 160
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %24 = call i64 @SiS_ReadDDC2Data(%struct.SiS_Private* %23)
  %25 = trunc i64 %24 to i8
  %26 = zext i8 %25 to i16
  store i16 %26, i16* %6, align 2
  %27 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %28 = call i32 @SiS_SendACK(%struct.SiS_Private* %27, i32 0)
  %29 = load i16, i16* %6, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i8 -1, i8* %4, align 1
  store i8 -1, i8* %5, align 1
  br label %34

33:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  store i16 -1, i16* %7, align 2
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %17
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %70, label %38

38:                                               ; preds = %35
  %39 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %40 = call i64 @SiS_ReadDDC2Data(%struct.SiS_Private* %39)
  %41 = trunc i64 %40 to i8
  %42 = zext i8 %41 to i16
  store i16 %42, i16* %6, align 2
  %43 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %44 = call i32 @SiS_SendACK(%struct.SiS_Private* %43, i32 1)
  %45 = load i8, i8* %4, align 1
  %46 = zext i8 %45 to i32
  %47 = load i16, i16* %6, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, %46
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %6, align 2
  %51 = load i16, i16* %6, align 2
  %52 = zext i16 %51 to i32
  %53 = load i8, i8* %5, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  store i16 0, i16* %7, align 2
  br label %69

57:                                               ; preds = %38
  store i16 -1, i16* %7, align 2
  %58 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %59 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 160
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i16, i16* %6, align 2
  %64 = zext i16 %63 to i32
  %65 = icmp eq i32 %64, 48
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i16 0, i16* %7, align 2
  br label %67

67:                                               ; preds = %66, %62
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %56
  br label %70

70:                                               ; preds = %69, %35
  %71 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %72 = call i32 @SiS_SetStop(%struct.SiS_Private* %71)
  %73 = load i16, i16* %7, align 2
  store i16 %73, i16* %2, align 2
  br label %74

74:                                               ; preds = %70, %14
  %75 = load i16, i16* %2, align 2
  ret i16 %75
}

declare dso_local i32 @SiS_SetSwitchDDC2(%struct.SiS_Private*) #1

declare dso_local i64 @SiS_PrepareDDC(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetStop(%struct.SiS_Private*) #1

declare dso_local i64 @SiS_ReadDDC2Data(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SendACK(%struct.SiS_Private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
