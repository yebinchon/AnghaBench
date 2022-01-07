; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_print_z_candidates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_print_z_candidates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { %struct.z_candidate*, i32 }

@FUNCTION_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"candidates are:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z_candidate*)* @print_z_candidates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_z_candidates(%struct.z_candidate* %0) #0 {
  %2 = alloca %struct.z_candidate*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.z_candidate*, align 8
  %5 = alloca %struct.z_candidate**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.z_candidate* %0, %struct.z_candidate** %2, align 8
  %9 = load %struct.z_candidate*, %struct.z_candidate** %2, align 8
  store %struct.z_candidate* %9, %struct.z_candidate** %4, align 8
  br label %10

10:                                               ; preds = %57, %1
  %11 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %12 = icmp ne %struct.z_candidate* %11, null
  br i1 %12, label %13, label %61

13:                                               ; preds = %10
  %14 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %15 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @TREE_CODE(i32 %17)
  %19 = load i64, i64* @FUNCTION_DECL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %57

22:                                               ; preds = %13
  %23 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %24 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %23, i32 0, i32 0
  store %struct.z_candidate** %24, %struct.z_candidate*** %5, align 8
  br label %25

25:                                               ; preds = %55, %22
  %26 = load %struct.z_candidate**, %struct.z_candidate*** %5, align 8
  %27 = load %struct.z_candidate*, %struct.z_candidate** %26, align 8
  %28 = icmp ne %struct.z_candidate* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = load %struct.z_candidate**, %struct.z_candidate*** %5, align 8
  %31 = load %struct.z_candidate*, %struct.z_candidate** %30, align 8
  %32 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @TREE_CODE(i32 %33)
  %35 = load i64, i64* @FUNCTION_DECL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.z_candidate**, %struct.z_candidate*** %5, align 8
  %40 = load %struct.z_candidate*, %struct.z_candidate** %39, align 8
  %41 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @equal_functions(i32 %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.z_candidate**, %struct.z_candidate*** %5, align 8
  %47 = load %struct.z_candidate*, %struct.z_candidate** %46, align 8
  %48 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %47, i32 0, i32 0
  %49 = load %struct.z_candidate*, %struct.z_candidate** %48, align 8
  %50 = load %struct.z_candidate**, %struct.z_candidate*** %5, align 8
  store %struct.z_candidate* %49, %struct.z_candidate** %50, align 8
  br label %55

51:                                               ; preds = %37, %29
  %52 = load %struct.z_candidate**, %struct.z_candidate*** %5, align 8
  %53 = load %struct.z_candidate*, %struct.z_candidate** %52, align 8
  %54 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %53, i32 0, i32 0
  store %struct.z_candidate** %54, %struct.z_candidate*** %5, align 8
  br label %55

55:                                               ; preds = %51, %45
  br label %25

56:                                               ; preds = %25
  br label %57

57:                                               ; preds = %56, %21
  %58 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %59 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %58, i32 0, i32 0
  %60 = load %struct.z_candidate*, %struct.z_candidate** %59, align 8
  store %struct.z_candidate* %60, %struct.z_candidate** %4, align 8
  br label %10

61:                                               ; preds = %10
  %62 = load %struct.z_candidate*, %struct.z_candidate** %2, align 8
  %63 = icmp ne %struct.z_candidate* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %104

65:                                               ; preds = %61
  %66 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %66, i8** %3, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = load %struct.z_candidate*, %struct.z_candidate** %2, align 8
  %69 = call i32 @print_z_candidate(i8* %67, %struct.z_candidate* %68)
  %70 = load %struct.z_candidate*, %struct.z_candidate** %2, align 8
  %71 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %70, i32 0, i32 0
  %72 = load %struct.z_candidate*, %struct.z_candidate** %71, align 8
  %73 = icmp ne %struct.z_candidate* %72, null
  br i1 %73, label %74, label %104

74:                                               ; preds = %65
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @gcc_gettext_width(i8* %75)
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i64 @alloca(i64 %79)
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %8, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i64, i64* %7, align 8
  %84 = sub i64 %83, 1
  %85 = call i32 @memset(i8* %82, i8 signext 32, i64 %84)
  %86 = load i8*, i8** %8, align 8
  %87 = load i64, i64* %7, align 8
  %88 = sub i64 %87, 1
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load %struct.z_candidate*, %struct.z_candidate** %2, align 8
  %91 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %90, i32 0, i32 0
  %92 = load %struct.z_candidate*, %struct.z_candidate** %91, align 8
  store %struct.z_candidate* %92, %struct.z_candidate** %2, align 8
  br label %93

93:                                               ; preds = %100, %74
  %94 = load i8*, i8** %8, align 8
  %95 = load %struct.z_candidate*, %struct.z_candidate** %2, align 8
  %96 = call i32 @print_z_candidate(i8* %94, %struct.z_candidate* %95)
  %97 = load %struct.z_candidate*, %struct.z_candidate** %2, align 8
  %98 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %97, i32 0, i32 0
  %99 = load %struct.z_candidate*, %struct.z_candidate** %98, align 8
  store %struct.z_candidate* %99, %struct.z_candidate** %2, align 8
  br label %100

100:                                              ; preds = %93
  %101 = load %struct.z_candidate*, %struct.z_candidate** %2, align 8
  %102 = icmp ne %struct.z_candidate* %101, null
  br i1 %102, label %93, label %103

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %64, %103, %65
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @equal_functions(i32, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @print_z_candidate(i8*, %struct.z_candidate*) #1

declare dso_local i32 @gcc_gettext_width(i8*) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
