; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_delta.c_delta_ak4524_set_rate_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_delta.c_delta_ak4524_set_rate_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { %struct.snd_ice1712** }
%struct.snd_ice1712 = type { i32 }

@ICE1712_IREG_GPIO_DATA = common dso_local global i32 0, align 4
@ICE1712_DELTA_DFS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @delta_ak4524_set_rate_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_ak4524_set_rate_val(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %9 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %8, i32 0, i32 0
  %10 = load %struct.snd_ice1712**, %struct.snd_ice1712*** %9, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712*, %struct.snd_ice1712** %10, i64 0
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %11, align 8
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %18 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %21 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %22 = call zeroext i8 @snd_ice1712_read(%struct.snd_ice1712* %20, i32 %21)
  store i8 %22, i8* %5, align 1
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %24 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @ICE1712_DELTA_DFS, align 1
  %29 = zext i8 %28 to i32
  %30 = xor i32 %29, -1
  %31 = and i32 %27, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %6, align 1
  %33 = load i32, i32* %4, align 4
  %34 = icmp ugt i32 %33, 48000
  br i1 %34, label %35, label %42

35:                                               ; preds = %16
  %36 = load i8, i8* @ICE1712_DELTA_DFS, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %6, align 1
  br label %42

42:                                               ; preds = %35, %16
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %83

49:                                               ; preds = %42
  %50 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %51 = call i32 @snd_akm4xxx_reset(%struct.snd_akm4xxx* %50, i32 1)
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %53 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %56 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %57 = call zeroext i8 @snd_ice1712_read(%struct.snd_ice1712* %55, i32 %56)
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @ICE1712_DELTA_DFS, align 1
  %60 = zext i8 %59 to i32
  %61 = xor i32 %60, -1
  %62 = and i32 %58, %61
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %5, align 1
  %64 = load i32, i32* %4, align 4
  %65 = icmp ugt i32 %64, 48000
  br i1 %65, label %66, label %73

66:                                               ; preds = %49
  %67 = load i8, i8* @ICE1712_DELTA_DFS, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* %5, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %5, align 1
  br label %73

73:                                               ; preds = %66, %49
  %74 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %75 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %76 = load i8, i8* %5, align 1
  %77 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %74, i32 %75, i8 zeroext %76)
  %78 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %79 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %82 = call i32 @snd_akm4xxx_reset(%struct.snd_akm4xxx* %81, i32 0)
  br label %83

83:                                               ; preds = %73, %48, %15
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i8 @snd_ice1712_read(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_akm4xxx_reset(%struct.snd_akm4xxx*, i32) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
