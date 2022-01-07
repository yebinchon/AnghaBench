; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_function_arg_advance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_function_arg_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparc_args = type { i64 }

@TARGET_ARCH32 = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @function_arg_advance(%struct.sparc_args* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.sparc_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sparc_args* %0, %struct.sparc_args** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sparc_args*, %struct.sparc_args** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @function_arg_slotno(%struct.sparc_args* %13, i32 %14, i64 %15, i32 %16, i32 0, i32* %10, i32* %11)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.sparc_args*, %struct.sparc_args** %5, align 8
  %24 = getelementptr inbounds %struct.sparc_args, %struct.sparc_args* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %20, %4
  %28 = load i64, i64* @TARGET_ARCH32, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BLKmode, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @GET_MODE_SIZE(i32 %35)
  %37 = call i64 @ROUND_ADVANCE(i32 %36)
  br label %42

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @int_size_in_bytes(i64 %39)
  %41 = call i64 @ROUND_ADVANCE(i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i64 [ %37, %34 ], [ %41, %38 ]
  %44 = load %struct.sparc_args*, %struct.sparc_args** %5, align 8
  %45 = getelementptr inbounds %struct.sparc_args, %struct.sparc_args* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %99

48:                                               ; preds = %27
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @AGGREGATE_TYPE_P(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @int_size_in_bytes(i64 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp sle i32 %58, 8
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.sparc_args*, %struct.sparc_args** %5, align 8
  %62 = getelementptr inbounds %struct.sparc_args, %struct.sparc_args* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %79

65:                                               ; preds = %55
  %66 = load i32, i32* %12, align 4
  %67 = icmp sle i32 %66, 16
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.sparc_args*, %struct.sparc_args** %5, align 8
  %70 = getelementptr inbounds %struct.sparc_args, %struct.sparc_args* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 2
  store i64 %72, i64* %70, align 8
  br label %78

73:                                               ; preds = %65
  %74 = load %struct.sparc_args*, %struct.sparc_args** %5, align 8
  %75 = getelementptr inbounds %struct.sparc_args, %struct.sparc_args* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %60
  br label %98

80:                                               ; preds = %51, %48
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @BLKmode, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @GET_MODE_SIZE(i32 %85)
  %87 = call i64 @ROUND_ADVANCE(i32 %86)
  br label %92

88:                                               ; preds = %80
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @int_size_in_bytes(i64 %89)
  %91 = call i64 @ROUND_ADVANCE(i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i64 [ %87, %84 ], [ %91, %88 ]
  %94 = load %struct.sparc_args*, %struct.sparc_args** %5, align 8
  %95 = getelementptr inbounds %struct.sparc_args, %struct.sparc_args* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %92, %79
  br label %99

99:                                               ; preds = %98, %42
  ret void
}

declare dso_local i32 @function_arg_slotno(%struct.sparc_args*, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i64 @ROUND_ADVANCE(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
