; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_constraint_expr_less.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_constraint_expr_less.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constraint_expr = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.constraint_expr*, %struct.constraint_expr*)* @constraint_expr_less to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constraint_expr_less(%struct.constraint_expr* byval(%struct.constraint_expr) align 8 %0, %struct.constraint_expr* byval(%struct.constraint_expr) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %5, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %0, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %0, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %17, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %0, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %24, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %0, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %31, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %22, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
