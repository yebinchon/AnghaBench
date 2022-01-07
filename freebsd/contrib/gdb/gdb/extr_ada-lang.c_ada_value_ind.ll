; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_value_ind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_value_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_value_ind(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %2, align 8
  %4 = load %struct.value*, %struct.value** %2, align 8
  %5 = call i32 @value_ind(%struct.value* %4)
  %6 = call %struct.value* @unwrap_value(i32 %5)
  store %struct.value* %6, %struct.value** %3, align 8
  %7 = load %struct.value*, %struct.value** %3, align 8
  %8 = call i32 @VALUE_TYPE(%struct.value* %7)
  %9 = load %struct.value*, %struct.value** %3, align 8
  %10 = call i64 @VALUE_ADDRESS(%struct.value* %9)
  %11 = load %struct.value*, %struct.value** %3, align 8
  %12 = call i64 @VALUE_OFFSET(%struct.value* %11)
  %13 = add nsw i64 %10, %12
  %14 = load %struct.value*, %struct.value** %3, align 8
  %15 = call %struct.value* @ada_to_fixed_value(i32 %8, i32 0, i64 %13, %struct.value* %14)
  ret %struct.value* %15
}

declare dso_local %struct.value* @unwrap_value(i32) #1

declare dso_local i32 @value_ind(%struct.value*) #1

declare dso_local %struct.value* @ada_to_fixed_value(i32, i32, i64, %struct.value*) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_OFFSET(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
