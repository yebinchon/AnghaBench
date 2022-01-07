; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_to_fixed_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_to_fixed_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_to_fixed_value(%struct.type* %0, i8* %1, i32 %2, %struct.value* %3) #0 {
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.value*, align 8
  %10 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.value* %3, %struct.value** %9, align 8
  %11 = load %struct.type*, %struct.type** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.type* @ada_to_fixed_type(%struct.type* %11, i8* %12, i32 %13, i32* null)
  store %struct.type* %14, %struct.type** %10, align 8
  %15 = load %struct.type*, %struct.type** %10, align 8
  %16 = load %struct.type*, %struct.type** %6, align 8
  %17 = icmp eq %struct.type* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.value*, %struct.value** %9, align 8
  %20 = icmp ne %struct.value* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load %struct.value*, %struct.value** %9, align 8
  store %struct.value* %22, %struct.value** %5, align 8
  br label %28

23:                                               ; preds = %18, %4
  %24 = load %struct.type*, %struct.type** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.value* @value_from_contents_and_address(%struct.type* %24, i8* %25, i32 %26)
  store %struct.value* %27, %struct.value** %5, align 8
  br label %28

28:                                               ; preds = %23, %21
  %29 = load %struct.value*, %struct.value** %5, align 8
  ret %struct.value* %29
}

declare dso_local %struct.type* @ada_to_fixed_type(%struct.type*, i8*, i32, i32*) #1

declare dso_local %struct.value* @value_from_contents_and_address(%struct.type*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
