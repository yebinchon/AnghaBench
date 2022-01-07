; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_to_static_fixed_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_to_static_fixed_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_to_static_fixed_value(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  %5 = load %struct.value*, %struct.value** %3, align 8
  %6 = call %struct.type* @VALUE_TYPE(%struct.value* %5)
  %7 = call i32 @static_unwrap_type(%struct.type* %6)
  %8 = call %struct.type* @to_static_fixed_type(i32 %7)
  store %struct.type* %8, %struct.type** %4, align 8
  %9 = load %struct.type*, %struct.type** %4, align 8
  %10 = load %struct.value*, %struct.value** %3, align 8
  %11 = call %struct.type* @VALUE_TYPE(%struct.value* %10)
  %12 = icmp eq %struct.type* %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.value*, %struct.value** %3, align 8
  store %struct.value* %14, %struct.value** %2, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.value*, %struct.value** %3, align 8
  %17 = load %struct.type*, %struct.type** %4, align 8
  %18 = call %struct.value* @coerce_unspec_val_to_type(%struct.value* %16, i32 0, %struct.type* %17)
  store %struct.value* %18, %struct.value** %2, align 8
  br label %19

19:                                               ; preds = %15, %13
  %20 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %20
}

declare dso_local %struct.type* @to_static_fixed_type(i32) #1

declare dso_local i32 @static_unwrap_type(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local %struct.value* @coerce_unspec_val_to_type(%struct.value*, i32, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
