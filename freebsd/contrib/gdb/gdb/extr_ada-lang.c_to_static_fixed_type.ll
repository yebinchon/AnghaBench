; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_to_static_fixed_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_to_static_fixed_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"___XVU\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.type*)* @to_static_fixed_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @to_static_fixed_type(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %5 = load %struct.type*, %struct.type** %3, align 8
  %6 = icmp eq %struct.type* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.type* null, %struct.type** %2, align 8
  br label %35

8:                                                ; preds = %1
  %9 = load %struct.type*, %struct.type** %3, align 8
  %10 = call i32 @CHECK_TYPEDEF(%struct.type* %9)
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call i32 @TYPE_CODE(%struct.type* %11)
  switch i32 %12, label %13 [
    i32 129, label %15
    i32 128, label %25
  ]

13:                                               ; preds = %8
  %14 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %14, %struct.type** %2, align 8
  br label %35

15:                                               ; preds = %8
  %16 = load %struct.type*, %struct.type** %3, align 8
  %17 = call %struct.type* @dynamic_template_type(%struct.type* %16)
  store %struct.type* %17, %struct.type** %4, align 8
  %18 = load %struct.type*, %struct.type** %4, align 8
  %19 = icmp ne %struct.type* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.type*, %struct.type** %4, align 8
  %22 = call %struct.type* @template_to_static_fixed_type(%struct.type* %21)
  store %struct.type* %22, %struct.type** %2, align 8
  br label %35

23:                                               ; preds = %15
  %24 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %24, %struct.type** %2, align 8
  br label %35

25:                                               ; preds = %8
  %26 = load %struct.type*, %struct.type** %3, align 8
  %27 = call %struct.type* @ada_find_parallel_type(%struct.type* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.type* %27, %struct.type** %4, align 8
  %28 = load %struct.type*, %struct.type** %4, align 8
  %29 = icmp ne %struct.type* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.type*, %struct.type** %4, align 8
  %32 = call %struct.type* @template_to_static_fixed_type(%struct.type* %31)
  store %struct.type* %32, %struct.type** %2, align 8
  br label %35

33:                                               ; preds = %25
  %34 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %34, %struct.type** %2, align 8
  br label %35

35:                                               ; preds = %33, %30, %23, %20, %13, %7
  %36 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %36
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @dynamic_template_type(%struct.type*) #1

declare dso_local %struct.type* @template_to_static_fixed_type(%struct.type*) #1

declare dso_local %struct.type* @ada_find_parallel_type(%struct.type*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
