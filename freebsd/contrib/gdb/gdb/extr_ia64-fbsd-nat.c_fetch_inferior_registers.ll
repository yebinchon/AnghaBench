; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-fbsd-nat.c_fetch_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-fbsd-nat.c_fetch_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@PT_GETREGS = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't get registers\00", align 1
@PT_GETFPREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Couldn't get FP registers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetch_inferior_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.anon, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @GREG_SUPPLIES(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @PT_GETREGS, align 4
  %12 = load i32, i32* @inferior_ptid, align 4
  %13 = call i32 @PIDGET(i32 %12)
  %14 = bitcast %union.anon* %3 to i32*
  %15 = ptrtoint i32* %14 to i32
  %16 = call i32 @ptrace(i32 %11, i32 %13, i32 %15, i32 0)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = call i32 @perror_with_name(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %10
  %21 = bitcast %union.anon* %3 to i32*
  %22 = call i32 @supply_gregset(i32* %21)
  br label %23

23:                                               ; preds = %20, %6
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @FPREG_SUPPLIES(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @PT_GETFPREGS, align 4
  %32 = load i32, i32* @inferior_ptid, align 4
  %33 = call i32 @PIDGET(i32 %32)
  %34 = bitcast %union.anon* %3 to i32*
  %35 = ptrtoint i32* %34 to i32
  %36 = call i32 @ptrace(i32 %31, i32 %33, i32 %35, i32 0)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 @perror_with_name(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %30
  %41 = bitcast %union.anon* %3 to i32*
  %42 = call i32 @supply_fpregset(i32* %41)
  br label %43

43:                                               ; preds = %40, %26
  ret void
}

declare dso_local i64 @GREG_SUPPLIES(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @supply_gregset(i32*) #1

declare dso_local i64 @FPREG_SUPPLIES(i32) #1

declare dso_local i32 @supply_fpregset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
