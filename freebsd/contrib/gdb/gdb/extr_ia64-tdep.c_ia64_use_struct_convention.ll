; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_use_struct_convention.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_use_struct_convention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_use_struct_convention(i32 %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.type* %1, %struct.type** %5, align 8
  %7 = load %struct.type*, %struct.type** %5, align 8
  %8 = call %struct.type* @is_float_or_hfa_type(%struct.type* %7)
  store %struct.type* %8, %struct.type** %6, align 8
  %9 = load %struct.type*, %struct.type** %6, align 8
  %10 = icmp ne %struct.type* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.type*, %struct.type** %5, align 8
  %13 = call i32 @TYPE_LENGTH(%struct.type* %12)
  %14 = load %struct.type*, %struct.type** %6, align 8
  %15 = call i32 @TYPE_LENGTH(%struct.type* %14)
  %16 = sdiv i32 %13, %15
  %17 = icmp sle i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %24

19:                                               ; preds = %11, %2
  %20 = load %struct.type*, %struct.type** %5, align 8
  %21 = call i32 @TYPE_LENGTH(%struct.type* %20)
  %22 = icmp sgt i32 %21, 32
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.type* @is_float_or_hfa_type(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
