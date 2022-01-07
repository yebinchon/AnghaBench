; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64bsd-nat.c_fetch_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64bsd-nat.c_fetch_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32 }
%struct.fpreg = type { i32 }

@PT_GETREGS = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't get registers\00", align 1
@current_regcache = common dso_local global i32 0, align 4
@AMD64_ST0_REGNUM = common dso_local global i32 0, align 4
@PT_GETFPREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Couldn't get floating point status\00", align 1

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
  %9 = call i64 @amd64_native_gregset_supplies_p(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

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
  %21 = load i32, i32* @current_regcache, align 4
  %22 = call i32 @amd64_supply_native_gregset(i32 %21, %struct.reg* %3, i32 -1)
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %46

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %7
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @AMD64_ST0_REGNUM, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30, %27
  %35 = load i32, i32* @PT_GETFPREGS, align 4
  %36 = load i32, i32* @inferior_ptid, align 4
  %37 = call i32 @PIDGET(i32 %36)
  %38 = ptrtoint %struct.fpreg* %4 to i32
  %39 = call i32 @ptrace(i32 %35, i32 %37, i32 %38, i32 0)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @perror_with_name(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %34
  %44 = load i32, i32* @current_regcache, align 4
  %45 = call i32 @amd64_supply_fxsave(i32 %44, i32 -1, %struct.fpreg* %4)
  br label %46

46:                                               ; preds = %25, %43, %30
  ret void
}

declare dso_local i64 @amd64_native_gregset_supplies_p(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @amd64_supply_native_gregset(i32, %struct.reg*, i32) #1

declare dso_local i32 @amd64_supply_fxsave(i32, i32, %struct.fpreg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
