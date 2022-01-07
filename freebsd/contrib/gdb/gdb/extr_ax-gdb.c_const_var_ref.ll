; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_const_var_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_const_var_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.symbol = type { i32 }
%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.symbol*)* @const_var_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @const_var_ref(%struct.symbol* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  %5 = load %struct.symbol*, %struct.symbol** %3, align 8
  %6 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %5)
  store %struct.type* %6, %struct.type** %4, align 8
  %7 = load %struct.symbol*, %struct.symbol** %3, align 8
  %8 = call i32 @SYMBOL_CLASS(%struct.symbol* %7)
  switch i32 %8, label %19 [
    i32 129, label %9
    i32 128, label %14
  ]

9:                                                ; preds = %1
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = load %struct.symbol*, %struct.symbol** %3, align 8
  %12 = call i32 @SYMBOL_VALUE(%struct.symbol* %11)
  %13 = call %struct.value* @value_from_longest(%struct.type* %10, i32 %12)
  store %struct.value* %13, %struct.value** %2, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.type*, %struct.type** %4, align 8
  %16 = load %struct.symbol*, %struct.symbol** %3, align 8
  %17 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %16)
  %18 = call %struct.value* @value_from_pointer(%struct.type* %15, i32 %17)
  store %struct.value* %18, %struct.value** %2, align 8
  br label %20

19:                                               ; preds = %1
  store %struct.value* null, %struct.value** %2, align 8
  br label %20

20:                                               ; preds = %19, %14, %9
  %21 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %21
}

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i32 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local %struct.value* @value_from_longest(%struct.type*, i32) #1

declare dso_local i32 @SYMBOL_VALUE(%struct.symbol*) #1

declare dso_local %struct.value* @value_from_pointer(%struct.type*, i32) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
