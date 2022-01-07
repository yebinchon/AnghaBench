; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_expr.c_expr_eliminate_dups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_expr.c_expr_eliminate_dups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32 }

@trans_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.expr* @expr_eliminate_dups(%struct.expr* %0) #0 {
  %2 = alloca %struct.expr*, align 8
  %3 = alloca %struct.expr*, align 8
  %4 = alloca i32, align 4
  store %struct.expr* %0, %struct.expr** %3, align 8
  %5 = load %struct.expr*, %struct.expr** %3, align 8
  %6 = icmp ne %struct.expr* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %8, %struct.expr** %2, align 8
  br label %35

9:                                                ; preds = %1
  %10 = load i32, i32* @trans_count, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %9, %29
  store i32 0, i32* @trans_count, align 4
  %12 = load %struct.expr*, %struct.expr** %3, align 8
  %13 = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %24 [
    i32 128, label %15
    i32 129, label %15
  ]

15:                                               ; preds = %11, %11
  %16 = load %struct.expr*, %struct.expr** %3, align 8
  %17 = getelementptr inbounds %struct.expr, %struct.expr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @expr_eliminate_dups1(i32 %18, %struct.expr** %3, %struct.expr** %3)
  %20 = load %struct.expr*, %struct.expr** %3, align 8
  %21 = getelementptr inbounds %struct.expr, %struct.expr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @expr_eliminate_dups2(i32 %22, %struct.expr** %3, %struct.expr** %3)
  br label %24

24:                                               ; preds = %11, %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* @trans_count, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %32

29:                                               ; preds = %25
  %30 = load %struct.expr*, %struct.expr** %3, align 8
  %31 = call %struct.expr* @expr_eliminate_yn(%struct.expr* %30)
  store %struct.expr* %31, %struct.expr** %3, align 8
  br label %11

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* @trans_count, align 4
  %34 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %34, %struct.expr** %2, align 8
  br label %35

35:                                               ; preds = %32, %7
  %36 = load %struct.expr*, %struct.expr** %2, align 8
  ret %struct.expr* %36
}

declare dso_local i32 @expr_eliminate_dups1(i32, %struct.expr**, %struct.expr**) #1

declare dso_local i32 @expr_eliminate_dups2(i32, %struct.expr**, %struct.expr**) #1

declare dso_local %struct.expr* @expr_eliminate_yn(%struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
