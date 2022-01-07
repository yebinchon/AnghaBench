; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ftrace.c___unregister_ftrace_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ftrace.c___unregister_ftrace_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_ops = type { i32 }

@ftrace_disabled = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@FTRACE_OPS_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@global_ops = common dso_local global %struct.ftrace_ops zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@FTRACE_OPS_FL_GLOBAL = common dso_local global i32 0, align 4
@ftrace_global_list = common dso_local global i32* null, align 8
@ftrace_list_end = common dso_local global i32 0, align 4
@ftrace_ops_list = common dso_local global i32* null, align 8
@ftrace_enabled = common dso_local global i64 0, align 8
@FTRACE_OPS_FL_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_ops*)* @__unregister_ftrace_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__unregister_ftrace_function(%struct.ftrace_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftrace_ops*, align 8
  %4 = alloca i32, align 4
  store %struct.ftrace_ops* %0, %struct.ftrace_ops** %3, align 8
  %5 = load i64, i64* @ftrace_disabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %84

10:                                               ; preds = %1
  %11 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %12 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FTRACE_OPS_FL_ENABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %84

24:                                               ; preds = %10
  %25 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %26 = icmp eq %struct.ftrace_ops* %25, @global_ops
  %27 = zext i1 %26 to i32
  %28 = call i64 @FTRACE_WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %84

33:                                               ; preds = %24
  %34 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %35 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FTRACE_OPS_FL_GLOBAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %33
  %41 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %42 = call i32 @remove_ftrace_ops(i32** @ftrace_global_list, %struct.ftrace_ops* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** @ftrace_global_list, align 8
  %47 = icmp eq i32* %46, @ftrace_list_end
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @remove_ftrace_ops(i32** @ftrace_ops_list, %struct.ftrace_ops* @global_ops)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %45, %40
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @FTRACE_OPS_FL_ENABLED, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %57 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %53, %50
  br label %64

61:                                               ; preds = %33
  %62 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %63 = call i32 @remove_ftrace_ops(i32** @ftrace_ops_list, %struct.ftrace_ops* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %60
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %84

69:                                               ; preds = %64
  %70 = load i64, i64* @ftrace_enabled, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 (...) @update_ftrace_function()
  br label %74

74:                                               ; preds = %72, %69
  %75 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %76 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FTRACE_OPS_FL_DYNAMIC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = call i32 (...) @synchronize_sched()
  br label %83

83:                                               ; preds = %81, %74
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %67, %30, %21, %7
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @FTRACE_WARN_ON(i32) #1

declare dso_local i32 @remove_ftrace_ops(i32**, %struct.ftrace_ops*) #1

declare dso_local i32 @update_ftrace_function(...) #1

declare dso_local i32 @synchronize_sched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
