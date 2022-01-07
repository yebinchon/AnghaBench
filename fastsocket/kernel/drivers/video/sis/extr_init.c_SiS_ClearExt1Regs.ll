; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_ClearExt1Regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_ClearExt1Regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32 }

@SIS_315H = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_ClearExt1Regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_ClearExt1Regs(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  store i16 10, i16* %5, align 2
  br label %6

6:                                                ; preds = %17, %2
  %7 = load i16, i16* %5, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp sle i32 %8, 14
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %12 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = call i32 @SiS_SetReg(i32 %13, i32 %15, i32 0)
  br label %17

17:                                               ; preds = %10
  %18 = load i16, i16* %5, align 2
  %19 = add i16 %18, 1
  store i16 %19, i16* %5, align 2
  br label %6

20:                                               ; preds = %6
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SIS_315H, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %28 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @SiS_SetRegAND(i32 %29, i32 55, i32 254)
  %31 = load i16, i16* %4, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp sle i32 %32, 19
  br i1 %33, label %34, label %48

34:                                               ; preds = %26
  %35 = load i16, i16* %4, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp eq i32 %36, 6
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i16, i16* %4, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp sge i32 %40, 14
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %34
  %43 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %44 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @SiS_SetReg(i32 %45, i32 14, i32 32)
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %26
  br label %49

49:                                               ; preds = %48, %20
  ret void
}

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
