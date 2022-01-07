; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_coerce_to_simple_array_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_coerce_to_simple_array_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_coerce_to_simple_array_ptr(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  %5 = load %struct.value*, %struct.value** %3, align 8
  %6 = call i32 @VALUE_TYPE(%struct.value* %5)
  %7 = call i64 @ada_is_array_descriptor(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.value*, %struct.value** %3, align 8
  %11 = call %struct.type* @ada_type_of_array(%struct.value* %10, i32 1)
  store %struct.type* %11, %struct.type** %4, align 8
  %12 = load %struct.type*, %struct.type** %4, align 8
  %13 = icmp eq %struct.type* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store %struct.value* null, %struct.value** %2, align 8
  br label %31

15:                                               ; preds = %9
  %16 = load %struct.type*, %struct.type** %4, align 8
  %17 = load %struct.value*, %struct.value** %3, align 8
  %18 = call i32 @desc_data(%struct.value* %17)
  %19 = call i32 @value_copy(i32 %18)
  %20 = call %struct.value* @value_cast(%struct.type* %16, i32 %19)
  store %struct.value* %20, %struct.value** %2, align 8
  br label %31

21:                                               ; preds = %1
  %22 = load %struct.value*, %struct.value** %3, align 8
  %23 = call i32 @VALUE_TYPE(%struct.value* %22)
  %24 = call i64 @ada_is_packed_array_type(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.value*, %struct.value** %3, align 8
  %28 = call %struct.value* @decode_packed_array(%struct.value* %27)
  store %struct.value* %28, %struct.value** %2, align 8
  br label %31

29:                                               ; preds = %21
  %30 = load %struct.value*, %struct.value** %3, align 8
  store %struct.value* %30, %struct.value** %2, align 8
  br label %31

31:                                               ; preds = %29, %26, %15, %14
  %32 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %32
}

declare dso_local i64 @ada_is_array_descriptor(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local %struct.type* @ada_type_of_array(%struct.value*, i32) #1

declare dso_local %struct.value* @value_cast(%struct.type*, i32) #1

declare dso_local i32 @value_copy(i32) #1

declare dso_local i32 @desc_data(%struct.value*) #1

declare dso_local i64 @ada_is_packed_array_type(i32) #1

declare dso_local %struct.value* @decode_packed_array(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
