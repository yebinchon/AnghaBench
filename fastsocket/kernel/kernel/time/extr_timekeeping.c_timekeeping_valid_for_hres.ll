; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_timekeeping_valid_for_hres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_timekeeping_valid_for_hres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@timekeeper = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CLOCK_SOURCE_VALID_FOR_HRES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timekeeping_valid_for_hres() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %10, %0
  %4 = call i64 @read_seqbegin(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @timekeeper, i32 0, i32 1))
  store i64 %4, i64* %1, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @timekeeper, i32 0, i32 0), align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CLOCK_SOURCE_VALID_FOR_HRES, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %1, align 8
  %12 = call i64 @read_seqretry(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @timekeeper, i32 0, i32 1), i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %3, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i64 @read_seqbegin(i32*) #1

declare dso_local i64 @read_seqretry(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
