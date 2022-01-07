; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_desc_bounds_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_desc_bounds_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"BOUNDS\00", align 1
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"P_BOUNDS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.type*)* @desc_bounds_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @desc_bounds_type(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %5 = load %struct.type*, %struct.type** %3, align 8
  %6 = call %struct.type* @desc_base_type(%struct.type* %5)
  store %struct.type* %6, %struct.type** %3, align 8
  %7 = load %struct.type*, %struct.type** %3, align 8
  %8 = icmp eq %struct.type* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.type* null, %struct.type** %2, align 8
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call i64 @is_thin_pntr(%struct.type* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.type*, %struct.type** %3, align 8
  %16 = call %struct.type* @thin_descriptor_type(%struct.type* %15)
  store %struct.type* %16, %struct.type** %3, align 8
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = icmp eq %struct.type* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.type* null, %struct.type** %2, align 8
  br label %48

20:                                               ; preds = %14
  %21 = load %struct.type*, %struct.type** %3, align 8
  %22 = call %struct.type* @lookup_struct_elt_type(%struct.type* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  store %struct.type* %22, %struct.type** %4, align 8
  %23 = load %struct.type*, %struct.type** %4, align 8
  %24 = icmp ne %struct.type* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.type*, %struct.type** %4, align 8
  %27 = call %struct.type* @check_typedef(%struct.type* %26)
  store %struct.type* %27, %struct.type** %2, align 8
  br label %48

28:                                               ; preds = %20
  br label %46

29:                                               ; preds = %10
  %30 = load %struct.type*, %struct.type** %3, align 8
  %31 = call i64 @TYPE_CODE(%struct.type* %30)
  %32 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.type*, %struct.type** %3, align 8
  %36 = call %struct.type* @lookup_struct_elt_type(%struct.type* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store %struct.type* %36, %struct.type** %4, align 8
  %37 = load %struct.type*, %struct.type** %4, align 8
  %38 = icmp ne %struct.type* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.type*, %struct.type** %4, align 8
  %41 = call %struct.type* @check_typedef(%struct.type* %40)
  %42 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %41)
  %43 = call %struct.type* @check_typedef(%struct.type* %42)
  store %struct.type* %43, %struct.type** %2, align 8
  br label %48

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %28
  br label %47

47:                                               ; preds = %46
  store %struct.type* null, %struct.type** %2, align 8
  br label %48

48:                                               ; preds = %47, %39, %25, %19, %9
  %49 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %49
}

declare dso_local %struct.type* @desc_base_type(%struct.type*) #1

declare dso_local i64 @is_thin_pntr(%struct.type*) #1

declare dso_local %struct.type* @thin_descriptor_type(%struct.type*) #1

declare dso_local %struct.type* @lookup_struct_elt_type(%struct.type*, i8*, i32) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
