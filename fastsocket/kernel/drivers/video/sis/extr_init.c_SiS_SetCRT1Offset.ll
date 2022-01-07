; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_SetCRT1Offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_SetCRT1Offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i64, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i16 }

@InterlaceMode = common dso_local global i16 0, align 2
@XGI_20 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetCRT1Offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT1Offset(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %18 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 8
  store i16 %19, i16* %11, align 2
  br label %29

20:                                               ; preds = %4
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i16, i16* %8, align 2
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 2
  store i16 %28, i16* %11, align 2
  br label %29

29:                                               ; preds = %20, %16
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %31 = load i16, i16* %6, align 2
  %32 = load i16, i16* %7, align 2
  %33 = load i16, i16* %8, align 2
  %34 = call zeroext i16 @SiS_GetOffset(%struct.SiS_Private* %30, i16 zeroext %31, i16 zeroext %32, i16 zeroext %33)
  store i16 %34, i16* %10, align 2
  %35 = load i16, i16* %10, align 2
  %36 = zext i16 %35 to i32
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 15
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %9, align 2
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %41 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i16, i16* %9, align 2
  %44 = call i32 @SiS_SetRegANDOR(i32 %42, i32 14, i32 240, i16 zeroext %43)
  %45 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %46 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i16, i16* %10, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i16
  %52 = call i32 @SiS_SetReg(i32 %47, i32 19, i16 zeroext %51)
  %53 = load i16, i16* %11, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* @InterlaceMode, align 2
  %56 = zext i16 %55 to i32
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %29
  %60 = load i16, i16* %10, align 2
  %61 = zext i16 %60 to i32
  %62 = ashr i32 %61, 1
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %10, align 2
  br label %64

64:                                               ; preds = %59, %29
  %65 = load i16, i16* %10, align 2
  %66 = zext i16 %65 to i32
  %67 = shl i32 %66, 5
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %10, align 2
  %69 = load i16, i16* %10, align 2
  %70 = zext i16 %69 to i32
  %71 = ashr i32 %70, 8
  %72 = add nsw i32 %71, 1
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %9, align 2
  %74 = load i16, i16* %10, align 2
  %75 = zext i16 %74 to i32
  %76 = and i32 %75, 255
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = load i16, i16* %9, align 2
  %80 = add i16 %79, 1
  store i16 %80, i16* %9, align 2
  br label %81

81:                                               ; preds = %78, %64
  %82 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %83 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @XGI_20, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load i16, i16* %6, align 2
  %89 = zext i16 %88 to i32
  %90 = icmp eq i32 %89, 74
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i16, i16* %6, align 2
  %93 = zext i16 %92 to i32
  %94 = icmp eq i32 %93, 73
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %87
  %96 = load i16, i16* %9, align 2
  %97 = add i16 %96, -1
  store i16 %97, i16* %9, align 2
  br label %98

98:                                               ; preds = %95, %91
  br label %99

99:                                               ; preds = %98, %81
  %100 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %101 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i16, i16* %9, align 2
  %104 = call i32 @SiS_SetReg(i32 %102, i32 16, i16 zeroext %103)
  ret void
}

declare dso_local zeroext i16 @SiS_GetOffset(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
