; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_drain_dac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_drain_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_state = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i64 }

@current = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1550_state*, i32)* @drain_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drain_dac(%struct.au1550_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au1550_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.au1550_state* %0, %struct.au1550_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.au1550_state*, %struct.au1550_state** %4, align 8
  %10 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load %struct.au1550_state*, %struct.au1550_state** %4, align 8
  %16 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.au1550_state*, %struct.au1550_state** %4, align 8
  %22 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14, %2
  store i32 0, i32* %3, align 4
  br label %91

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %72, %27
  %29 = load %struct.au1550_state*, %struct.au1550_state** %4, align 8
  %30 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %29, i32 0, i32 2
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.au1550_state*, %struct.au1550_state** %4, align 8
  %34 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.au1550_state*, %struct.au1550_state** %4, align 8
  %38 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %37, i32 0, i32 2
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.au1550_state*, %struct.au1550_state** %4, align 8
  %43 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  br label %83

48:                                               ; preds = %28
  %49 = load i32, i32* @current, align 4
  %50 = call i64 @signal_pending(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %83

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %91

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 1000, %60
  %62 = load %struct.au1550_state*, %struct.au1550_state** %4, align 8
  %63 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %72

67:                                               ; preds = %59
  %68 = load %struct.au1550_state*, %struct.au1550_state** %4, align 8
  %69 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  br label %72

72:                                               ; preds = %67, %66
  %73 = phi i32 [ 48000, %66 ], [ %71, %67 ]
  %74 = sdiv i32 %61, %73
  store i32 %74, i32* %8, align 4
  %75 = load %struct.au1550_state*, %struct.au1550_state** %4, align 8
  %76 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sdiv i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @au1550_delay(i32 %81)
  br label %28

83:                                               ; preds = %52, %47
  %84 = load i32, i32* @current, align 4
  %85 = call i64 @signal_pending(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @ERESTARTSYS, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %91

90:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %87, %56, %26
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @au1550_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
