; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_pcm.c_pcm_set_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_pcm.c_pcm_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pcm_speed = common dso_local global i32 0, align 4
@pcm_channels = common dso_local global i32 0, align 4
@CLOCK_TICK_RATE = common dso_local global i32 0, align 4
@pcm_filter = common dso_local global i32 0, align 4
@pas_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pcm_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_set_speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @pcm_speed, align 4
  store i32 %10, i32* %2, align 4
  br label %116

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 44100
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 44100, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 5000
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 5000, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* @pcm_channels, align 4
  %21 = and i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load i32, i32* @CLOCK_TICK_RATE, align 4
  %25 = sdiv i32 %24, 2
  %26 = load i32, i32* %3, align 4
  %27 = sdiv i32 %26, 2
  %28 = add nsw i32 %25, %27
  %29 = load i32, i32* %3, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @CLOCK_TICK_RATE, align 4
  %32 = sdiv i32 %31, 2
  %33 = load i32, i32* %4, align 4
  %34 = sdiv i32 %33, 2
  %35 = add nsw i32 %32, %34
  %36 = load i32, i32* %4, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %3, align 4
  br label %51

38:                                               ; preds = %19
  %39 = load i32, i32* @CLOCK_TICK_RATE, align 4
  %40 = load i32, i32* %3, align 4
  %41 = sdiv i32 %40, 2
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* %3, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @CLOCK_TICK_RATE, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sdiv i32 %46, 2
  %48 = add nsw i32 %45, %47
  %49 = load i32, i32* %4, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %38, %23
  %52 = load i32, i32* %3, align 4
  store i32 %52, i32* @pcm_speed, align 4
  %53 = call i32 @pas_read(i32 2954)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 224
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @pcm_speed, align 4
  %57 = icmp sge i32 %56, 35794
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %96

61:                                               ; preds = %51
  %62 = load i32, i32* @pcm_speed, align 4
  %63 = icmp sge i32 %62, 31818
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, 2
  store i32 %66, i32* %5, align 4
  br label %95

67:                                               ; preds = %61
  %68 = load i32, i32* @pcm_speed, align 4
  %69 = icmp sge i32 %68, 23862
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, 9
  store i32 %72, i32* %5, align 4
  br label %94

73:                                               ; preds = %67
  %74 = load i32, i32* @pcm_speed, align 4
  %75 = icmp sge i32 %74, 17896
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, 17
  store i32 %78, i32* %5, align 4
  br label %93

79:                                               ; preds = %73
  %80 = load i32, i32* @pcm_speed, align 4
  %81 = icmp sge i32 %80, 11930
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, 25
  store i32 %84, i32* %5, align 4
  br label %92

85:                                               ; preds = %79
  %86 = load i32, i32* @pcm_speed, align 4
  %87 = icmp sge i32 %86, 5964
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %82
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %70
  br label %95

95:                                               ; preds = %94, %64
  br label %96

96:                                               ; preds = %95, %58
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* @pcm_filter, align 4
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @spin_lock_irqsave(i32* @pas_lock, i64 %98)
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, -193
  %102 = call i32 @pas_write(i32 %101, i32 2954)
  %103 = call i32 @pas_write(i32 52, i32 5003)
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, 255
  %106 = call i32 @pas_write(i32 %105, i32 5000)
  %107 = load i32, i32* %4, align 4
  %108 = ashr i32 %107, 8
  %109 = and i32 %108, 255
  %110 = call i32 @pas_write(i32 %109, i32 5000)
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @pas_write(i32 %111, i32 2954)
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* @pas_lock, i64 %113)
  %115 = load i32, i32* @pcm_speed, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %96, %9
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @pas_read(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pas_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
