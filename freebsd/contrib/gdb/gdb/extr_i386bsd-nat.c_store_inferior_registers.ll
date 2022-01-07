; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386bsd-nat.c_store_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386bsd-nat.c_store_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PT_GETREGS = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't get registers\00", align 1
@PT_SETREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Couldn't write registers\00", align 1
@FP0_REGNUM = common dso_local global i32 0, align 4
@PT_GETFPREGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Couldn't get floating point status\00", align 1
@PT_SETFPREGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Couldn't write floating point status\00", align 1
@PT_GETXMMREGS = common dso_local global i32 0, align 4
@PT_SETXMMREGS = common dso_local global i32 0, align 4
@have_ptrace_xmmregs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_inferior_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @GETREGS_SUPPLIES(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @PT_GETREGS, align 4
  %13 = load i32, i32* @inferior_ptid, align 4
  %14 = call i32 @PIDGET(i32 %13)
  %15 = ptrtoint i32* %3 to i32
  %16 = call i32 @ptrace(i32 %12, i32 %14, i32 %15, i32 0)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @perror_with_name(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @fill_gregset(i32* %3, i32 %21)
  %23 = load i32, i32* @PT_SETREGS, align 4
  %24 = load i32, i32* @inferior_ptid, align 4
  %25 = call i32 @PIDGET(i32 %24)
  %26 = ptrtoint i32* %3 to i32
  %27 = call i32 @ptrace(i32 %23, i32 %25, i32 %26, i32 0)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 @perror_with_name(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %20
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %65

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %7
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @FP0_REGNUM, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39, %36
  %44 = load i32, i32* @PT_GETFPREGS, align 4
  %45 = load i32, i32* @inferior_ptid, align 4
  %46 = call i32 @PIDGET(i32 %45)
  %47 = ptrtoint i32* %4 to i32
  %48 = call i32 @ptrace(i32 %44, i32 %46, i32 %47, i32 0)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 @perror_with_name(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  %53 = bitcast i32* %4 to i8*
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @i387_fill_fsave(i8* %53, i32 %54)
  %56 = load i32, i32* @PT_SETFPREGS, align 4
  %57 = load i32, i32* @inferior_ptid, align 4
  %58 = call i32 @PIDGET(i32 %57)
  %59 = ptrtoint i32* %4 to i32
  %60 = call i32 @ptrace(i32 %56, i32 %58, i32 %59, i32 0)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = call i32 @perror_with_name(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %52
  br label %65

65:                                               ; preds = %34, %64, %39
  ret void
}

declare dso_local i64 @GETREGS_SUPPLIES(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @fill_gregset(i32*, i32) #1

declare dso_local i32 @i387_fill_fsave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
