; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-nat.c_fetch_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-nat.c_fetch_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32 }
%struct.fpreg = type { i32 }

@PT_GETREGS = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't get registers\00", align 1
@PT_GETFPREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Couldn't get FP registers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetch_inferior_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reg, align 4
  %4 = alloca %struct.fpreg, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @getregs_supplies(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @PT_GETREGS, align 4
  %13 = load i32, i32* @inferior_ptid, align 4
  %14 = call i32 @PIDGET(i32 %13)
  %15 = ptrtoint %struct.reg* %3 to i32
  %16 = call i32 @ptrace(i32 %12, i32 %14, i32 %15, i32 0)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @perror_with_name(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %11
  %21 = bitcast %struct.reg* %3 to i8*
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @ppcnbsd_supply_reg(i8* %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %52

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %7
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @getfpregs_supplies(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @PT_GETFPREGS, align 4
  %37 = load i32, i32* @inferior_ptid, align 4
  %38 = call i32 @PIDGET(i32 %37)
  %39 = ptrtoint %struct.fpreg* %4 to i32
  %40 = call i32 @ptrace(i32 %36, i32 %38, i32 %39, i32 0)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @perror_with_name(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  %45 = bitcast %struct.fpreg* %4 to i8*
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @ppcnbsd_supply_fpreg(i8* %45, i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %26, %50, %51, %31
  ret void
}

declare dso_local i64 @getregs_supplies(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @ppcnbsd_supply_reg(i8*, i32) #1

declare dso_local i64 @getfpregs_supplies(i32) #1

declare dso_local i32 @ppcnbsd_supply_fpreg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
