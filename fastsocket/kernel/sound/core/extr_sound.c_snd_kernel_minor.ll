; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sound.c_snd_kernel_minor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sound.c_snd_kernel_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_OS_MINORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.snd_card*, i32)* @snd_kernel_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_kernel_minor(i32 %0, %struct.snd_card* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.snd_card* %1, %struct.snd_card** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %46 [
    i32 129, label %10
    i32 128, label %10
    i32 134, label %12
    i32 133, label %28
    i32 130, label %28
    i32 131, label %28
    i32 132, label %28
  ]

10:                                               ; preds = %3, %3
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %8, align 4
  br label %49

12:                                               ; preds = %3
  %13 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %14 = icmp ne %struct.snd_card* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @snd_BUG_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %66

22:                                               ; preds = %12
  %23 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %24 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @SNDRV_MINOR(i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %49

28:                                               ; preds = %3, %3, %3, %3
  %29 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %30 = icmp ne %struct.snd_card* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @snd_BUG_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %66

38:                                               ; preds = %28
  %39 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %40 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @SNDRV_MINOR(i32 %41, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %66

49:                                               ; preds = %38, %22, %10
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @SNDRV_OS_MINORS, align 4
  %55 = icmp sge i32 %53, %54
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i1 [ true, %49 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @snd_BUG_ON(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %61, %46, %35, %19
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @SNDRV_MINOR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
