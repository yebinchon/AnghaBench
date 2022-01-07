; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_java_create_fundamental_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_java_create_fundamental_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.objfile = type { i32 }

@java_void_type = common dso_local global %struct.type* null, align 8
@java_boolean_type = common dso_local global %struct.type* null, align 8
@java_char_type = common dso_local global %struct.type* null, align 8
@java_float_type = common dso_local global %struct.type* null, align 8
@java_double_type = common dso_local global %struct.type* null, align 8
@java_byte_type = common dso_local global %struct.type* null, align 8
@java_short_type = common dso_local global %struct.type* null, align 8
@java_int_type = common dso_local global %struct.type* null, align 8
@java_long_type = common dso_local global %struct.type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.objfile*, i32)* @java_create_fundamental_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @java_create_fundamental_type(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %25 [
    i32 128, label %7
    i32 140, label %9
    i32 138, label %11
    i32 136, label %13
    i32 137, label %15
    i32 139, label %17
    i32 132, label %17
    i32 133, label %19
    i32 129, label %19
    i32 135, label %21
    i32 131, label %21
    i32 134, label %23
    i32 130, label %23
  ]

7:                                                ; preds = %2
  %8 = load %struct.type*, %struct.type** @java_void_type, align 8
  store %struct.type* %8, %struct.type** %3, align 8
  br label %29

9:                                                ; preds = %2
  %10 = load %struct.type*, %struct.type** @java_boolean_type, align 8
  store %struct.type* %10, %struct.type** %3, align 8
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.type*, %struct.type** @java_char_type, align 8
  store %struct.type* %12, %struct.type** %3, align 8
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.type*, %struct.type** @java_float_type, align 8
  store %struct.type* %14, %struct.type** %3, align 8
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.type*, %struct.type** @java_double_type, align 8
  store %struct.type* %16, %struct.type** %3, align 8
  br label %29

17:                                               ; preds = %2, %2
  %18 = load %struct.type*, %struct.type** @java_byte_type, align 8
  store %struct.type* %18, %struct.type** %3, align 8
  br label %29

19:                                               ; preds = %2, %2
  %20 = load %struct.type*, %struct.type** @java_short_type, align 8
  store %struct.type* %20, %struct.type** %3, align 8
  br label %29

21:                                               ; preds = %2, %2
  %22 = load %struct.type*, %struct.type** @java_int_type, align 8
  store %struct.type* %22, %struct.type** %3, align 8
  br label %29

23:                                               ; preds = %2, %2
  %24 = load %struct.type*, %struct.type** @java_long_type, align 8
  store %struct.type* %24, %struct.type** %3, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.objfile*, %struct.objfile** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.type* @c_create_fundamental_type(%struct.objfile* %26, i32 %27)
  store %struct.type* %28, %struct.type** %3, align 8
  br label %29

29:                                               ; preds = %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  %30 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %30
}

declare dso_local %struct.type* @c_create_fundamental_type(%struct.objfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
