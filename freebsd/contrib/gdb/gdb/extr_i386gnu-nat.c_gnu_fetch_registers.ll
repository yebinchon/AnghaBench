; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386gnu-nat.c_gnu_fetch_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386gnu-nat.c_gnu_fetch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@current_inferior = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Can't fetch registers from thread %d: No such thread\00", align 1
@I386_NUM_GREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't fetch registers from %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"fetching all register\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"fetching register %s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"fetching floating-point registers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnu_fetch_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @current_inferior, align 4
  %7 = call i32 @inf_update_procs(i32 %6)
  %8 = load i32, i32* @current_inferior, align 4
  %9 = load i32, i32* @inferior_ptid, align 4
  %10 = call i32 @PIDGET(i32 %9)
  %11 = call %struct.proc* @inf_tid_to_thread(i32 %8, i32 %10)
  store %struct.proc* %11, %struct.proc** %3, align 8
  %12 = load %struct.proc*, %struct.proc** %3, align 8
  %13 = icmp ne %struct.proc* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @inferior_ptid, align 4
  %16 = call i32 @PIDGET(i32 %15)
  %17 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @I386_NUM_GREGS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %73

25:                                               ; preds = %22, %18
  %26 = load %struct.proc*, %struct.proc** %3, align 8
  %27 = call i32 @proc_get_state(%struct.proc* %26, i32 0)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.proc*, %struct.proc** %3, align 8
  %32 = call i32 @proc_string(%struct.proc* %31)
  %33 = call i32 @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %85

34:                                               ; preds = %25
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load %struct.proc*, %struct.proc** %3, align 8
  %39 = call i32 (%struct.proc*, i8*, ...) @proc_debug(%struct.proc* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %50, %37
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @I386_NUM_GREGS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @REG_ADDR(i32 %46, i32 %47)
  %49 = call i32 @supply_register(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load %struct.proc*, %struct.proc** %3, align 8
  %55 = getelementptr inbounds %struct.proc, %struct.proc* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 4
  br label %72

56:                                               ; preds = %34
  %57 = load %struct.proc*, %struct.proc** %3, align 8
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @REGISTER_NAME(i32 %58)
  %60 = call i32 (%struct.proc*, i8*, ...) @proc_debug(%struct.proc* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @REG_ADDR(i32 %62, i32 %63)
  %65 = call i32 @supply_register(i32 %61, i32 %64)
  %66 = load i32, i32* %2, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.proc*, %struct.proc** %3, align 8
  %69 = getelementptr inbounds %struct.proc, %struct.proc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %56, %53
  br label %73

73:                                               ; preds = %72, %22
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @I386_NUM_GREGS, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %2, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %85

80:                                               ; preds = %77, %73
  %81 = load %struct.proc*, %struct.proc** %3, align 8
  %82 = call i32 (%struct.proc*, i8*, ...) @proc_debug(%struct.proc* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.proc*, %struct.proc** %3, align 8
  %84 = call i32 @fetch_fpregs(%struct.proc* %83)
  br label %85

85:                                               ; preds = %30, %80, %77
  ret void
}

declare dso_local i32 @inf_update_procs(i32) #1

declare dso_local %struct.proc* @inf_tid_to_thread(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @proc_get_state(%struct.proc*, i32) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @proc_string(%struct.proc*) #1

declare dso_local i32 @proc_debug(%struct.proc*, i8*, ...) #1

declare dso_local i32 @supply_register(i32, i32) #1

declare dso_local i32 @REG_ADDR(i32, i32) #1

declare dso_local i32 @REGISTER_NAME(i32) #1

declare dso_local i32 @fetch_fpregs(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
