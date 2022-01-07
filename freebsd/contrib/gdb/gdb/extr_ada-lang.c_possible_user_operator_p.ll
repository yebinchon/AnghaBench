; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_possible_user_operator_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_possible_user_operator_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_ARRAY = common dso_local global i32 0, align 4
@TYPE_CODE_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.value**)* @possible_user_operator_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @possible_user_operator_p(i32 %0, %struct.value** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.value**, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.type*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.value** %1, %struct.value*** %5, align 8
  %8 = load %struct.value**, %struct.value*** %5, align 8
  %9 = getelementptr inbounds %struct.value*, %struct.value** %8, i64 0
  %10 = load %struct.value*, %struct.value** %9, align 8
  %11 = call i32 @VALUE_TYPE(%struct.value* %10)
  %12 = call %struct.type* @check_typedef(i32 %11)
  store %struct.type* %12, %struct.type** %6, align 8
  %13 = load %struct.value**, %struct.value*** %5, align 8
  %14 = getelementptr inbounds %struct.value*, %struct.value** %13, i64 1
  %15 = load %struct.value*, %struct.value** %14, align 8
  %16 = icmp eq %struct.value* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.value**, %struct.value*** %5, align 8
  %20 = getelementptr inbounds %struct.value*, %struct.value** %19, i64 1
  %21 = load %struct.value*, %struct.value** %20, align 8
  %22 = call i32 @VALUE_TYPE(%struct.value* %21)
  %23 = call %struct.type* @check_typedef(i32 %22)
  br label %24

24:                                               ; preds = %18, %17
  %25 = phi %struct.type* [ null, %17 ], [ %23, %18 ]
  store %struct.type* %25, %struct.type** %7, align 8
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %27 [
    i32 148, label %28
    i32 132, label %28
    i32 135, label %28
    i32 143, label %28
    i32 133, label %40
    i32 136, label %40
    i32 147, label %40
    i32 146, label %40
    i32 145, label %40
    i32 142, label %52
    i32 134, label %52
    i32 137, label %52
    i32 139, label %52
    i32 138, label %52
    i32 140, label %52
    i32 144, label %64
    i32 141, label %103
    i32 129, label %115
    i32 128, label %115
    i32 130, label %115
    i32 131, label %115
  ]

27:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %121

28:                                               ; preds = %24, %24, %24, %24
  %29 = load %struct.type*, %struct.type** %6, align 8
  %30 = call i32 @numeric_type_p(%struct.type* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.type*, %struct.type** %7, align 8
  %34 = call i32 @numeric_type_p(%struct.type* %33)
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ false, %28 ], [ %35, %32 ]
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %121

40:                                               ; preds = %24, %24, %24, %24, %24
  %41 = load %struct.type*, %struct.type** %6, align 8
  %42 = call i32 @integer_type_p(%struct.type* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.type*, %struct.type** %7, align 8
  %46 = call i32 @integer_type_p(%struct.type* %45)
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %121

52:                                               ; preds = %24, %24, %24, %24, %24, %24
  %53 = load %struct.type*, %struct.type** %6, align 8
  %54 = call i32 @scalar_type_p(%struct.type* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.type*, %struct.type** %7, align 8
  %58 = call i32 @scalar_type_p(%struct.type* %57)
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %121

64:                                               ; preds = %24
  %65 = load %struct.type*, %struct.type** %6, align 8
  %66 = call i32 @TYPE_CODE(%struct.type* %65)
  %67 = load i32, i32* @TYPE_CODE_ARRAY, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.type*, %struct.type** %6, align 8
  %71 = call i32 @TYPE_CODE(%struct.type* %70)
  %72 = load i32, i32* @TYPE_CODE_PTR, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %100, label %74

74:                                               ; preds = %69
  %75 = load %struct.type*, %struct.type** %6, align 8
  %76 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %75)
  %77 = call i32 @TYPE_CODE(%struct.type* %76)
  %78 = load i32, i32* @TYPE_CODE_ARRAY, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %100, label %80

80:                                               ; preds = %74, %64
  %81 = load %struct.type*, %struct.type** %7, align 8
  %82 = call i32 @TYPE_CODE(%struct.type* %81)
  %83 = load i32, i32* @TYPE_CODE_ARRAY, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load %struct.type*, %struct.type** %7, align 8
  %87 = call i32 @TYPE_CODE(%struct.type* %86)
  %88 = load i32, i32* @TYPE_CODE_PTR, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load %struct.type*, %struct.type** %7, align 8
  %92 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %91)
  %93 = call i32 @TYPE_CODE(%struct.type* %92)
  %94 = load i32, i32* @TYPE_CODE_ARRAY, align 4
  %95 = icmp ne i32 %93, %94
  br label %96

96:                                               ; preds = %90, %85
  %97 = phi i1 [ true, %85 ], [ %95, %90 ]
  br label %98

98:                                               ; preds = %96, %80
  %99 = phi i1 [ false, %80 ], [ %97, %96 ]
  br label %100

100:                                              ; preds = %98, %74, %69
  %101 = phi i1 [ true, %74 ], [ true, %69 ], [ %99, %98 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %3, align 4
  br label %121

103:                                              ; preds = %24
  %104 = load %struct.type*, %struct.type** %6, align 8
  %105 = call i32 @numeric_type_p(%struct.type* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.type*, %struct.type** %7, align 8
  %109 = call i32 @integer_type_p(%struct.type* %108)
  %110 = icmp ne i32 %109, 0
  br label %111

111:                                              ; preds = %107, %103
  %112 = phi i1 [ false, %103 ], [ %110, %107 ]
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %3, align 4
  br label %121

115:                                              ; preds = %24, %24, %24, %24
  %116 = load %struct.type*, %struct.type** %6, align 8
  %117 = call i32 @numeric_type_p(%struct.type* %116)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %115, %111, %100, %60, %48, %36, %27
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @numeric_type_p(%struct.type*) #1

declare dso_local i32 @integer_type_p(%struct.type*) #1

declare dso_local i32 @scalar_type_p(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
