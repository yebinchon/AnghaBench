; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ftrace.c___register_ftrace_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ftrace.c___register_ftrace_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_ops = type { i32 }

@ftrace_disabled = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@global_ops = common dso_local global %struct.ftrace_ops zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@FTRACE_OPS_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@FTRACE_OPS_FL_DYNAMIC = common dso_local global i32 0, align 4
@FTRACE_OPS_FL_GLOBAL = common dso_local global i32 0, align 4
@ftrace_global_list = common dso_local global i32* null, align 8
@ftrace_list_end = common dso_local global i32 0, align 4
@ftrace_ops_list = common dso_local global i32* null, align 8
@ftrace_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_ops*)* @__register_ftrace_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__register_ftrace_function(%struct.ftrace_ops* %0) #0 {
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
  br label %73

10:                                               ; preds = %1
  %11 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %12 = icmp eq %struct.ftrace_ops* %11, @global_ops
  %13 = zext i1 %12 to i32
  %14 = call i64 @FTRACE_WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %73

19:                                               ; preds = %10
  %20 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %21 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FTRACE_OPS_FL_ENABLED, align 4
  %24 = and i32 %22, %23
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %73

30:                                               ; preds = %19
  %31 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %32 = ptrtoint %struct.ftrace_ops* %31 to i64
  %33 = call i32 @core_kernel_data(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @FTRACE_OPS_FL_DYNAMIC, align 4
  %37 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %38 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %43 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FTRACE_OPS_FL_GLOBAL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load i32*, i32** @ftrace_global_list, align 8
  %50 = icmp eq i32* %49, @ftrace_list_end
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  %52 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %53 = call i32 @add_ftrace_ops(i32** @ftrace_global_list, %struct.ftrace_ops* %52)
  %54 = load i32, i32* @FTRACE_OPS_FL_ENABLED, align 4
  %55 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %56 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = call i32 @add_ftrace_ops(i32** @ftrace_ops_list, %struct.ftrace_ops* @global_ops)
  br label %63

63:                                               ; preds = %61, %48
  br label %67

64:                                               ; preds = %41
  %65 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %66 = call i32 @add_ftrace_ops(i32** @ftrace_ops_list, %struct.ftrace_ops* %65)
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i64, i64* @ftrace_enabled, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (...) @update_ftrace_function()
  br label %72

72:                                               ; preds = %70, %67
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %27, %16, %7
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @FTRACE_WARN_ON(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @core_kernel_data(i64) #1

declare dso_local i32 @add_ftrace_ops(i32**, %struct.ftrace_ops*) #1

declare dso_local i32 @update_ftrace_function(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
