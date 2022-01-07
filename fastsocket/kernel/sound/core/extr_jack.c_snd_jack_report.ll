; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_jack.c_snd_jack_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_jack.c_snd_jack_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_jack = type { i32, i32 }

@jack_types = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_jack_report(%struct.snd_jack* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_jack*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_jack* %0, %struct.snd_jack** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %8 = icmp ne %struct.snd_jack* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %47

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %39, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** @jack_types, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %20 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %16
  %26 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %27 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** @jack_types, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @input_report_switch(i32 %28, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %25, %16
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %44 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @input_sync(i32 %45)
  br label %47

47:                                               ; preds = %42, %9
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
