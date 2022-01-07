; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-nat.c_getregs_supplies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-nat.c_getregs_supplies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i32, i32, i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @getregs_supplies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getregs_supplies(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdbarch_tdep*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @current_gdbarch, align 4
  %5 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %4)
  store %struct.gdbarch_tdep* %5, %struct.gdbarch_tdep** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp sle i32 %9, 31
  br i1 %10, label %39, label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %14 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %39, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %20 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %2, align 4
  %25 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %26 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %32 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @PC_REGNUM, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %29, %23, %17, %11, %8
  %40 = phi i1 [ true, %29 ], [ true, %23 ], [ true, %17 ], [ true, %11 ], [ true, %8 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
