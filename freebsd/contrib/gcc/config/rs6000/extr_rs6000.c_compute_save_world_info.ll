; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_compute_save_world_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_compute_save_world_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i64, i32, i64, i64 }

@DEFAULT_ABI = common dso_local global i64 0, align 8
@ABI_DARWIN = common dso_local global i64 0, align 8
@current_function_calls_setjmp = common dso_local global i64 0, align 8
@flag_exceptions = common dso_local global i64 0, align 8
@FIRST_SAVED_FP_REGNO = common dso_local global i64 0, align 8
@FIRST_SAVED_GP_REGNO = common dso_local global i64 0, align 8
@FIRST_SAVED_ALTIVEC_REGNO = common dso_local global i64 0, align 8
@CALL_INSN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @compute_save_world_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_save_world_info(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = call i64 @WORLD_SAVE_P(%struct.TYPE_4__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = load i64, i64* @DEFAULT_ABI, align 8
  %11 = load i64, i64* @ABI_DARWIN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load i64, i64* @current_function_calls_setjmp, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* @flag_exceptions, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FIRST_SAVED_FP_REGNO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FIRST_SAVED_GP_REGNO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FIRST_SAVED_ALTIVEC_REGNO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %37, %31, %25, %19, %16, %9, %1
  %43 = phi i1 [ false, %31 ], [ false, %25 ], [ false, %19 ], [ false, %16 ], [ false, %9 ], [ false, %1 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = call i64 @WORLD_SAVE_P(%struct.TYPE_4__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %42
  %51 = call i64 (...) @get_last_insn_anywhere()
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %68, %50
  %53 = load i64, i64* %3, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @GET_CODE(i64 %56)
  %58 = load i64, i64* @CALL_INSN, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i64, i64* %3, align 8
  %62 = call i64 @SIBLING_CALL_P(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %71

67:                                               ; preds = %60, %55
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %3, align 8
  %70 = call i64 @PREV_INSN(i64 %69)
  store i64 %70, i64* %3, align 8
  br label %52

71:                                               ; preds = %64, %52
  br label %72

72:                                               ; preds = %71, %42
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = call i64 @WORLD_SAVE_P(%struct.TYPE_4__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  store i32 4, i32* %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = call i64 (...) @compute_vrsave_mask()
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %76
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @FIRST_SAVED_FP_REGNO, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FIRST_SAVED_ALTIVEC_REGNO, align 8
  %98 = icmp sge i64 %96, %97
  br label %99

99:                                               ; preds = %93, %87
  %100 = phi i1 [ false, %87 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @gcc_assert(i32 %101)
  br label %103

103:                                              ; preds = %99, %72
  ret void
}

declare dso_local i64 @WORLD_SAVE_P(%struct.TYPE_4__*) #1

declare dso_local i64 @get_last_insn_anywhere(...) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @SIBLING_CALL_P(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @compute_vrsave_mask(...) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
