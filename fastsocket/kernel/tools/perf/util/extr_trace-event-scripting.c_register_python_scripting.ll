; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-scripting.c_register_python_scripting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-scripting.c_register_python_scripting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scripting_ops = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Python\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"error registering Python script extension\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"py\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"error registering py script extension\00", align 1
@scripting_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scripting_ops*)* @register_python_scripting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_python_scripting(%struct.scripting_ops* %0) #0 {
  %2 = alloca %struct.scripting_ops*, align 8
  %3 = alloca i32, align 4
  store %struct.scripting_ops* %0, %struct.scripting_ops** %2, align 8
  %4 = load %struct.scripting_ops*, %struct.scripting_ops** %2, align 8
  %5 = call i32 @script_spec_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.scripting_ops* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.scripting_ops*, %struct.scripting_ops** %2, align 8
  %12 = call i32 @script_spec_register(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.scripting_ops* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = call i32 @malloc(i32 4)
  store i32 %18, i32* @scripting_context, align 4
  ret void
}

declare dso_local i32 @script_spec_register(i8*, %struct.scripting_ops*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
