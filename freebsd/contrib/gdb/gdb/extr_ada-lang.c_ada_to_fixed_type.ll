; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_to_fixed_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_to_fixed_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @ada_to_fixed_type(%struct.type* %0, i8* %1, i32 %2, %struct.value* %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.value*, align 8
  store %struct.type* %0, %struct.type** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.value* %3, %struct.value** %9, align 8
  %10 = load %struct.type*, %struct.type** %6, align 8
  %11 = call i32 @CHECK_TYPEDEF(%struct.type* %10)
  %12 = load %struct.type*, %struct.type** %6, align 8
  %13 = call i32 @TYPE_CODE(%struct.type* %12)
  switch i32 %13, label %14 [
    i32 129, label %16
    i32 130, label %21
    i32 128, label %25
  ]

14:                                               ; preds = %4
  %15 = load %struct.type*, %struct.type** %6, align 8
  store %struct.type* %15, %struct.type** %5, align 8
  br label %36

16:                                               ; preds = %4
  %17 = load %struct.type*, %struct.type** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.type* @to_fixed_record_type(%struct.type* %17, i8* %18, i32 %19, i32* null)
  store %struct.type* %20, %struct.type** %5, align 8
  br label %36

21:                                               ; preds = %4
  %22 = load %struct.type*, %struct.type** %6, align 8
  %23 = load %struct.value*, %struct.value** %9, align 8
  %24 = call %struct.type* @to_fixed_array_type(%struct.type* %22, %struct.value* %23, i32 0)
  store %struct.type* %24, %struct.type** %5, align 8
  br label %36

25:                                               ; preds = %4
  %26 = load %struct.value*, %struct.value** %9, align 8
  %27 = icmp eq %struct.value* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load %struct.type*, %struct.type** %6, align 8
  store %struct.type* %29, %struct.type** %5, align 8
  br label %36

30:                                               ; preds = %25
  %31 = load %struct.type*, %struct.type** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.value*, %struct.value** %9, align 8
  %35 = call %struct.type* @to_fixed_variant_branch_type(%struct.type* %31, i8* %32, i32 %33, %struct.value* %34)
  store %struct.type* %35, %struct.type** %5, align 8
  br label %36

36:                                               ; preds = %30, %28, %21, %16, %14
  %37 = load %struct.type*, %struct.type** %5, align 8
  ret %struct.type* %37
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @to_fixed_record_type(%struct.type*, i8*, i32, i32*) #1

declare dso_local %struct.type* @to_fixed_array_type(%struct.type*, %struct.value*, i32) #1

declare dso_local %struct.type* @to_fixed_variant_branch_type(%struct.type*, i8*, i32, %struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
