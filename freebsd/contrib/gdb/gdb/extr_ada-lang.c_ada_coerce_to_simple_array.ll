; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_coerce_to_simple_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_coerce_to_simple_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Bounds unavailable for null array pointer.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_coerce_to_simple_array(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  %5 = load %struct.value*, %struct.value** %3, align 8
  %6 = call i32 @VALUE_TYPE(%struct.value* %5)
  %7 = call i64 @ada_is_array_descriptor(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.value*, %struct.value** %3, align 8
  %11 = call %struct.value* @ada_coerce_to_simple_array_ptr(%struct.value* %10)
  store %struct.value* %11, %struct.value** %4, align 8
  %12 = load %struct.value*, %struct.value** %4, align 8
  %13 = icmp eq %struct.value* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  %17 = load %struct.value*, %struct.value** %4, align 8
  %18 = call %struct.value* @value_ind(%struct.value* %17)
  store %struct.value* %18, %struct.value** %2, align 8
  br label %29

19:                                               ; preds = %1
  %20 = load %struct.value*, %struct.value** %3, align 8
  %21 = call i32 @VALUE_TYPE(%struct.value* %20)
  %22 = call i64 @ada_is_packed_array_type(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.value*, %struct.value** %3, align 8
  %26 = call %struct.value* @decode_packed_array(%struct.value* %25)
  store %struct.value* %26, %struct.value** %2, align 8
  br label %29

27:                                               ; preds = %19
  %28 = load %struct.value*, %struct.value** %3, align 8
  store %struct.value* %28, %struct.value** %2, align 8
  br label %29

29:                                               ; preds = %27, %24, %16
  %30 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %30
}

declare dso_local i64 @ada_is_array_descriptor(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local %struct.value* @ada_coerce_to_simple_array_ptr(%struct.value*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.value* @value_ind(%struct.value*) #1

declare dso_local i64 @ada_is_packed_array_type(i32) #1

declare dso_local %struct.value* @decode_packed_array(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
