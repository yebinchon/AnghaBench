; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_array_element_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_array_element_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @ada_array_element_type(%struct.type* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.type*, %struct.type** %4, align 8
  %9 = call %struct.type* @desc_base_type(%struct.type* %8)
  store %struct.type* %9, %struct.type** %4, align 8
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = call i64 @TYPE_CODE(%struct.type* %10)
  %12 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load %struct.type*, %struct.type** %4, align 8
  %16 = call %struct.type* @desc_data_type(%struct.type* %15)
  store %struct.type* %16, %struct.type** %7, align 8
  %17 = load %struct.type*, %struct.type** %4, align 8
  %18 = call i32 @ada_array_arity(%struct.type* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store %struct.type* null, %struct.type** %3, align 8
  br label %75

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %25, %22
  %32 = load %struct.type*, %struct.type** %7, align 8
  %33 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %32)
  store %struct.type* %33, %struct.type** %7, align 8
  br label %34

34:                                               ; preds = %42, %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.type*, %struct.type** %7, align 8
  %39 = icmp ne %struct.type* %38, null
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = load %struct.type*, %struct.type** %7, align 8
  %44 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %43)
  %45 = call %struct.type* @check_typedef(%struct.type* %44)
  store %struct.type* %45, %struct.type** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %34

48:                                               ; preds = %40
  %49 = load %struct.type*, %struct.type** %7, align 8
  store %struct.type* %49, %struct.type** %3, align 8
  br label %75

50:                                               ; preds = %2
  %51 = load %struct.type*, %struct.type** %4, align 8
  %52 = call i64 @TYPE_CODE(%struct.type* %51)
  %53 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.type*, %struct.type** %4, align 8
  %61 = call i64 @TYPE_CODE(%struct.type* %60)
  %62 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %63 = icmp eq i64 %61, %62
  br label %64

64:                                               ; preds = %59, %56
  %65 = phi i1 [ false, %56 ], [ %63, %59 ]
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = load %struct.type*, %struct.type** %4, align 8
  %68 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %67)
  store %struct.type* %68, %struct.type** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %56

71:                                               ; preds = %64
  %72 = load %struct.type*, %struct.type** %4, align 8
  store %struct.type* %72, %struct.type** %3, align 8
  br label %75

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73
  store %struct.type* null, %struct.type** %3, align 8
  br label %75

75:                                               ; preds = %74, %71, %48, %21
  %76 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %76
}

declare dso_local %struct.type* @desc_base_type(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @desc_data_type(%struct.type*) #1

declare dso_local i32 @ada_array_arity(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
