; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_is_json.c_json_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_is_json.c_json_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Parse general: \00", align 1
@JSON_STRING = common dso_local global i32 0, align 4
@JSON_ARRAY = common dso_local global i32 0, align 4
@JSON_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@JSON_CONSTANT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@JSON_NUMBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"End general: \00", align 1
@JSON_ARRAYN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i64*, i64)* @json_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_parse(i8** %0, i8* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @json_skip_space(i8* %14, i8* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %85

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = icmp ugt i64 %22, 20
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %116

25:                                               ; preds = %21
  %26 = load i8*, i8** %10, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %28)
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %10, align 8
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i32
  switch i32 %33, label %65 [
    i32 34, label %34
    i32 91, label %38
    i32 123, label %45
    i32 116, label %53
    i32 102, label %57
    i32 110, label %61
  ]

34:                                               ; preds = %25
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @json_parse_string(i8** %10, i8* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* @JSON_STRING, align 4
  store i32 %37, i32* %12, align 4
  br label %71

38:                                               ; preds = %25
  %39 = load i8*, i8** %7, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  %43 = call i32 @json_parse_array(i8** %10, i8* %39, i64* %40, i64 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @JSON_ARRAY, align 4
  store i32 %44, i32* %12, align 4
  br label %71

45:                                               ; preds = %25
  %46 = load i8*, i8** %7, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  %50 = call i32 @json_parse_object(i8** %10, i8* %46, i64* %47, i64 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i64, i64* @JSON_OBJECT, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  br label %71

53:                                               ; preds = %25
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @json_parse_const(i8** %10, i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 5)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @JSON_CONSTANT, align 4
  store i32 %56, i32* %12, align 4
  br label %71

57:                                               ; preds = %25
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @json_parse_const(i8** %10, i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 6)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @JSON_CONSTANT, align 4
  store i32 %60, i32* %12, align 4
  br label %71

61:                                               ; preds = %25
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @json_parse_const(i8** %10, i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 5)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @JSON_CONSTANT, align 4
  store i32 %64, i32* %12, align 4
  br label %71

65:                                               ; preds = %25
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @json_parse_number(i8** %10, i8* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* @JSON_NUMBER, align 4
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %65, %61, %57, %53, %45, %38, %34
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i64*, i64** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %74, %71
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i8* @json_skip_space(i8* %82, i8* %83)
  store i8* %84, i8** %10, align 8
  br label %85

85:                                               ; preds = %81, %20
  %86 = load i8*, i8** %10, align 8
  %87 = load i8**, i8*** %6, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i8**, i8*** %6, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %88, i8* %90)
  %92 = load i64, i64* %9, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %85
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load i64*, i64** %8, align 8
  %99 = load i64, i64* @JSON_ARRAYN, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load i64*, i64** %8, align 8
  %105 = load i64, i64* @JSON_OBJECT, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %103, %97
  %110 = phi i1 [ true, %97 ], [ %108, %103 ]
  br label %111

111:                                              ; preds = %109, %94
  %112 = phi i1 [ false, %94 ], [ %110, %109 ]
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %5, align 4
  br label %116

114:                                              ; preds = %85
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %111, %24
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i8* @json_skip_space(i8*, i8*) #1

declare dso_local i32 @DPRINTF(i8*, i8*, i8*) #1

declare dso_local i32 @json_parse_string(i8**, i8*) #1

declare dso_local i32 @json_parse_array(i8**, i8*, i64*, i64) #1

declare dso_local i32 @json_parse_object(i8**, i8*, i64*, i64) #1

declare dso_local i32 @json_parse_const(i8**, i8*, i8*, i32) #1

declare dso_local i32 @json_parse_number(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
