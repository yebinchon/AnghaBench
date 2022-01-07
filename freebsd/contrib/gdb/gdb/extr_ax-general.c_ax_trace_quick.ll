; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-general.c_ax_trace_quick.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-general.c_ax_trace_quick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32*, i32 }

@.str = private unnamed_addr constant [74 x i8] c"GDB bug: ax-general.c (ax_trace_quick): size out of range for trace_quick\00", align 1
@aop_trace_quick = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax_trace_quick(%struct.agent_expr* %0, i32 %1) #0 {
  %3 = alloca %struct.agent_expr*, align 8
  %4 = alloca i32, align 4
  store %struct.agent_expr* %0, %struct.agent_expr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 255
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %2
  %11 = call i32 @error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %7
  %13 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %14 = call i32 @grow_expr(%struct.agent_expr* %13, i32 2)
  %15 = load i32, i32* @aop_trace_quick, align 4
  %16 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %17 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %20 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  store i32 %15, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %27 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %30 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  store i32 %25, i32* %34, align 4
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @grow_expr(%struct.agent_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
