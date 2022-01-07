; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_initialize_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_initialize_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_timer* }
%struct.snd_timer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 (%struct.snd_timer.0*)* }
%struct.snd_timer.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@DEFAULT_FREQUENCY = common dso_local global i64 0, align 8
@MIN_FREQUENCY = common dso_local global i64 0, align 8
@MAX_FREQUENCY = common dso_local global i64 0, align 8
@SNDRV_TIMER_HW_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_timer*)* @initialize_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_timer(%struct.snd_seq_timer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_timer*, align 8
  %4 = alloca %struct.snd_timer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snd_seq_timer* %0, %struct.snd_seq_timer** %3, align 8
  %7 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %8 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.snd_timer*, %struct.snd_timer** %10, align 8
  store %struct.snd_timer* %11, %struct.snd_timer** %4, align 8
  %12 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %13 = icmp ne %struct.snd_timer* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %97

21:                                               ; preds = %1
  %22 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %23 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* @DEFAULT_FREQUENCY, align 8
  store i64 %28, i64* %5, align 8
  br label %43

29:                                               ; preds = %21
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @MIN_FREQUENCY, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @MIN_FREQUENCY, align 8
  store i64 %34, i64* %5, align 8
  br label %42

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @MAX_FREQUENCY, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @MAX_FREQUENCY, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %39, %35
  br label %42

42:                                               ; preds = %41, %33
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %45 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %44, i32 0, i32 1
  store i32 1, i32* %45, align 8
  %46 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %47 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SNDRV_TIMER_HW_SLAVE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %94, label %53

53:                                               ; preds = %43
  %54 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %55 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %53
  %61 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %62 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64 (%struct.snd_timer.0*)*, i64 (%struct.snd_timer.0*)** %63, align 8
  %65 = icmp ne i64 (%struct.snd_timer.0*)* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %68 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64 (%struct.snd_timer.0*)*, i64 (%struct.snd_timer.0*)** %69, align 8
  %71 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %72 = bitcast %struct.snd_timer* %71 to %struct.snd_timer.0*
  %73 = call i64 %70(%struct.snd_timer.0* %72)
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %66, %60, %53
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %74
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %5, align 8
  %80 = mul i64 %78, %79
  %81 = udiv i64 1000000000, %80
  %82 = trunc i64 %81 to i32
  %83 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %84 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %86 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %91 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %90, i32 0, i32 1
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %77
  br label %93

93:                                               ; preds = %92, %74
  br label %94

94:                                               ; preds = %93, %43
  %95 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %96 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %95, i32 0, i32 2
  store i32 1, i32* %96, align 4
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %94, %18
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
