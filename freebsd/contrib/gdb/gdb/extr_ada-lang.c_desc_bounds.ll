; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_desc_bounds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_desc_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"P_BOUNDS\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Bad GNAT array descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.value*)* @desc_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @desc_bounds(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca i64, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  %7 = load %struct.value*, %struct.value** %3, align 8
  %8 = call i32 @VALUE_TYPE(%struct.value* %7)
  %9 = call %struct.type* @check_typedef(i32 %8)
  store %struct.type* %9, %struct.type** %4, align 8
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = call i64 @is_thin_pntr(%struct.type* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.type*, %struct.type** %4, align 8
  %15 = call i32 @thin_descriptor_type(%struct.type* %14)
  %16 = call %struct.type* @desc_bounds_type(i32 %15)
  store %struct.type* %16, %struct.type** %5, align 8
  %17 = load %struct.type*, %struct.type** %4, align 8
  %18 = call i64 @TYPE_CODE(%struct.type* %17)
  %19 = load i64, i64* @TYPE_CODE_PTR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.value*, %struct.value** %3, align 8
  %23 = call i64 @value_as_long(%struct.value* %22)
  store i64 %23, i64* %6, align 8
  br label %30

24:                                               ; preds = %13
  %25 = load %struct.value*, %struct.value** %3, align 8
  %26 = call i64 @VALUE_ADDRESS(%struct.value* %25)
  %27 = load %struct.value*, %struct.value** %3, align 8
  %28 = call i64 @VALUE_OFFSET(%struct.value* %27)
  %29 = add nsw i64 %26, %28
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %24, %21
  %31 = load %struct.type*, %struct.type** %5, align 8
  %32 = call i32 @lookup_pointer_type(%struct.type* %31)
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.type*, %struct.type** %5, align 8
  %35 = call i64 @TYPE_LENGTH(%struct.type* %34)
  %36 = sub nsw i64 %33, %35
  %37 = call %struct.value* @value_from_longest(i32 %32, i64 %36)
  store %struct.value* %37, %struct.value** %2, align 8
  br label %45

38:                                               ; preds = %1
  %39 = load %struct.type*, %struct.type** %4, align 8
  %40 = call i64 @is_thick_pntr(%struct.type* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call %struct.value* @value_struct_elt(%struct.value** %3, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.value* %43, %struct.value** %2, align 8
  br label %45

44:                                               ; preds = %38
  store %struct.value* null, %struct.value** %2, align 8
  br label %45

45:                                               ; preds = %44, %42, %30
  %46 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %46
}

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @is_thin_pntr(%struct.type*) #1

declare dso_local %struct.type* @desc_bounds_type(i32) #1

declare dso_local i32 @thin_descriptor_type(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @value_as_long(%struct.value*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_OFFSET(%struct.value*) #1

declare dso_local %struct.value* @value_from_longest(i32, i64) #1

declare dso_local i32 @lookup_pointer_type(%struct.type*) #1

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @is_thick_pntr(%struct.type*) #1

declare dso_local %struct.value* @value_struct_elt(%struct.value**, i32*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
