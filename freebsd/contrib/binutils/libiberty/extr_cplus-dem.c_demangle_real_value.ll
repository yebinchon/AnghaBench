; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_real_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_real_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32 }

@tk_real = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, i32*)* @demangle_real_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demangle_real_value(%struct.work_stuff* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.work_stuff*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  store %struct.work_stuff* %0, %struct.work_stuff** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i8**, i8*** %6, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 69
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @tk_real, align 4
  %18 = call i32 @demangle_expression(%struct.work_stuff* %14, i8** %15, i32* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %101

19:                                               ; preds = %3
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 109
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @string_appendn(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %28 = load i8**, i8*** %6, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  br label %31

31:                                               ; preds = %25, %19
  br label %32

32:                                               ; preds = %38, %31
  %33 = load i8**, i8*** %6, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @ISDIGIT(i8 zeroext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i32*, i32** %7, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @string_appendn(i32* %39, i8* %41, i32 1)
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %43, align 8
  br label %32

46:                                               ; preds = %32
  %47 = load i8**, i8*** %6, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @string_appendn(i32* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %55, align 8
  br label %58

58:                                               ; preds = %64, %52
  %59 = load i8**, i8*** %6, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @ISDIGIT(i8 zeroext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load i32*, i32** %7, align 8
  %66 = load i8**, i8*** %6, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @string_appendn(i32* %65, i8* %67, i32 1)
  %69 = load i8**, i8*** %6, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  br label %58

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i8**, i8*** %6, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 101
  br i1 %78, label %79, label %100

79:                                               ; preds = %73
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @string_appendn(i32* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %82 = load i8**, i8*** %6, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %82, align 8
  br label %85

85:                                               ; preds = %91, %79
  %86 = load i8**, i8*** %6, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call i64 @ISDIGIT(i8 zeroext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load i32*, i32** %7, align 8
  %93 = load i8**, i8*** %6, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @string_appendn(i32* %92, i8* %94, i32 1)
  %96 = load i8**, i8*** %6, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %96, align 8
  br label %85

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %73
  store i32 1, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %13
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @demangle_expression(%struct.work_stuff*, i8**, i32*, i32) #1

declare dso_local i32 @string_appendn(i32*, i8*, i32) #1

declare dso_local i64 @ISDIGIT(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
