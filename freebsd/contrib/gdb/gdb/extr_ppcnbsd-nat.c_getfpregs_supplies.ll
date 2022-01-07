; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-nat.c_getfpregs_supplies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-nat.c_getfpregs_supplies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @getfpregs_supplies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfpregs_supplies(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdbarch_tdep*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @current_gdbarch, align 4
  %5 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %4)
  store %struct.gdbarch_tdep* %5, %struct.gdbarch_tdep** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @FP0_REGNUM, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @FP0_REGNUM, align 4
  %12 = add nsw i32 %11, 31
  %13 = icmp sle i32 %10, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %17 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i1 [ true, %9 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
