; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dt_pragmadesc = type { i8*, i32, i32 (i8*, %struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i64, i8*, %struct.TYPE_6__* }

@DT_NODE_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"line\00", align 1
@DT_NODE_IDENT = common dso_local global i64 0, align 8
@D_PRAGCTL_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid control directive\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@dt_pragmas = common dso_local global %struct.dt_pragmadesc* null, align 8
@yylineno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"invalid control directive: #%s\0A\00", align 1
@D_PRAGMA_INVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"invalid D pragma: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_pragma(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.dt_pragmadesc*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 129, i32* %5, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %4, align 8
  br label %7

7:                                                ; preds = %114, %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %118

10:                                               ; preds = %7
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DT_NODE_INT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = call i32 @dt_pragma_line(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %17)
  br label %118

19:                                               ; preds = %10
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DT_NODE_IDENT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @D_PRAGCTL_INVAL, align 4
  %27 = call i32 (i32, i8*, ...) @xyerror(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 129
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 128, i32* %5, align 4
  br label %114

38:                                               ; preds = %31, %28
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 130, i32* %5, align 4
  br label %114

48:                                               ; preds = %41, %38
  %49 = load %struct.dt_pragmadesc*, %struct.dt_pragmadesc** @dt_pragmas, align 8
  store %struct.dt_pragmadesc* %49, %struct.dt_pragmadesc** %3, align 8
  br label %50

50:                                               ; preds = %72, %48
  %51 = load %struct.dt_pragmadesc*, %struct.dt_pragmadesc** %3, align 8
  %52 = getelementptr inbounds %struct.dt_pragmadesc, %struct.dt_pragmadesc* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.dt_pragmadesc*, %struct.dt_pragmadesc** %3, align 8
  %57 = getelementptr inbounds %struct.dt_pragmadesc, %struct.dt_pragmadesc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.dt_pragmadesc*, %struct.dt_pragmadesc** %3, align 8
  %63 = getelementptr inbounds %struct.dt_pragmadesc, %struct.dt_pragmadesc* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strcmp(i8* %64, i8* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %75

71:                                               ; preds = %61, %55
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.dt_pragmadesc*, %struct.dt_pragmadesc** %3, align 8
  %74 = getelementptr inbounds %struct.dt_pragmadesc, %struct.dt_pragmadesc* %73, i32 1
  store %struct.dt_pragmadesc* %74, %struct.dt_pragmadesc** %3, align 8
  br label %50

75:                                               ; preds = %70, %50
  %76 = load i32, i32* @yylineno, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* @yylineno, align 4
  %78 = load %struct.dt_pragmadesc*, %struct.dt_pragmadesc** %3, align 8
  %79 = getelementptr inbounds %struct.dt_pragmadesc, %struct.dt_pragmadesc* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load %struct.dt_pragmadesc*, %struct.dt_pragmadesc** %3, align 8
  %84 = getelementptr inbounds %struct.dt_pragmadesc, %struct.dt_pragmadesc* %83, i32 0, i32 2
  %85 = load i32 (i8*, %struct.TYPE_6__*)*, i32 (i8*, %struct.TYPE_6__*)** %84, align 8
  %86 = load %struct.dt_pragmadesc*, %struct.dt_pragmadesc** %3, align 8
  %87 = getelementptr inbounds %struct.dt_pragmadesc, %struct.dt_pragmadesc* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = call i32 %85(i8* %88, %struct.TYPE_6__* %91)
  %93 = load i32, i32* @yylineno, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @yylineno, align 4
  br label %118

95:                                               ; preds = %75
  %96 = load i32, i32* %5, align 4
  switch i32 %96, label %105 [
    i32 129, label %97
    i32 128, label %103
    i32 130, label %104
  ]

97:                                               ; preds = %95
  %98 = load i32, i32* @D_PRAGCTL_INVAL, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i32, i8*, ...) @xyerror(i32 %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %95, %97
  br label %111

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %95, %104
  %106 = load i32, i32* @D_PRAGMA_INVAL, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i32, i8*, ...) @xyerror(i32 %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %105, %103
  %112 = load i32, i32* @yylineno, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* @yylineno, align 4
  br label %118

114:                                              ; preds = %47, %37
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %4, align 8
  br label %7

118:                                              ; preds = %111, %82, %16, %7
  %119 = call i32 @dt_node_list_free(%struct.TYPE_6__** %2)
  ret void
}

declare dso_local i32 @dt_pragma_line(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @xyerror(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dt_node_list_free(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
