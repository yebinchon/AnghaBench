; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_const_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_const_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%union.exp_element = type { %struct.type* }
%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%union.exp_element**)* @const_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @const_expr(%union.exp_element** %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %union.exp_element**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.value*, align 8
  store %union.exp_element** %0, %union.exp_element*** %3, align 8
  %9 = load %union.exp_element**, %union.exp_element*** %3, align 8
  %10 = load %union.exp_element*, %union.exp_element** %9, align 8
  %11 = bitcast %union.exp_element* %10 to i32*
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %54 [
    i32 130, label %14
    i32 129, label %31
    i32 128, label %42
  ]

14:                                               ; preds = %1
  %15 = load %union.exp_element**, %union.exp_element*** %3, align 8
  %16 = load %union.exp_element*, %union.exp_element** %15, align 8
  %17 = getelementptr inbounds %union.exp_element, %union.exp_element* %16, i64 1
  %18 = bitcast %union.exp_element* %17 to %struct.type**
  %19 = load %struct.type*, %struct.type** %18, align 8
  store %struct.type* %19, %struct.type** %6, align 8
  %20 = load %union.exp_element**, %union.exp_element*** %3, align 8
  %21 = load %union.exp_element*, %union.exp_element** %20, align 8
  %22 = getelementptr inbounds %union.exp_element, %union.exp_element* %21, i64 2
  %23 = bitcast %union.exp_element* %22 to i32*
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %union.exp_element**, %union.exp_element*** %3, align 8
  %26 = load %union.exp_element*, %union.exp_element** %25, align 8
  %27 = getelementptr inbounds %union.exp_element, %union.exp_element* %26, i64 4
  store %union.exp_element* %27, %union.exp_element** %25, align 8
  %28 = load %struct.type*, %struct.type** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.value* @value_from_longest(%struct.type* %28, i32 %29)
  store %struct.value* %30, %struct.value** %2, align 8
  br label %55

31:                                               ; preds = %1
  %32 = load %union.exp_element**, %union.exp_element*** %3, align 8
  %33 = load %union.exp_element*, %union.exp_element** %32, align 8
  %34 = getelementptr inbounds %union.exp_element, %union.exp_element* %33, i64 2
  %35 = bitcast %union.exp_element* %34 to i32*
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.value* @const_var_ref(i32 %36)
  store %struct.value* %37, %struct.value** %8, align 8
  %38 = load %union.exp_element**, %union.exp_element*** %3, align 8
  %39 = load %union.exp_element*, %union.exp_element** %38, align 8
  %40 = getelementptr inbounds %union.exp_element, %union.exp_element* %39, i64 4
  store %union.exp_element* %40, %union.exp_element** %38, align 8
  %41 = load %struct.value*, %struct.value** %8, align 8
  store %struct.value* %41, %struct.value** %2, align 8
  br label %55

42:                                               ; preds = %1
  %43 = load %union.exp_element**, %union.exp_element*** %3, align 8
  %44 = load %union.exp_element*, %union.exp_element** %43, align 8
  %45 = getelementptr inbounds %union.exp_element, %union.exp_element* %44, i32 1
  store %union.exp_element* %45, %union.exp_element** %43, align 8
  %46 = load %union.exp_element**, %union.exp_element*** %3, align 8
  %47 = call %struct.value* @const_expr(%union.exp_element** %46)
  store %struct.value* %47, %struct.value** %5, align 8
  %48 = load %struct.value*, %struct.value** %5, align 8
  %49 = icmp ne %struct.value* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.value*, %struct.value** %5, align 8
  %52 = call %struct.value* @value_neg(%struct.value* %51)
  store %struct.value* %52, %struct.value** %2, align 8
  br label %55

53:                                               ; preds = %42
  store %struct.value* null, %struct.value** %2, align 8
  br label %55

54:                                               ; preds = %1
  store %struct.value* null, %struct.value** %2, align 8
  br label %55

55:                                               ; preds = %54, %53, %50, %31, %14
  %56 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %56
}

declare dso_local %struct.value* @value_from_longest(%struct.type*, i32) #1

declare dso_local %struct.value* @const_var_ref(i32) #1

declare dso_local %struct.value* @value_neg(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
