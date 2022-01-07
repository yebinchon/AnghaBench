; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-fbsd-nat.c_store_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-fbsd-nat.c_store_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@PT_GETREGS = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't get registers\00", align 1
@PT_SETREGS = common dso_local global i32 0, align 4
@PT_GETFPREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Couldn't get FP registers\00", align 1
@PT_SETFPREGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_inferior_registers(i32 %0) #0 {
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
  br i1 %9, label %10, label %38

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
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @fill_gregset(i32* %21, i32 %22)
  %24 = load i32, i32* @PT_SETREGS, align 4
  %25 = load i32, i32* @inferior_ptid, align 4
  %26 = call i32 @PIDGET(i32 %25)
  %27 = bitcast %union.anon* %3 to i32*
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 @ptrace(i32 %24, i32 %26, i32 %28, i32 0)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = call i32 @perror_with_name(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %20
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %73

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %6
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %2, align 4
  %43 = call i64 @FPREG_SUPPLIES(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @PT_GETFPREGS, align 4
  %47 = load i32, i32* @inferior_ptid, align 4
  %48 = call i32 @PIDGET(i32 %47)
  %49 = bitcast %union.anon* %3 to i32*
  %50 = ptrtoint i32* %49 to i32
  %51 = call i32 @ptrace(i32 %46, i32 %48, i32 %50, i32 0)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call i32 @perror_with_name(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %45
  %56 = bitcast %union.anon* %3 to i32*
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @fill_fpregset(i32* %56, i32 %57)
  %59 = load i32, i32* @PT_SETFPREGS, align 4
  %60 = load i32, i32* @inferior_ptid, align 4
  %61 = call i32 @PIDGET(i32 %60)
  %62 = bitcast %union.anon* %3 to i32*
  %63 = ptrtoint i32* %62 to i32
  %64 = call i32 @ptrace(i32 %59, i32 %61, i32 %63, i32 0)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = call i32 @perror_with_name(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %55
  %69 = load i32, i32* %2, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %73

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %36, %71, %72, %41
  ret void
}

declare dso_local i64 @GREG_SUPPLIES(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @fill_gregset(i32*, i32) #1

declare dso_local i64 @FPREG_SUPPLIES(i32) #1

declare dso_local i32 @fill_fpregset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
