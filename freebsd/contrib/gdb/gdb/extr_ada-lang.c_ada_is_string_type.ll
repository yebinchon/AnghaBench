; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_string_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_string_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_is_string_type(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %5 = load %struct.type*, %struct.type** %3, align 8
  %6 = call i32 @CHECK_TYPEDEF(%struct.type* %5)
  %7 = load %struct.type*, %struct.type** %3, align 8
  %8 = icmp ne %struct.type* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.type*, %struct.type** %3, align 8
  %11 = call i64 @TYPE_CODE(%struct.type* %10)
  %12 = load i64, i64* @TYPE_CODE_PTR, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load %struct.type*, %struct.type** %3, align 8
  %16 = call i64 @ada_is_simple_array(%struct.type* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.type*, %struct.type** %3, align 8
  %20 = call i64 @ada_is_array_descriptor(%struct.type* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18, %14
  %23 = load %struct.type*, %struct.type** %3, align 8
  %24 = call i32 @ada_array_arity(%struct.type* %23)
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.type*, %struct.type** %3, align 8
  %28 = call %struct.type* @ada_array_element_type(%struct.type* %27, i32 1)
  store %struct.type* %28, %struct.type** %4, align 8
  %29 = load %struct.type*, %struct.type** %4, align 8
  %30 = call i32 @ada_is_character_type(%struct.type* %29)
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %22, %18, %9, %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @ada_is_simple_array(%struct.type*) #1

declare dso_local i64 @ada_is_array_descriptor(%struct.type*) #1

declare dso_local i32 @ada_array_arity(%struct.type*) #1

declare dso_local %struct.type* @ada_array_element_type(%struct.type*, i32) #1

declare dso_local i32 @ada_is_character_type(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
