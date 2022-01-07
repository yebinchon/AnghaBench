; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386gnu-nat.c_fetch_fpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386gnu-nat.c_fetch_fpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.i386_float_state = type { i32, i32 }

@i386_FLOAT_STATE_COUNT = common dso_local global i32 0, align 4
@i386_FLOAT_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Couldn't fetch floating-point state from %s\00", align 1
@FP0_REGNUM = common dso_local global i32 0, align 4
@FOP_REGNUM = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*)* @fetch_fpregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_fpregs(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i386_float_state, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %2, align 8
  %7 = load i32, i32* @i386_FLOAT_STATE_COUNT, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.proc*, %struct.proc** %2, align 8
  %9 = getelementptr inbounds %struct.proc, %struct.proc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @i386_FLOAT_STATE, align 4
  %12 = ptrtoint %struct.i386_float_state* %4 to i32
  %13 = call i64 @thread_get_state(i32 %10, i32 %11, i32 %12, i32* %3)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.proc*, %struct.proc** %2, align 8
  %18 = call i32 @proc_string(%struct.proc* %17)
  %19 = call i32 @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %42

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.i386_float_state, %struct.i386_float_state* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @FP0_REGNUM, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %33, %24
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @FOP_REGNUM, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @supply_register(i32 %31, i32* null)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %26

36:                                               ; preds = %26
  br label %42

37:                                               ; preds = %20
  %38 = load i32, i32* @current_regcache, align 4
  %39 = getelementptr inbounds %struct.i386_float_state, %struct.i386_float_state* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @i387_supply_fsave(i32 %38, i32 -1, i32 %40)
  br label %42

42:                                               ; preds = %37, %36, %16
  ret void
}

declare dso_local i64 @thread_get_state(i32, i32, i32, i32*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @proc_string(%struct.proc*) #1

declare dso_local i32 @supply_register(i32, i32*) #1

declare dso_local i32 @i387_supply_fsave(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
