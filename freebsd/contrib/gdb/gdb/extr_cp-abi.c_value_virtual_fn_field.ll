; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-abi.c_value_virtual_fn_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-abi.c_value_virtual_fn_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.value* (%struct.value**, %struct.fn_field*, i32, %struct.type*, i32)* }
%struct.value = type { i32 }
%struct.fn_field = type { i32 }
%struct.type = type { i32 }

@current_cp_abi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_virtual_fn_field(%struct.value** %0, %struct.fn_field* %1, i32 %2, %struct.type* %3, i32 %4) #0 {
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.value**, align 8
  %8 = alloca %struct.fn_field*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.type*, align 8
  %11 = alloca i32, align 4
  store %struct.value** %0, %struct.value*** %7, align 8
  store %struct.fn_field* %1, %struct.fn_field** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.type* %3, %struct.type** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.value* (%struct.value**, %struct.fn_field*, i32, %struct.type*, i32)*, %struct.value* (%struct.value**, %struct.fn_field*, i32, %struct.type*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cp_abi, i32 0, i32 0), align 8
  %13 = icmp eq %struct.value* (%struct.value**, %struct.fn_field*, i32, %struct.type*, i32)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store %struct.value* null, %struct.value** %6, align 8
  br label %23

15:                                               ; preds = %5
  %16 = load %struct.value* (%struct.value**, %struct.fn_field*, i32, %struct.type*, i32)*, %struct.value* (%struct.value**, %struct.fn_field*, i32, %struct.type*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cp_abi, i32 0, i32 0), align 8
  %17 = load %struct.value**, %struct.value*** %7, align 8
  %18 = load %struct.fn_field*, %struct.fn_field** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.type*, %struct.type** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.value* %16(%struct.value** %17, %struct.fn_field* %18, i32 %19, %struct.type* %20, i32 %21)
  store %struct.value* %22, %struct.value** %6, align 8
  br label %23

23:                                               ; preds = %15, %14
  %24 = load %struct.value*, %struct.value** %6, align 8
  ret %struct.value* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
