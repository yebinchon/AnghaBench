; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_value_struct_elt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_value_struct_elt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Attempt to extract a component of a value that is not a %s.\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"There is no member named %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_value_struct_elt(%struct.value* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.value*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.value*, %struct.value** %4, align 8
  %10 = call %struct.value* @ada_coerce_ref(%struct.value* %9)
  store %struct.value* %10, %struct.value** %4, align 8
  %11 = load %struct.value*, %struct.value** %4, align 8
  %12 = call i32 @VALUE_TYPE(%struct.value* %11)
  %13 = call %struct.type* @check_typedef(i32 %12)
  store %struct.type* %13, %struct.type** %7, align 8
  br label %14

14:                                               ; preds = %26, %3
  %15 = load %struct.type*, %struct.type** %7, align 8
  %16 = call i64 @TYPE_CODE(%struct.type* %15)
  %17 = load i64, i64* @TYPE_CODE_PTR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.type*, %struct.type** %7, align 8
  %21 = call i64 @TYPE_CODE(%struct.type* %20)
  %22 = load i64, i64* @TYPE_CODE_REF, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ true, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = load %struct.value*, %struct.value** %4, align 8
  %28 = call %struct.value* @ada_value_ind(%struct.value* %27)
  store %struct.value* %28, %struct.value** %4, align 8
  %29 = load %struct.value*, %struct.value** %4, align 8
  %30 = call i32 @VALUE_TYPE(%struct.value* %29)
  %31 = call %struct.type* @check_typedef(i32 %30)
  store %struct.type* %31, %struct.type** %7, align 8
  br label %14

32:                                               ; preds = %24
  %33 = load %struct.type*, %struct.type** %7, align 8
  %34 = call i64 @TYPE_CODE(%struct.type* %33)
  %35 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.type*, %struct.type** %7, align 8
  %39 = call i64 @TYPE_CODE(%struct.type* %38)
  %40 = load i64, i64* @TYPE_CODE_UNION, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %37, %32
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.value*, %struct.value** %4, align 8
  %48 = load %struct.type*, %struct.type** %7, align 8
  %49 = call %struct.value* @ada_search_struct_field(i8* %46, %struct.value* %47, i32 0, %struct.type* %48)
  store %struct.value* %49, %struct.value** %8, align 8
  %50 = load %struct.value*, %struct.value** %8, align 8
  %51 = icmp eq %struct.value* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.value*, %struct.value** %8, align 8
  ret %struct.value* %56
}

declare dso_local %struct.value* @ada_coerce_ref(%struct.value*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.value* @ada_value_ind(%struct.value*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local %struct.value* @ada_search_struct_field(i8*, %struct.value*, i32, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
