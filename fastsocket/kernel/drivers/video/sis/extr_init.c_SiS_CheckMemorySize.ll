; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_CheckMemorySize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_CheckMemorySize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

@MemoryInfoFlag = common dso_local global i16 0, align 2
@MemorySizeShift = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SiS_Private*, i16, i16)* @SiS_CheckMemorySize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SiS_CheckMemorySize(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %12 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 1048576
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %8, align 2
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %17 = load i16, i16* %6, align 2
  %18 = load i16, i16* %7, align 2
  %19 = call zeroext i16 @SiS_GetModeFlag(%struct.SiS_Private* %16, i16 zeroext %17, i16 zeroext %18)
  store i16 %19, i16* %9, align 2
  %20 = load i16, i16* %9, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @MemoryInfoFlag, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = load i16, i16* @MemorySizeShift, align 2
  %26 = zext i16 %25 to i32
  %27 = ashr i32 %24, %26
  %28 = add nsw i32 %27, 1
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %10, align 2
  %30 = load i16, i16* %8, align 2
  %31 = icmp ne i16 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %41

33:                                               ; preds = %3
  %34 = load i16, i16* %8, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %10, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %41

40:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %39, %32
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local zeroext i16 @SiS_GetModeFlag(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
