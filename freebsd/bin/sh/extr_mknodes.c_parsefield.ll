; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_mknodes.c_parsefield.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_mknodes.c_parsefield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.field*, i64 }
%struct.field = type { i64, i8*, i8* }

@BUFLEN = common dso_local global i32 0, align 4
@curstr = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"No current structure to add field to\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"No field name\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"No field type\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nodeptr\00", align 1
@T_NODE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"union node *%s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"nodelist\00", align 1
@T_NODELIST = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"struct nodelist *%s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@T_STRING = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"char *%s\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@T_INT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"int %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@T_OTHER = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@T_TEMP = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"Unknown type %s\00", align 1
@linep = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [23 x i8] c"Garbage at end of line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parsefield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parsefield() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.field*, align 8
  %6 = load i32, i32* @BUFLEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @BUFLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  %13 = load i32, i32* @BUFLEN, align 4
  %14 = mul nsw i32 2, %13
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curstr, align 8
  %18 = icmp eq %struct.TYPE_2__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curstr, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %0
  %25 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = call i32 @nextfield(i8* %9)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  %32 = call i32 @nextfield(i8* %12)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curstr, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.field*, %struct.field** %38, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curstr, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.field, %struct.field* %39, i64 %42
  store %struct.field* %43, %struct.field** %5, align 8
  %44 = call i8* @savestr(i8* %9)
  %45 = load %struct.field*, %struct.field** %5, align 8
  %46 = getelementptr inbounds %struct.field, %struct.field* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load i64, i64* @T_NODE, align 8
  %51 = load %struct.field*, %struct.field** %5, align 8
  %52 = getelementptr inbounds %struct.field, %struct.field* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %9)
  br label %99

54:                                               ; preds = %36
  %55 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i64, i64* @T_NODELIST, align 8
  %59 = load %struct.field*, %struct.field** %5, align 8
  %60 = getelementptr inbounds %struct.field, %struct.field* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %9)
  br label %98

62:                                               ; preds = %54
  %63 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i64, i64* @T_STRING, align 8
  %67 = load %struct.field*, %struct.field** %5, align 8
  %68 = getelementptr inbounds %struct.field, %struct.field* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %9)
  br label %97

70:                                               ; preds = %62
  %71 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i64, i64* @T_INT, align 8
  %75 = load %struct.field*, %struct.field** %5, align 8
  %76 = getelementptr inbounds %struct.field, %struct.field* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %9)
  br label %96

78:                                               ; preds = %70
  %79 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i64, i64* @T_OTHER, align 8
  %83 = load %struct.field*, %struct.field** %5, align 8
  %84 = getelementptr inbounds %struct.field, %struct.field* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %95

85:                                               ; preds = %78
  %86 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i64, i64* @T_TEMP, align 8
  %90 = load %struct.field*, %struct.field** %5, align 8
  %91 = getelementptr inbounds %struct.field, %struct.field* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %94

92:                                               ; preds = %85
  %93 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* %12)
  br label %94

94:                                               ; preds = %92, %88
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95, %73
  br label %97

97:                                               ; preds = %96, %65
  br label %98

98:                                               ; preds = %97, %57
  br label %99

99:                                               ; preds = %98, %49
  %100 = load %struct.field*, %struct.field** %5, align 8
  %101 = getelementptr inbounds %struct.field, %struct.field* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @T_OTHER, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load %struct.field*, %struct.field** %5, align 8
  %107 = getelementptr inbounds %struct.field, %struct.field* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @T_TEMP, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105, %99
  %112 = call i32 (...) @skipbl()
  %113 = load i8*, i8** @linep, align 8
  %114 = call i8* @savestr(i8* %113)
  %115 = load %struct.field*, %struct.field** %5, align 8
  %116 = getelementptr inbounds %struct.field, %struct.field* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  br label %127

117:                                              ; preds = %105
  %118 = load i8*, i8** @linep, align 8
  %119 = load i8, i8* %118, align 1
  %120 = icmp ne i8 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %117
  %124 = call i8* @savestr(i8* %16)
  %125 = load %struct.field*, %struct.field** %5, align 8
  %126 = getelementptr inbounds %struct.field, %struct.field* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %123, %111
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curstr, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %129, align 8
  %132 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %132)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i32 @nextfield(i8*) #2

declare dso_local i8* @savestr(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @skipbl(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
