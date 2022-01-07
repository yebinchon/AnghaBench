; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_to_fixed_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_to_fixed_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"___XA\00", align 1
@varsize_limit = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"array type with dynamic size is larger than varsize-limit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.type*, %struct.value*, i32)* @to_fixed_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @to_fixed_array_type(%struct.type* %0, %struct.value* %1, i32 %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.type*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.type*, align 8
  %13 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.value* %1, %struct.value** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.type*, %struct.type** %4, align 8
  %15 = call %struct.type* @ada_find_parallel_type(%struct.type* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.type* %15, %struct.type** %7, align 8
  %16 = load %struct.type*, %struct.type** %7, align 8
  %17 = icmp eq %struct.type* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load %struct.type*, %struct.type** %4, align 8
  %20 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %19)
  %21 = call %struct.type* @check_typedef(%struct.type* %20)
  store %struct.type* %21, %struct.type** %9, align 8
  %22 = load %struct.type*, %struct.type** %9, align 8
  %23 = load %struct.value*, %struct.value** %5, align 8
  %24 = call %struct.type* @ada_to_fixed_type(%struct.type* %22, i32 0, i32 0, %struct.value* %23)
  store %struct.type* %24, %struct.type** %10, align 8
  %25 = load %struct.type*, %struct.type** %9, align 8
  %26 = load %struct.type*, %struct.type** %10, align 8
  %27 = icmp eq %struct.type* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load %struct.type*, %struct.type** %4, align 8
  store %struct.type* %29, %struct.type** %8, align 8
  br label %38

30:                                               ; preds = %18
  %31 = load %struct.type*, %struct.type** %4, align 8
  %32 = call i32 @TYPE_OBJFILE(%struct.type* %31)
  %33 = call i32 @alloc_type(i32 %32)
  %34 = load %struct.type*, %struct.type** %10, align 8
  %35 = load %struct.type*, %struct.type** %4, align 8
  %36 = call %struct.type* @TYPE_INDEX_TYPE(%struct.type* %35)
  %37 = call %struct.type* @create_array_type(i32 %33, %struct.type* %34, %struct.type* %36)
  store %struct.type* %37, %struct.type** %8, align 8
  br label %38

38:                                               ; preds = %30, %28
  br label %91

39:                                               ; preds = %3
  %40 = load %struct.type*, %struct.type** %4, align 8
  store %struct.type* %40, %struct.type** %12, align 8
  %41 = load %struct.type*, %struct.type** %7, align 8
  %42 = call i32 @TYPE_NFIELDS(%struct.type* %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %49, %39
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.type*, %struct.type** %12, align 8
  %48 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %47)
  store %struct.type* %48, %struct.type** %12, align 8
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %43

52:                                               ; preds = %43
  %53 = load %struct.type*, %struct.type** %12, align 8
  %54 = call %struct.type* @check_typedef(%struct.type* %53)
  %55 = load %struct.value*, %struct.value** %5, align 8
  %56 = call %struct.type* @ada_to_fixed_type(%struct.type* %54, i32 0, i32 0, %struct.value* %55)
  store %struct.type* %56, %struct.type** %8, align 8
  %57 = load %struct.type*, %struct.type** %7, align 8
  %58 = call i32 @TYPE_NFIELDS(%struct.type* %57)
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %77, %52
  %61 = load i32, i32* %11, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = load %struct.type*, %struct.type** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @TYPE_FIELD_NAME(%struct.type* %64, i32 %65)
  %67 = load %struct.value*, %struct.value** %5, align 8
  %68 = load %struct.type*, %struct.type** %4, align 8
  %69 = call i32 @TYPE_OBJFILE(%struct.type* %68)
  %70 = call %struct.type* @to_fixed_range_type(i32 %66, %struct.value* %67, i32 %69)
  store %struct.type* %70, %struct.type** %13, align 8
  %71 = load %struct.type*, %struct.type** %4, align 8
  %72 = call i32 @TYPE_OBJFILE(%struct.type* %71)
  %73 = call i32 @alloc_type(i32 %72)
  %74 = load %struct.type*, %struct.type** %8, align 8
  %75 = load %struct.type*, %struct.type** %13, align 8
  %76 = call %struct.type* @create_array_type(i32 %73, %struct.type* %74, %struct.type* %75)
  store %struct.type* %76, %struct.type** %8, align 8
  br label %77

77:                                               ; preds = %63
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %60

80:                                               ; preds = %60
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load %struct.type*, %struct.type** %8, align 8
  %85 = call i64 @TYPE_LENGTH(%struct.type* %84)
  %86 = load i64, i64* @varsize_limit, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83, %80
  br label %91

91:                                               ; preds = %90, %38
  %92 = load %struct.type*, %struct.type** %8, align 8
  ret %struct.type* %92
}

declare dso_local %struct.type* @ada_find_parallel_type(%struct.type*, i8*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.type* @ada_to_fixed_type(%struct.type*, i32, i32, %struct.value*) #1

declare dso_local %struct.type* @create_array_type(i32, %struct.type*, %struct.type*) #1

declare dso_local i32 @alloc_type(i32) #1

declare dso_local i32 @TYPE_OBJFILE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_INDEX_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local %struct.type* @to_fixed_range_type(i32, %struct.value*, i32) #1

declare dso_local i32 @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
