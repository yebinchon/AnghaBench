; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-nat.c_store_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-nat.c_store_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32 }
%struct.fpreg = type { i32 }

@PT_GETREGS = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't get registers\00", align 1
@PT_SETREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Couldn't write registers\00", align 1
@PT_GETFPREGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Couldn't get FP registers\00", align 1
@PT_SETFPREGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Couldn't set FP registers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_inferior_registers(i32 %0) #0 {
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
  br i1 %10, label %11, label %39

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @PT_GETREGS, align 4
  %13 = load i32, i32* @inferior_ptid, align 4
  %14 = call i32 @PIDGET(i32 %13)
  %15 = ptrtoint %struct.reg* %3 to i32
  %16 = call i32 @ptrace(i32 %12, i32 %14, i32 %15, i32 0)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @perror_with_name(i32 %19)
  br label %21

21:                                               ; preds = %18, %11
  %22 = bitcast %struct.reg* %3 to i8*
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @ppcfbsd_fill_reg(i8* %22, i32 %23)
  %25 = load i32, i32* @PT_SETREGS, align 4
  %26 = load i32, i32* @inferior_ptid, align 4
  %27 = call i32 @PIDGET(i32 %26)
  %28 = ptrtoint %struct.reg* %3 to i32
  %29 = call i32 @ptrace(i32 %25, i32 %27, i32 %28, i32 0)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @perror_with_name(i32 %32)
  br label %34

34:                                               ; preds = %31, %21
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %70

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %7
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %2, align 4
  %44 = call i64 @getfpregs_supplies(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %42, %39
  %47 = load i32, i32* @PT_GETFPREGS, align 4
  %48 = load i32, i32* @inferior_ptid, align 4
  %49 = call i32 @PIDGET(i32 %48)
  %50 = ptrtoint %struct.fpreg* %4 to i32
  %51 = call i32 @ptrace(i32 %47, i32 %49, i32 %50, i32 0)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @perror_with_name(i32 %54)
  br label %56

56:                                               ; preds = %53, %46
  %57 = bitcast %struct.fpreg* %4 to i8*
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @ppcfbsd_fill_fpreg(i8* %57, i32 %58)
  %60 = load i32, i32* @PT_SETFPREGS, align 4
  %61 = load i32, i32* @inferior_ptid, align 4
  %62 = call i32 @PIDGET(i32 %61)
  %63 = ptrtoint %struct.fpreg* %4 to i32
  %64 = call i32 @ptrace(i32 %60, i32 %62, i32 %63, i32 0)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32 @perror_with_name(i32 %67)
  br label %69

69:                                               ; preds = %66, %56
  br label %70

70:                                               ; preds = %37, %69, %42
  ret void
}

declare dso_local i64 @getregs_supplies(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @perror_with_name(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ppcfbsd_fill_reg(i8*, i32) #1

declare dso_local i64 @getfpregs_supplies(i32) #1

declare dso_local i32 @ppcfbsd_fill_fpreg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
