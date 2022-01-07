; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, i32, i32 }

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
  br label %109

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
  br label %109

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
  %50 = icmp eq i32 %49, 67
  br i1 %50, label %51, label %58

51:                                               ; preds = %26
  %52 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %53 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %53, align 8
  %56 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %57 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %51, %26
  %59 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %60 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 81
  br i1 %64, label %65, label %83

65:                                               ; preds = %58
  %66 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %67 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @ELFTC_ISDIGIT(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %75 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %75, align 8
  %78 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %79 = call i32 @read_qual_name(%struct.demangle_data* %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %109

82:                                               ; preds = %73
  br label %103

83:                                               ; preds = %65, %58
  %84 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %85 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8, i8* %86, align 1
  %88 = call i64 @ELFTC_ISDIGIT(i8 signext %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %83
  %91 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %92 = call i32 @read_class(%struct.demangle_data* %91)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %109

95:                                               ; preds = %90
  %96 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %97 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %96, i32 0, i32 2
  %98 = call i32 @VEC_PUSH_STR(i32* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  br label %109

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %83
  br label %103

103:                                              ; preds = %102, %82
  %104 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %105 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %104, i32 0, i32 2
  %106 = load i8*, i8** %5, align 8
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @vector_str_push(i32* %105, i8* %106, i64 %107)
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %103, %100, %94, %81, %25, %9
  %110 = load i32, i32* %2, align 4
  ret i32 %110
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
