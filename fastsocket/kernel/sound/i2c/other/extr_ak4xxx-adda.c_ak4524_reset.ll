; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4xxx-adda.c_ak4524_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4xxx-adda.c_ak4524_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { i64, i32 }

@SND_AK4528 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @ak4524_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak4524_reset(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %9 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SND_AK4528, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8 6, i8* %7, align 1
  br label %15

14:                                               ; preds = %2
  store i8 8, i8* %7, align 1
  br label %15

15:                                               ; preds = %14, %13
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %54, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %19 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 2
  %22 = icmp ult i32 %17, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %16
  %24 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 3
  %30 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %24, i32 %25, i8 zeroext 1, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %54

34:                                               ; preds = %23
  store i8 4, i8* %6, align 1
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i8, i8* %6, align 1
  %45 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i8, i8* %6, align 1
  %48 = call i32 @snd_akm4xxx_get(%struct.snd_akm4xxx* %45, i32 %46, i8 zeroext %47)
  %49 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %42, i32 %43, i8 zeroext %44, i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i8, i8* %6, align 1
  %52 = add i8 %51, 1
  store i8 %52, i8* %6, align 1
  br label %35

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %33
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %16

57:                                               ; preds = %16
  ret void
}

declare dso_local i32 @snd_akm4xxx_write(%struct.snd_akm4xxx*, i32, i8 zeroext, i32) #1

declare dso_local i32 @snd_akm4xxx_get(%struct.snd_akm4xxx*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
