; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_thin_data_pntr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_thin_data_pntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.value*)* @thin_data_pntr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @thin_data_pntr(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  %5 = load %struct.value*, %struct.value** %3, align 8
  %6 = call %struct.type* @VALUE_TYPE(%struct.value* %5)
  store %struct.type* %6, %struct.type** %4, align 8
  %7 = load %struct.type*, %struct.type** %4, align 8
  %8 = call i64 @TYPE_CODE(%struct.type* %7)
  %9 = load i64, i64* @TYPE_CODE_PTR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.type*, %struct.type** %4, align 8
  %13 = call i32 @thin_descriptor_type(%struct.type* %12)
  %14 = call i32 @desc_data_type(i32 %13)
  %15 = load %struct.value*, %struct.value** %3, align 8
  %16 = call i32 @value_copy(%struct.value* %15)
  %17 = call %struct.value* @value_cast(i32 %14, i32 %16)
  store %struct.value* %17, %struct.value** %2, align 8
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.type*, %struct.type** %4, align 8
  %20 = call i32 @thin_descriptor_type(%struct.type* %19)
  %21 = call i32 @desc_data_type(i32 %20)
  %22 = load %struct.value*, %struct.value** %3, align 8
  %23 = call i64 @VALUE_ADDRESS(%struct.value* %22)
  %24 = load %struct.value*, %struct.value** %3, align 8
  %25 = call i64 @VALUE_OFFSET(%struct.value* %24)
  %26 = add nsw i64 %23, %25
  %27 = call %struct.value* @value_from_longest(i32 %21, i64 %26)
  store %struct.value* %27, %struct.value** %2, align 8
  br label %28

28:                                               ; preds = %18, %11
  %29 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %29
}

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.value* @value_cast(i32, i32) #1

declare dso_local i32 @desc_data_type(i32) #1

declare dso_local i32 @thin_descriptor_type(%struct.type*) #1

declare dso_local i32 @value_copy(%struct.value*) #1

declare dso_local %struct.value* @value_from_longest(i32, i64) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_OFFSET(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
