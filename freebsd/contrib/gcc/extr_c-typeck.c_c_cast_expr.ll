; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_cast_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_cast_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_type_name = type { i32 }

@warn_strict_prototypes = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_cast_expr(%struct.c_type_name* %0, i32 %1) #0 {
  %3 = alloca %struct.c_type_name*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.c_type_name* %0, %struct.c_type_name** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @warn_strict_prototypes, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @TREE_CODE(i32 %8)
  %10 = load i64, i64* @INTEGER_CST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* @warn_strict_prototypes, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load %struct.c_type_name*, %struct.c_type_name** %3, align 8
  %15 = call i32 @groktypename(%struct.c_type_name* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* @warn_strict_prototypes, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @build_c_cast(i32 %17, i32 %18)
  ret i32 %19
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @groktypename(%struct.c_type_name*) #1

declare dso_local i32 @build_c_cast(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
