; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_remove_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_remove_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [15 x i8] c"MON rmbkpt %s\0A\00", align 1
@current_monitor = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"No clr_break defined for this monitor\00", align 1
@MO_ADDR_BITS_REMOVE = common dso_local global i32 0, align 4
@breakaddr = common dso_local global i64* null, align 8
@MO_CLR_BREAK_USES_ADDR = common dso_local global i32 0, align 4
@MO_CLR_BREAK_1_BASED = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Can't find breakpoint associated with 0x%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @monitor_remove_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_remove_breakpoint(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @paddr(i64 %7)
  %9 = call i32 @monitor_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MO_ADDR_BITS_REMOVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @ADDR_BITS_REMOVE(i64 %24)
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %23, %16
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %83, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %86

33:                                               ; preds = %27
  %34 = load i64*, i64** @breakaddr, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %33
  %42 = load i64*, i64** @breakaddr, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MO_CLR_BREAK_USES_ADDR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %4, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @monitor_printf(i32* %55, i32 %57)
  br label %80

59:                                               ; preds = %41
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MO_CLR_BREAK_1_BASED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @monitor_printf(i32* %69, i32 %71)
  br label %79

73:                                               ; preds = %59
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @monitor_printf(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %66
  br label %80

80:                                               ; preds = %79, %52
  %81 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  store i32 0, i32* %3, align 4
  br label %91

82:                                               ; preds = %33
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %27

86:                                               ; preds = %27
  %87 = load i32, i32* @gdb_stderr, align 4
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @paddr_nz(i64 %88)
  %90 = call i32 @fprintf_unfiltered(i32 %87, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %80
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @monitor_debug(i8*, i32) #1

declare dso_local i32 @paddr(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @ADDR_BITS_REMOVE(i64) #1

declare dso_local i32 @monitor_printf(i32*, i32) #1

declare dso_local i32 @monitor_expect_prompt(i32*, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @paddr_nz(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
