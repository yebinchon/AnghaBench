; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/dmasound/extr_dmasound_q40.c_Q40Play.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/dmasound/extr_dmasound_q40.c_Q40Play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@write_sq = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@dmasound = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Q40Play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Q40Play() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @write_sq, i32 0, i32 4), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @write_sq, i32 0, i32 0), align 8
  %6 = icmp sle i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  br label %25

8:                                                ; preds = %4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @write_sq, i32 0, i32 0), align 8
  %10 = icmp sle i32 %9, 1
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @write_sq, i32 0, i32 1), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @write_sq, i32 0, i32 2), align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @write_sq, i32 0, i32 3), align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %25

19:                                               ; preds = %15, %11, %8
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 0), i64 %20)
  %22 = call i32 @Q40PlayNextFrame(i32 1)
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 0), i64 %23)
  br label %25

25:                                               ; preds = %19, %18, %7
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @Q40PlayNextFrame(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
