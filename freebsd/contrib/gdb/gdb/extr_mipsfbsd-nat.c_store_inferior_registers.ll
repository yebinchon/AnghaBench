; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsfbsd-nat.c_store_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsfbsd-nat.c_store_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32 }
%struct.fpreg = type { i32 }

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
  br i1 %10, label %11, label %37

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
  %23 = call i32 @mipsfbsd_fill_reg(i8* %21, i32 %22)
  %24 = load i32, i32* @PT_SETREGS, align 4
  %25 = load i32, i32* @inferior_ptid, align 4
  %26 = call i32 @PIDGET(i32 %25)
  %27 = ptrtoint %struct.reg* %3 to i32
  %28 = call i32 @ptrace(i32 %24, i32 %26, i32 %27, i32 0)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = call i32 @perror_with_name(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %20
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %66

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %7
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @FP0_REGNUM, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @PT_GETFPREGS, align 4
  %46 = load i32, i32* @inferior_ptid, align 4
  %47 = call i32 @PIDGET(i32 %46)
  %48 = ptrtoint %struct.fpreg* %4 to i32
  %49 = call i32 @ptrace(i32 %45, i32 %47, i32 %48, i32 0)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @perror_with_name(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44
  %54 = bitcast %struct.fpreg* %4 to i8*
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @mipsfbsd_fill_fpreg(i8* %54, i32 %55)
  %57 = load i32, i32* @PT_SETFPREGS, align 4
  %58 = load i32, i32* @inferior_ptid, align 4
  %59 = call i32 @PIDGET(i32 %58)
  %60 = ptrtoint %struct.fpreg* %4 to i32
  %61 = call i32 @ptrace(i32 %57, i32 %59, i32 %60, i32 0)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = call i32 @perror_with_name(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %53
  br label %66

66:                                               ; preds = %35, %65, %40
  ret void
}

declare dso_local i64 @getregs_supplies(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @mipsfbsd_fill_reg(i8*, i32) #1

declare dso_local i32 @mipsfbsd_fill_fpreg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
