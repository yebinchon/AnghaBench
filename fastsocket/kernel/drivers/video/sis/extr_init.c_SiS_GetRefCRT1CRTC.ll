; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_GetRefCRT1CRTC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_GetRefCRT1CRTC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i16, i16, i16 }

@HaveWideTiming = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_GetRefCRT1CRTC(%struct.SiS_Private* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %9 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i16, i16* %6, align 2
  %12 = zext i16 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HaveWideTiming, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i16, i16* %29, align 4
  store i16 %30, i16* %4, align 2
  br label %49

31:                                               ; preds = %19
  %32 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %33 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i16, i16* %38, align 2
  store i16 %39, i16* %4, align 2
  br label %49

40:                                               ; preds = %3
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i16, i16* %6, align 2
  %45 = zext i16 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i16, i16* %47, align 4
  store i16 %48, i16* %4, align 2
  br label %49

49:                                               ; preds = %40, %31, %22
  %50 = load i16, i16* %4, align 2
  ret i16 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
