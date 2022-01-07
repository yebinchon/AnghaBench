; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_insert_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_insert_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"MON inst bkpt %s\0A\00", align 1
@current_monitor = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"No set_break defined for this monitor\00", align 1
@MO_ADDR_BITS_REMOVE = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@breakaddr = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Too many breakpoints (> %d) for monitor.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @monitor_insert_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_insert_breakpoint(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @paddr(i64 %9)
  %11 = call i32 @monitor_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MO_ADDR_BITS_REMOVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @ADDR_BITS_REMOVE(i64 %26)
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* @current_gdbarch, align 4
  %30 = call i8* @gdbarch_breakpoint_from_pc(i32 %29, i64* %4, i32* %8)
  store i8* %30, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %61, %28
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %31
  %38 = load i64*, i64** @breakaddr, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = load i64, i64* %4, align 8
  %46 = load i64*, i64** @breakaddr, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 %45, i64* %49, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @monitor_read_memory(i64 %50, i8* %51, i32 %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @monitor_printf(i32* %56, i64 %57)
  %59 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  store i32 0, i32* %3, align 4
  br label %69

60:                                               ; preds = %37
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %31

64:                                               ; preds = %31
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %44
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @monitor_debug(i8*, i32) #1

declare dso_local i32 @paddr(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @ADDR_BITS_REMOVE(i64) #1

declare dso_local i8* @gdbarch_breakpoint_from_pc(i32, i64*, i32*) #1

declare dso_local i32 @monitor_read_memory(i64, i8*, i32) #1

declare dso_local i32 @monitor_printf(i32*, i64) #1

declare dso_local i32 @monitor_expect_prompt(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
