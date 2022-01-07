; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-general.c_grow_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-general.c_grow_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, i32)* @grow_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grow_expr(%struct.agent_expr* %0, i32 %1) #0 {
  %3 = alloca %struct.agent_expr*, align 8
  %4 = alloca i32, align 4
  store %struct.agent_expr* %0, %struct.agent_expr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %6 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %7, %8
  %10 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %11 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %2
  %15 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %16 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %16, align 4
  %19 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %20 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %23 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %14
  %29 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %30 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %31, %32
  %34 = add nsw i32 %33, 10
  %35 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %36 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %28, %14
  %38 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %39 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %42 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @xrealloc(i32 %40, i32 %43)
  %45 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %46 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32 @xrealloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
