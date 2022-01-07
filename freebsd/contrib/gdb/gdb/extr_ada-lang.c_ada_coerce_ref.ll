; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_coerce_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_coerce_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }

@TYPE_CODE_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.value*)* @ada_coerce_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @ada_coerce_ref(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  %5 = load %struct.value*, %struct.value** %3, align 8
  %6 = call i32 @VALUE_TYPE(%struct.value* %5)
  %7 = call i64 @TYPE_CODE(i32 %6)
  %8 = load i64, i64* @TYPE_CODE_REF, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.value*, %struct.value** %3, align 8
  store %struct.value* %11, %struct.value** %4, align 8
  %12 = load %struct.value*, %struct.value** %4, align 8
  %13 = call i32 @COERCE_REF(%struct.value* %12)
  %14 = load %struct.value*, %struct.value** %4, align 8
  %15 = call %struct.value* @unwrap_value(%struct.value* %14)
  store %struct.value* %15, %struct.value** %4, align 8
  %16 = load %struct.value*, %struct.value** %4, align 8
  %17 = call i32 @VALUE_TYPE(%struct.value* %16)
  %18 = load %struct.value*, %struct.value** %4, align 8
  %19 = call i64 @VALUE_ADDRESS(%struct.value* %18)
  %20 = load %struct.value*, %struct.value** %4, align 8
  %21 = call i64 @VALUE_OFFSET(%struct.value* %20)
  %22 = add nsw i64 %19, %21
  %23 = load %struct.value*, %struct.value** %4, align 8
  %24 = call %struct.value* @ada_to_fixed_value(i32 %17, i32 0, i64 %22, %struct.value* %23)
  store %struct.value* %24, %struct.value** %2, align 8
  br label %27

25:                                               ; preds = %1
  %26 = load %struct.value*, %struct.value** %3, align 8
  store %struct.value* %26, %struct.value** %2, align 8
  br label %27

27:                                               ; preds = %25, %10
  %28 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %28
}

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @COERCE_REF(%struct.value*) #1

declare dso_local %struct.value* @unwrap_value(%struct.value*) #1

declare dso_local %struct.value* @ada_to_fixed_value(i32, i32, i64, %struct.value*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_OFFSET(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
