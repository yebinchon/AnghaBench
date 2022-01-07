; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_expr.c_expr_extract_eq_and.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_expr.c_expr_extract_eq_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32 }

@E_AND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.expr* @expr_extract_eq_and(%struct.expr** %0, %struct.expr** %1) #0 {
  %3 = alloca %struct.expr**, align 8
  %4 = alloca %struct.expr**, align 8
  %5 = alloca %struct.expr*, align 8
  store %struct.expr** %0, %struct.expr*** %3, align 8
  store %struct.expr** %1, %struct.expr*** %4, align 8
  store %struct.expr* null, %struct.expr** %5, align 8
  %6 = load i32, i32* @E_AND, align 4
  %7 = load %struct.expr**, %struct.expr*** %3, align 8
  %8 = load %struct.expr**, %struct.expr*** %4, align 8
  %9 = call i32 @expr_extract_eq(i32 %6, %struct.expr** %5, %struct.expr** %7, %struct.expr** %8)
  %10 = load %struct.expr*, %struct.expr** %5, align 8
  %11 = icmp ne %struct.expr* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.expr**, %struct.expr*** %3, align 8
  %14 = load %struct.expr*, %struct.expr** %13, align 8
  %15 = call %struct.expr* @expr_eliminate_yn(%struct.expr* %14)
  %16 = load %struct.expr**, %struct.expr*** %3, align 8
  store %struct.expr* %15, %struct.expr** %16, align 8
  %17 = load %struct.expr**, %struct.expr*** %4, align 8
  %18 = load %struct.expr*, %struct.expr** %17, align 8
  %19 = call %struct.expr* @expr_eliminate_yn(%struct.expr* %18)
  %20 = load %struct.expr**, %struct.expr*** %4, align 8
  store %struct.expr* %19, %struct.expr** %20, align 8
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.expr*, %struct.expr** %5, align 8
  ret %struct.expr* %22
}

declare dso_local i32 @expr_extract_eq(i32, %struct.expr**, %struct.expr**, %struct.expr**) #1

declare dso_local %struct.expr* @expr_eliminate_yn(%struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
