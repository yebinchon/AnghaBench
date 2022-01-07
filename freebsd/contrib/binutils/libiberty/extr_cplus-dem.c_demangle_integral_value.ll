; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_integral_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_integral_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32 }

@tk_integral = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@INTBUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, i32*)* @demangle_integral_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demangle_integral_value(%struct.work_stuff* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.work_stuff*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.work_stuff* %0, %struct.work_stuff** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 69
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @tk_integral, align 4
  %23 = call i32 @demangle_expression(%struct.work_stuff* %19, i8** %20, i32* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  br label %119

24:                                               ; preds = %3
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 81
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 75
  br i1 %35, label %36, label %41

36:                                               ; preds = %30, %24
  %37 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @demangle_qualified(%struct.work_stuff* %37, i8** %38, i32* %39, i32 0, i32 1)
  store i32 %40, i32* %7, align 4
  br label %118

41:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 95
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 109
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @string_appendn(i32* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %58, align 8
  br label %62

61:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %55
  br label %76

63:                                               ; preds = %41
  %64 = load i8**, i8*** %5, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 109
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @string_appendn(i32* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %72, align 8
  br label %75

75:                                               ; preds = %69, %63
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %62
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8**, i8*** %5, align 8
  %81 = call i32 @consume_count(i8** %80)
  store i32 %81, i32* %8, align 4
  br label %85

82:                                               ; preds = %76
  %83 = load i8**, i8*** %5, align 8
  %84 = call i32 @consume_count_with_underscores(i8** %83)
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %117

88:                                               ; preds = %85
  %89 = load i32, i32* @INTBUF_SIZE, align 4
  %90 = zext i32 %89 to i64
  %91 = call i8* @llvm.stacksave()
  store i8* %91, i8** %11, align 8
  %92 = alloca i8, i64 %90, align 16
  store i64 %90, i64* %12, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @sprintf(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @string_append(i32* %95, i8* %92)
  %97 = load i32, i32* %8, align 4
  %98 = icmp sgt i32 %97, 9
  br i1 %98, label %102, label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %99, %88
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %102
  %106 = load i8**, i8*** %5, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 95
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i8**, i8*** %5, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %112, align 8
  br label %115

115:                                              ; preds = %111, %105, %102, %99
  store i32 1, i32* %7, align 4
  %116 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %116)
  br label %117

117:                                              ; preds = %115, %85
  br label %118

118:                                              ; preds = %117, %36
  br label %119

119:                                              ; preds = %118, %18
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @demangle_expression(%struct.work_stuff*, i8**, i32*, i32) #1

declare dso_local i32 @demangle_qualified(%struct.work_stuff*, i8**, i32*, i32, i32) #1

declare dso_local i32 @string_appendn(i32*, i8*, i32) #1

declare dso_local i32 @consume_count(i8**) #1

declare dso_local i32 @consume_count_with_underscores(i8**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @string_append(i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
