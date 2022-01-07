; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_java_primitive_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_java_primitive_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@java_byte_type = common dso_local global %struct.type* null, align 8
@java_short_type = common dso_local global %struct.type* null, align 8
@java_int_type = common dso_local global %struct.type* null, align 8
@java_long_type = common dso_local global %struct.type* null, align 8
@java_boolean_type = common dso_local global %struct.type* null, align 8
@java_char_type = common dso_local global %struct.type* null, align 8
@java_float_type = common dso_local global %struct.type* null, align 8
@java_double_type = common dso_local global %struct.type* null, align 8
@java_void_type = common dso_local global %struct.type* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"unknown signature '%c' for primitive type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @java_primitive_type(i32 %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %23 [
    i32 66, label %5
    i32 83, label %7
    i32 73, label %9
    i32 74, label %11
    i32 90, label %13
    i32 67, label %15
    i32 70, label %17
    i32 68, label %19
    i32 86, label %21
  ]

5:                                                ; preds = %1
  %6 = load %struct.type*, %struct.type** @java_byte_type, align 8
  store %struct.type* %6, %struct.type** %2, align 8
  br label %27

7:                                                ; preds = %1
  %8 = load %struct.type*, %struct.type** @java_short_type, align 8
  store %struct.type* %8, %struct.type** %2, align 8
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.type*, %struct.type** @java_int_type, align 8
  store %struct.type* %10, %struct.type** %2, align 8
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.type*, %struct.type** @java_long_type, align 8
  store %struct.type* %12, %struct.type** %2, align 8
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.type*, %struct.type** @java_boolean_type, align 8
  store %struct.type* %14, %struct.type** %2, align 8
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.type*, %struct.type** @java_char_type, align 8
  store %struct.type* %16, %struct.type** %2, align 8
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.type*, %struct.type** @java_float_type, align 8
  store %struct.type* %18, %struct.type** %2, align 8
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.type*, %struct.type** @java_double_type, align 8
  store %struct.type* %20, %struct.type** %2, align 8
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.type*, %struct.type** @java_void_type, align 8
  store %struct.type* %22, %struct.type** %2, align 8
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = trunc i32 %24 to i8
  %26 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 signext %25)
  br label %27

27:                                               ; preds = %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %28 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %28
}

declare dso_local i32 @error(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
