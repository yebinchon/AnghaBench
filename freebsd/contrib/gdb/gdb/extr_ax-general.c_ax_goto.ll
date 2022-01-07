; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-general.c_ax_goto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-general.c_ax_goto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ax_goto(%struct.agent_expr* %0, i32 %1) #0 {
  %3 = alloca %struct.agent_expr*, align 8
  %4 = alloca i32, align 4
  store %struct.agent_expr* %0, %struct.agent_expr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %6 = call i32 @grow_expr(%struct.agent_expr* %5, i32 3)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %9 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %12 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 0
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %10, i64 %15
  store i32 %7, i32* %16, align 4
  %17 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %18 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %21 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  store i32 255, i32* %25, align 4
  %26 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %27 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %30 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  store i32 255, i32* %34, align 4
  %35 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %36 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 3
  store i32 %38, i32* %36, align 8
  %39 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %40 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 2
  ret i32 %42
}

declare dso_local i32 @grow_expr(%struct.agent_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
