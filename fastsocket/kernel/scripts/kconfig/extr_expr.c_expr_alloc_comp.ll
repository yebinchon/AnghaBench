; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_expr.c_expr_alloc_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_expr.c_expr_alloc_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.symbol* }
%struct.TYPE_3__ = type { %struct.symbol* }
%struct.symbol = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.expr* @expr_alloc_comp(i32 %0, %struct.symbol* %1, %struct.symbol* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.expr*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.symbol* %1, %struct.symbol** %5, align 8
  store %struct.symbol* %2, %struct.symbol** %6, align 8
  %8 = call %struct.expr* @malloc(i32 24)
  store %struct.expr* %8, %struct.expr** %7, align 8
  %9 = load %struct.expr*, %struct.expr** %7, align 8
  %10 = call i32 @memset(%struct.expr* %9, i32 0, i32 24)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.expr*, %struct.expr** %7, align 8
  %13 = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.symbol*, %struct.symbol** %5, align 8
  %15 = load %struct.expr*, %struct.expr** %7, align 8
  %16 = getelementptr inbounds %struct.expr, %struct.expr* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.symbol* %14, %struct.symbol** %17, align 8
  %18 = load %struct.symbol*, %struct.symbol** %6, align 8
  %19 = load %struct.expr*, %struct.expr** %7, align 8
  %20 = getelementptr inbounds %struct.expr, %struct.expr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.symbol* %18, %struct.symbol** %21, align 8
  %22 = load %struct.expr*, %struct.expr** %7, align 8
  ret %struct.expr* %22
}

declare dso_local %struct.expr* @malloc(i32) #1

declare dso_local i32 @memset(%struct.expr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
