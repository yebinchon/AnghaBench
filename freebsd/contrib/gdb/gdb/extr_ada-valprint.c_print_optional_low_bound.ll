; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_print_optional_low_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_print_optional_low_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@TYPE_CODE_RANGE = common dso_local global i32 0, align 4
@builtin_type_long = common dso_local global %struct.type* null, align 8
@.str = private unnamed_addr constant [5 x i8] c" => \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_file*, %struct.type*)* @print_optional_low_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_optional_low_bound(%struct.ui_file* %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i64, align 8
  store %struct.ui_file* %0, %struct.ui_file** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  %8 = load %struct.type*, %struct.type** %5, align 8
  %9 = call %struct.type* @TYPE_INDEX_TYPE(%struct.type* %8)
  store %struct.type* %9, %struct.type** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.type*, %struct.type** %6, align 8
  %11 = icmp eq %struct.type* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.type*, %struct.type** %6, align 8
  %15 = call i32 @TYPE_CODE(%struct.type* %14)
  %16 = load i32, i32* @TYPE_CODE_RANGE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.type*, %struct.type** %6, align 8
  %20 = call i64 @TYPE_LOW_BOUND(%struct.type* %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.type*, %struct.type** %6, align 8
  %22 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %21)
  store %struct.type* %22, %struct.type** %6, align 8
  br label %24

23:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %49

24:                                               ; preds = %18
  %25 = load %struct.type*, %struct.type** %6, align 8
  %26 = call i32 @TYPE_CODE(%struct.type* %25)
  switch i32 %26, label %36 [
    i32 129, label %27
    i32 128, label %34
  ]

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.type*, %struct.type** %6, align 8
  %30 = call i64 @TYPE_FIELD_BITPOS(%struct.type* %29, i32 0)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %49

33:                                               ; preds = %27
  br label %41

34:                                               ; preds = %24
  %35 = load %struct.type*, %struct.type** @builtin_type_long, align 8
  store %struct.type* %35, %struct.type** %6, align 8
  br label %36

36:                                               ; preds = %24, %34
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %49

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %33
  %42 = load %struct.type*, %struct.type** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %46 = call i32 @ada_print_scalar(%struct.type* %42, i32 %44, %struct.ui_file* %45)
  %47 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %48 = call i32 @fprintf_filtered(%struct.ui_file* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %41, %39, %32, %23, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.type* @TYPE_INDEX_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @TYPE_LOW_BOUND(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i64 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i32 @ada_print_scalar(%struct.type*, i32, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
