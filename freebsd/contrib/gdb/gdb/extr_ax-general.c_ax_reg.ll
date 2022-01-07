; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-general.c_ax_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-general.c_ax_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32*, i64 }

@.str = private unnamed_addr constant [61 x i8] c"GDB bug: ax-general.c (ax_reg): register number out of range\00", align 1
@aop_reg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax_reg(%struct.agent_expr* %0, i32 %1) #0 {
  %3 = alloca %struct.agent_expr*, align 8
  %4 = alloca i32, align 4
  store %struct.agent_expr* %0, %struct.agent_expr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 65535
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %2
  %11 = call i32 @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %7
  %13 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %14 = call i32 @grow_expr(%struct.agent_expr* %13, i32 3)
  %15 = load i32, i32* @aop_reg, align 4
  %16 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %17 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %20 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 %15, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %27 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %30 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32 %25, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 255
  %36 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %37 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %40 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 2
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32 %35, i32* %43, align 4
  %44 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %45 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %45, align 8
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
