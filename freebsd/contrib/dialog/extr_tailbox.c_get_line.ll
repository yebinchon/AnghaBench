; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_tailbox.c_get_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_tailbox.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error moving file pointer in get_line().\00", align 1
@TAB = common dso_local global i32 0, align 4
@dialog_vars = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@dialog_state = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*)* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_line(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %106, %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @getc(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @EOF, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @feof(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %98

27:                                               ; preds = %21, %16
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @feof(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %97, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 10
  br i1 %33, label %34, label %97

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @TAB, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %34
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dialog_vars, i32 0, i32 0), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %38
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dialog_state, i32 0, i32 0), align 4
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %43, %46
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dialog_state, i32 0, i32 0), align 4
  %49 = srem i32 %47, %48
  %50 = sub nsw i32 %42, %49
  store i32 %50, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %72, %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @MAX_LEN, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 32, i8* %68, align 1
  br label %69

69:                                               ; preds = %62, %58, %55
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %51

75:                                               ; preds = %51
  br label %91

76:                                               ; preds = %38, %34
  %77 = load i32, i32* %4, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = trunc i32 %80 to i8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 %81, i8* %87, align 1
  br label %88

88:                                               ; preds = %79, %76
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %75
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @MAX_LEN, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %108

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %31, %27
  br label %98

98:                                               ; preds = %97, %25
  br label %99

99:                                               ; preds = %98
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @feof(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 10
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi i1 [ false, %99 ], [ %105, %103 ]
  br i1 %107, label %16, label %108

108:                                              ; preds = %106, %95
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %108
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  ret i8* %121
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @dlg_exiterr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
