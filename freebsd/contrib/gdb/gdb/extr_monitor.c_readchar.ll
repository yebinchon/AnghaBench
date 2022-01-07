; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_readchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_readchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@readchar.state = internal global i32 0, align 4
@monitor_desc = common dso_local global i32 0, align 4
@monitor_debug_p = common dso_local global i64 0, align 8
@remote_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"read -->\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"<--\00", align 1
@current_monitor = common dso_local global %struct.TYPE_2__* null, align 8
@MO_HANDLE_NL = common dso_local global i32 0, align 4
@SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Timeout reading from remote system.\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"remote-monitor\00", align 1
@in_monitor_wait = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @readchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  store i32 %0, i32* %3, align 4
  br label %7

7:                                                ; preds = %62, %1
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @monitor_desc, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @serial_readchar(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 127
  store i32 %15, i32* %4, align 4
  %16 = load i64, i64* @monitor_debug_p, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* @remote_debug, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %4, align 4
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %27 = call i32 @puts_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %21, %18
  br label %29

29:                                               ; preds = %28, %7
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MO_HANDLE_NL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 13
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @readchar.state, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %48, label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @readchar.state, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %39
  store i32 3, i32* @readchar.state, align 4
  store i32 1, i32* %5, align 4
  br label %60

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 2, i32* @readchar.state, align 4
  br label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 10
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* @readchar.state, align 4
  br label %58

57:                                               ; preds = %53
  store i32 1, i32* @readchar.state, align 4
  store i32 13, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %52
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60, %29
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %7, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %78

70:                                               ; preds = %65
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %70
  %77 = call i32 @perror_with_name(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %68
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @serial_readchar(i32, i32) #1

declare dso_local i32 @puts_debug(i8*, i8*, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
