; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_type_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_type_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_REF = common dso_local global i32 0, align 4
@TYPE_CODE_VOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, %struct.type*, i32)* @ada_type_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ada_type_match(%struct.type* %0, %struct.type* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %5, align 8
  store %struct.type* %1, %struct.type** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.type*, %struct.type** %5, align 8
  %9 = call i32 @CHECK_TYPEDEF(%struct.type* %8)
  %10 = load %struct.type*, %struct.type** %6, align 8
  %11 = call i32 @CHECK_TYPEDEF(%struct.type* %10)
  %12 = load %struct.type*, %struct.type** %5, align 8
  %13 = call i32 @TYPE_CODE(%struct.type* %12)
  %14 = load i32, i32* @TYPE_CODE_REF, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.type*, %struct.type** %5, align 8
  %18 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %17)
  store %struct.type* %18, %struct.type** %5, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.type*, %struct.type** %6, align 8
  %21 = call i32 @TYPE_CODE(%struct.type* %20)
  %22 = load i32, i32* @TYPE_CODE_REF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.type*, %struct.type** %6, align 8
  %26 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %25)
  store %struct.type* %26, %struct.type** %6, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.type*, %struct.type** %5, align 8
  %29 = call i32 @TYPE_CODE(%struct.type* %28)
  %30 = load i32, i32* @TYPE_CODE_VOID, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.type*, %struct.type** %6, align 8
  %34 = call i32 @TYPE_CODE(%struct.type* %33)
  %35 = load i32, i32* @TYPE_CODE_VOID, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27
  store i32 1, i32* %4, align 4
  br label %114

38:                                               ; preds = %32
  %39 = load %struct.type*, %struct.type** %5, align 8
  %40 = call i32 @TYPE_CODE(%struct.type* %39)
  switch i32 %40, label %41 [
    i32 131, label %42
    i32 132, label %64
    i32 134, label %64
    i32 130, label %64
    i32 135, label %69
    i32 129, label %80
    i32 128, label %107
    i32 133, label %107
  ]

41:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %114

42:                                               ; preds = %38
  %43 = load %struct.type*, %struct.type** %6, align 8
  %44 = call i32 @TYPE_CODE(%struct.type* %43)
  %45 = icmp eq i32 %44, 131
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.type*, %struct.type** %5, align 8
  %48 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %47)
  %49 = load %struct.type*, %struct.type** %6, align 8
  %50 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %49)
  %51 = call i32 @ada_type_match(%struct.type* %48, %struct.type* %50, i32 0)
  store i32 %51, i32* %4, align 4
  br label %114

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.type*, %struct.type** %5, align 8
  %57 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %56)
  %58 = load %struct.type*, %struct.type** %6, align 8
  %59 = call i32 @ada_type_match(%struct.type* %57, %struct.type* %58, i32 0)
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %55, %52
  %62 = phi i1 [ false, %52 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %114

64:                                               ; preds = %38, %38, %38
  %65 = load %struct.type*, %struct.type** %6, align 8
  %66 = call i32 @TYPE_CODE(%struct.type* %65)
  switch i32 %66, label %68 [
    i32 132, label %67
    i32 134, label %67
    i32 130, label %67
  ]

67:                                               ; preds = %64, %64, %64
  store i32 1, i32* %4, align 4
  br label %114

68:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %114

69:                                               ; preds = %38
  %70 = load %struct.type*, %struct.type** %6, align 8
  %71 = call i32 @TYPE_CODE(%struct.type* %70)
  %72 = icmp eq i32 %71, 135
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load %struct.type*, %struct.type** %6, align 8
  %75 = call i32 @ada_is_array_descriptor(%struct.type* %74)
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ true, %69 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %114

80:                                               ; preds = %38
  %81 = load %struct.type*, %struct.type** %5, align 8
  %82 = call i32 @ada_is_array_descriptor(%struct.type* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load %struct.type*, %struct.type** %6, align 8
  %86 = call i32 @TYPE_CODE(%struct.type* %85)
  %87 = icmp eq i32 %86, 135
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load %struct.type*, %struct.type** %6, align 8
  %90 = call i32 @ada_is_array_descriptor(%struct.type* %89)
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i1 [ true, %84 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %4, align 4
  br label %114

95:                                               ; preds = %80
  %96 = load %struct.type*, %struct.type** %6, align 8
  %97 = call i32 @TYPE_CODE(%struct.type* %96)
  %98 = icmp eq i32 %97, 129
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.type*, %struct.type** %6, align 8
  %101 = call i32 @ada_is_array_descriptor(%struct.type* %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br label %104

104:                                              ; preds = %99, %95
  %105 = phi i1 [ false, %95 ], [ %103, %99 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %4, align 4
  br label %114

107:                                              ; preds = %38, %38
  %108 = load %struct.type*, %struct.type** %6, align 8
  %109 = call i32 @TYPE_CODE(%struct.type* %108)
  %110 = load %struct.type*, %struct.type** %5, align 8
  %111 = call i32 @TYPE_CODE(%struct.type* %110)
  %112 = icmp eq i32 %109, %111
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %107, %104, %92, %77, %68, %67, %61, %46, %41, %37
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @ada_is_array_descriptor(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
