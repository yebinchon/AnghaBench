; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_read_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_read_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"d->p (org str) is NULL\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @read_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_func(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %7 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %8 = icmp eq %struct.demangle_data* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

10:                                               ; preds = %1
  %11 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %12 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %10
  %17 = phi i1 [ false, %10 ], [ true, %15 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %21 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @strstr(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %98

26:                                               ; preds = %16
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %29 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %27 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %39 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %44 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %46 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 81
  br i1 %50, label %51, label %69

51:                                               ; preds = %26
  %52 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %53 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @ELFTC_ISDIGIT(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %61 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %61, align 8
  %64 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %65 = call i32 @read_qual_name(%struct.demangle_data* %64)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %98

68:                                               ; preds = %59
  br label %89

69:                                               ; preds = %51, %26
  %70 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %71 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @ELFTC_ISDIGIT(i8 signext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %78 = call i32 @read_class(%struct.demangle_data* %77)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %98

81:                                               ; preds = %76
  %82 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %83 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %82, i32 0, i32 1
  %84 = call i32 @VEC_PUSH_STR(i32* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %98

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %69
  br label %89

89:                                               ; preds = %88, %68
  %90 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %91 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %90, i32 0, i32 1
  %92 = load i8*, i8** %5, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @vector_str_push(i32* %91, i8* %92, i64 %93)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %98

97:                                               ; preds = %89
  store i32 1, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %96, %86, %80, %67, %25, %9
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @ELFTC_ISDIGIT(i8 signext) #1

declare dso_local i32 @read_qual_name(%struct.demangle_data*) #1

declare dso_local i32 @read_class(%struct.demangle_data*) #1

declare dso_local i32 @VEC_PUSH_STR(i32*, i8*) #1

declare dso_local i32 @vector_str_push(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
