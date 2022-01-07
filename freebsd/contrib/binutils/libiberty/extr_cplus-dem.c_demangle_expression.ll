; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.work_stuff = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@optable = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, i32*, i32)* @demangle_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demangle_expression(%struct.work_stuff* %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.work_stuff*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.work_stuff* %0, %struct.work_stuff** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @string_appendn(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %16, align 8
  br label %19

19:                                               ; preds = %95, %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 87
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %28, %22, %19
  %35 = phi i1 [ false, %22 ], [ false, %19 ], [ %33, %28 ]
  br i1 %35, label %36, label %101

36:                                               ; preds = %34
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %94

39:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* %41)
  store i64 %42, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %43

43:                                               ; preds = %86, %39
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @optable, align 8
  %46 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %45)
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %89

48:                                               ; preds = %43
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @optable, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strlen(i8* %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %48
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @optable, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %6, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i64 @memcmp(i8* %63, i8* %65, i64 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %58
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @string_appendn(i32* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @optable, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @string_append(i32* %72, i32 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @string_appendn(i32* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 1, i32* %10, align 4
  %81 = load i64, i64* %13, align 8
  %82 = load i8**, i8*** %6, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 %81
  store i8* %84, i8** %82, align 8
  br label %89

85:                                               ; preds = %58, %48
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %43

89:                                               ; preds = %69, %43
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %101

93:                                               ; preds = %89
  br label %95

94:                                               ; preds = %36
  store i32 1, i32* %9, align 4
  br label %95

95:                                               ; preds = %94, %93
  %96 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %97 = load i8**, i8*** %6, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @demangle_template_value_parm(%struct.work_stuff* %96, i8** %97, i32* %98, i32 %99)
  store i32 %100, i32* %10, align 4
  br label %19

101:                                              ; preds = %92, %34
  %102 = load i8**, i8*** %6, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 87
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %114

108:                                              ; preds = %101
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @string_appendn(i32* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %111 = load i8**, i8*** %6, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %111, align 8
  br label %114

114:                                              ; preds = %108, %107
  %115 = load i32, i32* %10, align 4
  ret i32 %115
}

declare dso_local i32 @string_appendn(i32*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @string_append(i32*, i32) #1

declare dso_local i32 @demangle_template_value_parm(%struct.work_stuff*, i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
