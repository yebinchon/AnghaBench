; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_expr.c_expr_contains_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_expr.c_expr_contains_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.expr*, %struct.symbol* }
%struct.TYPE_3__ = type { %struct.symbol*, %struct.expr* }
%struct.symbol = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expr_contains_symbol(%struct.expr* %0, %struct.symbol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.expr*, align 8
  %5 = alloca %struct.symbol*, align 8
  store %struct.expr* %0, %struct.expr** %4, align 8
  store %struct.symbol* %1, %struct.symbol** %5, align 8
  %6 = load %struct.expr*, %struct.expr** %4, align 8
  %7 = icmp ne %struct.expr* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

9:                                                ; preds = %2
  %10 = load %struct.expr*, %struct.expr** %4, align 8
  %11 = getelementptr inbounds %struct.expr, %struct.expr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %64 [
    i32 133, label %13
    i32 130, label %13
    i32 129, label %32
    i32 132, label %40
    i32 128, label %40
    i32 131, label %57
  ]

13:                                               ; preds = %9, %9
  %14 = load %struct.expr*, %struct.expr** %4, align 8
  %15 = getelementptr inbounds %struct.expr, %struct.expr* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.expr*, %struct.expr** %16, align 8
  %18 = load %struct.symbol*, %struct.symbol** %5, align 8
  %19 = call i32 @expr_contains_symbol(%struct.expr* %17, %struct.symbol* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %13
  %22 = load %struct.expr*, %struct.expr** %4, align 8
  %23 = getelementptr inbounds %struct.expr, %struct.expr* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.expr*, %struct.expr** %24, align 8
  %26 = load %struct.symbol*, %struct.symbol** %5, align 8
  %27 = call i32 @expr_contains_symbol(%struct.expr* %25, %struct.symbol* %26)
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %21, %13
  %30 = phi i1 [ true, %13 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %66

32:                                               ; preds = %9
  %33 = load %struct.expr*, %struct.expr** %4, align 8
  %34 = getelementptr inbounds %struct.expr, %struct.expr* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.symbol*, %struct.symbol** %35, align 8
  %37 = load %struct.symbol*, %struct.symbol** %5, align 8
  %38 = icmp eq %struct.symbol* %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %66

40:                                               ; preds = %9, %9
  %41 = load %struct.expr*, %struct.expr** %4, align 8
  %42 = getelementptr inbounds %struct.expr, %struct.expr* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.symbol*, %struct.symbol** %43, align 8
  %45 = load %struct.symbol*, %struct.symbol** %5, align 8
  %46 = icmp eq %struct.symbol* %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.expr*, %struct.expr** %4, align 8
  %49 = getelementptr inbounds %struct.expr, %struct.expr* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.symbol*, %struct.symbol** %50, align 8
  %52 = load %struct.symbol*, %struct.symbol** %5, align 8
  %53 = icmp eq %struct.symbol* %51, %52
  br label %54

54:                                               ; preds = %47, %40
  %55 = phi i1 [ true, %40 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %66

57:                                               ; preds = %9
  %58 = load %struct.expr*, %struct.expr** %4, align 8
  %59 = getelementptr inbounds %struct.expr, %struct.expr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.expr*, %struct.expr** %60, align 8
  %62 = load %struct.symbol*, %struct.symbol** %5, align 8
  %63 = call i32 @expr_contains_symbol(%struct.expr* %61, %struct.symbol* %62)
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %9
  br label %65

65:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %57, %54, %32, %29, %8
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
