; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_intel8x0m.c_snd_intel8x0_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_intel8x0m.c_snd_intel8x0_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0m = type { i32, i32, i32, i32, %struct.ichdev* }
%struct.ichdev = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_intel8x0_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.intel8x0m*, align 8
  %7 = alloca %struct.ichdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.intel8x0m*
  store %struct.intel8x0m* %11, %struct.intel8x0m** %6, align 8
  %12 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %13 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %16 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %17 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @igetdword(%struct.intel8x0m* %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %24 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %23, i32 0, i32 2
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %92

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %30 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %39 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %40 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @iputdword(%struct.intel8x0m* %38, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %34
  %45 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %46 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %45, i32 0, i32 2
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* @IRQ_NONE, align 4
  store i32 %48, i32* %3, align 4
  br label %92

49:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %53 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %58 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %57, i32 0, i32 4
  %59 = load %struct.ichdev*, %struct.ichdev** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %59, i64 %61
  store %struct.ichdev* %62, %struct.ichdev** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.ichdev*, %struct.ichdev** %7, align 8
  %65 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %71 = load %struct.ichdev*, %struct.ichdev** %7, align 8
  %72 = call i32 @snd_intel8x0_update(%struct.intel8x0m* %70, %struct.ichdev* %71)
  br label %73

73:                                               ; preds = %69, %56
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %50

77:                                               ; preds = %50
  %78 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %79 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %80 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %84 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %82, %85
  %87 = call i32 @iputdword(%struct.intel8x0m* %78, i32 %81, i32 %86)
  %88 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %89 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %88, i32 0, i32 2
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %77, %44, %22
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @igetdword(%struct.intel8x0m*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iputdword(%struct.intel8x0m*, i32, i32) #1

declare dso_local i32 @snd_intel8x0_update(%struct.intel8x0m*, %struct.ichdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
