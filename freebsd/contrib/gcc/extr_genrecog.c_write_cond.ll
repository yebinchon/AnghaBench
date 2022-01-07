; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_cond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_test = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"peep2_current_count >= %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"GET_MODE (x%d) == %smode\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"GET_CODE (x%d) == \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"XVECLEN (x%d, 0) == %d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"XINT (x%d, 0) == %d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"XINT (x%d, 1) == %d\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"XWINT (x%d, 0) == \00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"x%d == const_int_rtx[MAX_SAVED_CONST_INT + (%d)]\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"XVECLEN (x%d, 0) >= %d\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"rtx_equal_p (x%d, operands[%d])\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"%s (x%d, %smode)\00", align 1
@RECOG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"pnum_clobbers != NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision_test*, i32, i32)* @write_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_cond(%struct.decision_test* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.decision_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.decision_test* %0, %struct.decision_test** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %8 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %118 [
    i32 131, label %10
    i32 132, label %16
    i32 139, label %24
    i32 129, label %32
    i32 135, label %39
    i32 136, label %47
    i32 134, label %55
    i32 133, label %55
    i32 138, label %63
    i32 128, label %71
    i32 137, label %78
    i32 130, label %85
    i32 140, label %99
    i32 141, label %105
  ]

10:                                               ; preds = %3
  %11 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %12 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %120

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %19 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @GET_MODE_NAME(i32 %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %17, i8* %22)
  br label %120

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %28 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @print_code(i32 %30)
  br label %120

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %35 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 %37)
  br label %120

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %42 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %40, i32 %45)
  br label %120

47:                                               ; preds = %3
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %50 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32 %53)
  br label %120

55:                                               ; preds = %3, %3
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %59 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @print_host_wide_int(i64 %61)
  br label %120

63:                                               ; preds = %3
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %66 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %64, i32 %69)
  br label %120

71:                                               ; preds = %3
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %74 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %72, i32 %76)
  br label %120

78:                                               ; preds = %3
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %81 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %79, i32 %83)
  br label %120

85:                                               ; preds = %3
  %86 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %87 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %93 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @GET_MODE_NAME(i32 %96)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %90, i32 %91, i8* %97)
  br label %120

99:                                               ; preds = %3
  %100 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %101 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @print_c_condition(i32 %103)
  br label %120

105:                                              ; preds = %3
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @RECOG, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @gcc_assert(i32 %109)
  %111 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %112 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @gcc_assert(i32 %115)
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %120

118:                                              ; preds = %3
  %119 = call i32 (...) @gcc_unreachable()
  br label %120

120:                                              ; preds = %118, %105, %99, %85, %78, %71, %63, %55, %47, %39, %32, %24, %16, %10
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local i32 @print_code(i32) #1

declare dso_local i32 @print_host_wide_int(i64) #1

declare dso_local i32 @print_c_condition(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
