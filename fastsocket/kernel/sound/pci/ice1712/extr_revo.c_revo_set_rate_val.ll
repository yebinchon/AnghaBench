; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_revo.c_revo_set_rate_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_revo.c_revo_set_rate_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { i64 }

@SND_AK4355 = common dso_local global i64 0, align 8
@SND_AK4358 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @revo_set_rate_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revo_set_rate_val(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %80

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ugt i32 %14, 96000
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i8 2, i8* %7, align 1
  br label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp ugt i32 %18, 48000
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i8 1, i8* %7, align 1
  br label %22

21:                                               ; preds = %17
  store i8 0, i8* %7, align 1
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %16
  %24 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %25 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SND_AK4355, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %31 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SND_AK4358, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %23
  store i32 2, i32* %8, align 4
  store i32 4, i32* %9, align 4
  br label %37

36:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  store i32 3, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx* %38, i32 0, i32 %39)
  store i8 %40, i8* %6, align 1
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = load i32, i32* %9, align 4
  %44 = ashr i32 %42, %43
  %45 = and i32 %44, 3
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %5, align 1
  %47 = load i8, i8* %5, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %7, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %80

53:                                               ; preds = %37
  %54 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %55 = call i32 @snd_akm4xxx_reset(%struct.snd_akm4xxx* %54, i32 1)
  %56 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx* %56, i32 0, i32 %57)
  store i8 %58, i8* %6, align 1
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 3, %59
  %61 = xor i32 %60, -1
  %62 = load i8, i8* %6, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, %61
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %6, align 1
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i32
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %67, %68
  %70 = load i8, i8* %6, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %6, align 1
  %74 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i8, i8* %6, align 1
  %77 = call i32 @snd_akm4xxx_set(%struct.snd_akm4xxx* %74, i32 0, i32 %75, i8 zeroext %76)
  %78 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %79 = call i32 @snd_akm4xxx_reset(%struct.snd_akm4xxx* %78, i32 0)
  br label %80

80:                                               ; preds = %53, %52, %12
  ret void
}

declare dso_local zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx*, i32, i32) #1

declare dso_local i32 @snd_akm4xxx_reset(%struct.snd_akm4xxx*, i32) #1

declare dso_local i32 @snd_akm4xxx_set(%struct.snd_akm4xxx*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
