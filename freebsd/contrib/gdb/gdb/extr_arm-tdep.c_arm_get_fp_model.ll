; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_get_fp_model.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_get_fp_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.TYPE_2__ = type { i32 }

@arm_fp_model = common dso_local global i64 0, align 8
@ARM_FLOAT_AUTO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_get_fp_model(%struct.gdbarch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdbarch*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  %4 = load i64, i64* @arm_fp_model, align 8
  %5 = load i64, i64* @ARM_FLOAT_AUTO, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %9 = call %struct.TYPE_2__* @gdbarch_tdep(%struct.gdbarch* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %2, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load i64, i64* @arm_fp_model, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %12, %7
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local %struct.TYPE_2__* @gdbarch_tdep(%struct.gdbarch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
