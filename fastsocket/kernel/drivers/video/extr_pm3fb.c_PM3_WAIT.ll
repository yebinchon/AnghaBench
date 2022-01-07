; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm3fb.c_PM3_WAIT.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm3fb.c_PM3_WAIT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm3_par = type { i32 }

@PM3InFIFOSpace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm3_par*, i64)* @PM3_WAIT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM3_WAIT(%struct.pm3_par* %0, i64 %1) #0 {
  %3 = alloca %struct.pm3_par*, align 8
  %4 = alloca i64, align 8
  store %struct.pm3_par* %0, %struct.pm3_par** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %5

5:                                                ; preds = %11, %2
  %6 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %7 = load i32, i32* @PM3InFIFOSpace, align 4
  %8 = call i64 @PM3_READ_REG(%struct.pm3_par* %6, i32 %7)
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = call i32 (...) @cpu_relax()
  br label %5

13:                                               ; preds = %5
  ret void
}

declare dso_local i64 @PM3_READ_REG(%struct.pm3_par*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
