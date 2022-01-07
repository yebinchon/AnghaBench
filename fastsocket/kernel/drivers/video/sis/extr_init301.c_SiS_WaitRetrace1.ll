; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_WaitRetrace1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_WaitRetrace1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_WaitRetrace1(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %4 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %5 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @SiS_GetReg(i32 %6, i32 31)
  %8 = and i32 %7, 192
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SiS_GetReg(i32 %14, i32 23)
  %16 = and i32 %15, 128
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %51

19:                                               ; preds = %11
  store i16 -1, i16* %3, align 2
  br label %20

20:                                               ; preds = %34, %19
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SiS_GetRegByte(i32 %23)
  %25 = and i32 %24, 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i16, i16* %3, align 2
  %29 = add i16 %28, -1
  store i16 %29, i16* %3, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %27, %20
  %33 = phi i1 [ false, %20 ], [ %31, %27 ]
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  br label %20

35:                                               ; preds = %32
  store i16 -1, i16* %3, align 2
  br label %36

36:                                               ; preds = %50, %35
  %37 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %38 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SiS_GetRegByte(i32 %39)
  %41 = and i32 %40, 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load i16, i16* %3, align 2
  %45 = add i16 %44, -1
  store i16 %45, i16* %3, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %36
  %49 = phi i1 [ false, %36 ], [ %47, %43 ]
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %36

51:                                               ; preds = %10, %18, %48
  ret void
}

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_GetRegByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
