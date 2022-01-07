; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-nat.c_getfpregs_supplies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-nat.c_getfpregs_supplies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i32 0, align 4
@FPLAST_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @getfpregs_supplies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfpregs_supplies(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdbarch_tdep*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @current_gdbarch, align 4
  %5 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %4)
  store %struct.gdbarch_tdep* %5, %struct.gdbarch_tdep** %3, align 8
  %6 = load i32, i32* @current_gdbarch, align 4
  %7 = call i32 @ppc_floating_point_unit_p(i32 %6)
  %8 = call i32 @gdb_assert(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @FP0_REGNUM, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @FPLAST_REGNUM, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %19 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi i1 [ true, %12 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @ppc_floating_point_unit_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
