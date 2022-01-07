; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_index_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_index_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @ada_index_type(%struct.type* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.type*, %struct.type** %4, align 8
  %8 = call %struct.type* @desc_base_type(%struct.type* %7)
  store %struct.type* %8, %struct.type** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = call i32 @ada_array_arity(%struct.type* %10)
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.type* null, %struct.type** %3, align 8
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.type*, %struct.type** %4, align 8
  %16 = call i64 @ada_is_simple_array(%struct.type* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %19

19:                                               ; preds = %26, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.type*, %struct.type** %4, align 8
  %25 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %24)
  store %struct.type* %25, %struct.type** %4, align 8
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %19

29:                                               ; preds = %19
  %30 = load %struct.type*, %struct.type** %4, align 8
  %31 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %30, i32 0)
  %32 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %31)
  store %struct.type* %32, %struct.type** %3, align 8
  br label %38

33:                                               ; preds = %14
  %34 = load %struct.type*, %struct.type** %4, align 8
  %35 = call i32 @desc_bounds_type(%struct.type* %34)
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.type* @desc_index_type(i32 %35, i32 %36)
  store %struct.type* %37, %struct.type** %3, align 8
  br label %38

38:                                               ; preds = %33, %29, %13
  %39 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %39
}

declare dso_local %struct.type* @desc_base_type(%struct.type*) #1

declare dso_local i32 @ada_array_arity(%struct.type*) #1

declare dso_local i64 @ada_is_simple_array(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local %struct.type* @desc_index_type(i32, i32) #1

declare dso_local i32 @desc_bounds_type(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
