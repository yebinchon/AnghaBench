; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-general.c_generic_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-general.c_generic_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32*, i32 }

@.str = private unnamed_addr constant [60 x i8] c"GDB bug: ax-general.c (generic_ext): bit count out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, i32, i32)* @generic_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_ext(%struct.agent_expr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.agent_expr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.agent_expr* %0, %struct.agent_expr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 255
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %3
  %13 = call i32 @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %9
  %15 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %16 = call i32 @grow_expr(%struct.agent_expr* %15, i32 2)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %19 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %22 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  store i32 %17, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %29 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %32 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  store i32 %27, i32* %36, align 4
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
