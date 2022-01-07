; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_expr.c_expr_simplify_unmet_dep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_expr.c_expr_simplify_unmet_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.expr* }
%struct.TYPE_3__ = type { %struct.expr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.expr* @expr_simplify_unmet_dep(%struct.expr* %0, %struct.expr* %1) #0 {
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.expr*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.expr*, align 8
  %7 = alloca %struct.expr*, align 8
  store %struct.expr* %0, %struct.expr** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %8 = load %struct.expr*, %struct.expr** %4, align 8
  %9 = getelementptr inbounds %struct.expr, %struct.expr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %44 [
    i32 128, label %11
    i32 129, label %25
  ]

11:                                               ; preds = %2
  %12 = load %struct.expr*, %struct.expr** %4, align 8
  %13 = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.expr*, %struct.expr** %14, align 8
  %16 = load %struct.expr*, %struct.expr** %5, align 8
  %17 = call %struct.expr* @expr_simplify_unmet_dep(%struct.expr* %15, %struct.expr* %16)
  %18 = load %struct.expr*, %struct.expr** %4, align 8
  %19 = getelementptr inbounds %struct.expr, %struct.expr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.expr*, %struct.expr** %20, align 8
  %22 = load %struct.expr*, %struct.expr** %5, align 8
  %23 = call %struct.expr* @expr_simplify_unmet_dep(%struct.expr* %21, %struct.expr* %22)
  %24 = call %struct.expr* @expr_alloc_and(%struct.expr* %17, %struct.expr* %23)
  store %struct.expr* %24, %struct.expr** %3, align 8
  br label %49

25:                                               ; preds = %2
  %26 = load %struct.expr*, %struct.expr** %4, align 8
  %27 = call %struct.expr* @expr_copy(%struct.expr* %26)
  %28 = load %struct.expr*, %struct.expr** %5, align 8
  %29 = call %struct.expr* @expr_copy(%struct.expr* %28)
  %30 = call %struct.expr* @expr_alloc_and(%struct.expr* %27, %struct.expr* %29)
  store %struct.expr* %30, %struct.expr** %7, align 8
  %31 = load %struct.expr*, %struct.expr** %7, align 8
  %32 = call %struct.expr* @expr_eliminate_dups(%struct.expr* %31)
  store %struct.expr* %32, %struct.expr** %7, align 8
  %33 = load %struct.expr*, %struct.expr** %7, align 8
  %34 = load %struct.expr*, %struct.expr** %4, align 8
  %35 = call i32 @expr_eq(%struct.expr* %33, %struct.expr* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  %38 = load %struct.expr*, %struct.expr** %4, align 8
  br label %40

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi %struct.expr* [ %38, %37 ], [ null, %39 ]
  store %struct.expr* %41, %struct.expr** %6, align 8
  %42 = load %struct.expr*, %struct.expr** %7, align 8
  %43 = call i32 @expr_free(%struct.expr* %42)
  br label %46

44:                                               ; preds = %2
  %45 = load %struct.expr*, %struct.expr** %4, align 8
  store %struct.expr* %45, %struct.expr** %6, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = load %struct.expr*, %struct.expr** %6, align 8
  %48 = call %struct.expr* @expr_get_leftmost_symbol(%struct.expr* %47)
  store %struct.expr* %48, %struct.expr** %3, align 8
  br label %49

49:                                               ; preds = %46, %11
  %50 = load %struct.expr*, %struct.expr** %3, align 8
  ret %struct.expr* %50
}

declare dso_local %struct.expr* @expr_alloc_and(%struct.expr*, %struct.expr*) #1

declare dso_local %struct.expr* @expr_copy(%struct.expr*) #1

declare dso_local %struct.expr* @expr_eliminate_dups(%struct.expr*) #1

declare dso_local i32 @expr_eq(%struct.expr*, %struct.expr*) #1

declare dso_local i32 @expr_free(%struct.expr*) #1

declare dso_local %struct.expr* @expr_get_leftmost_symbol(%struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
