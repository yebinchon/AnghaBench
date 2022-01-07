; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sound.c_find_snd_minor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sound.c_find_snd_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_minor = type { i32, i32, i32 }
%struct.snd_card = type { i32 }

@snd_minors = common dso_local global %struct.snd_minor** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.snd_card*, i32)* @find_snd_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_snd_minor(i32 %0, %struct.snd_card* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_minor*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.snd_card* %1, %struct.snd_card** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %12 = icmp ne %struct.snd_card* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %15 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ -1, %17 ]
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %53, %18
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.snd_minor**, %struct.snd_minor*** @snd_minors, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.snd_minor** %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %20
  %26 = load %struct.snd_minor**, %struct.snd_minor*** @snd_minors, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.snd_minor*, %struct.snd_minor** %26, i64 %28
  %30 = load %struct.snd_minor*, %struct.snd_minor** %29, align 8
  store %struct.snd_minor* %30, %struct.snd_minor** %10, align 8
  %31 = icmp ne %struct.snd_minor* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %25
  %33 = load %struct.snd_minor*, %struct.snd_minor** %10, align 8
  %34 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.snd_minor*, %struct.snd_minor** %10, align 8
  %40 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.snd_minor*, %struct.snd_minor** %10, align 8
  %46 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %57

52:                                               ; preds = %44, %38, %32, %25
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %20

56:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ARRAY_SIZE(%struct.snd_minor**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
