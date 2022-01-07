; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Shell_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Shell_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i64 }

@shellPath = common dso_local global i8* null, align 8
@commandShell = common dso_local global %struct.TYPE_2__* null, align 8
@shellName = common dso_local global i8* null, align 8
@_PATH_DEFSHELLDIR = common dso_local global i32 0, align 4
@STR_ADDSLASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@shellErrFlag = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Shell_Init() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @shellPath, align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commandShell, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** @shellName, align 8
  %8 = load i32, i32* @_PATH_DEFSHELLDIR, align 4
  %9 = load i8*, i8** @shellName, align 8
  %10 = load i32, i32* @STR_ADDSLASH, align 4
  %11 = call i8* @str_concat(i32 %8, i8* %9, i32 %10)
  store i8* %11, i8** @shellPath, align 8
  br label %12

12:                                               ; preds = %4, %0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commandShell, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commandShell, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commandShell, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commandShell, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commandShell, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %28
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commandShell, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %33
  %41 = load i32*, i32** @shellErrFlag, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commandShell, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i32*, i32** @shellErrFlag, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i64 @strcmp(i8* %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32*, i32** @shellErrFlag, align 8
  %53 = call i32 @free(i32* %52)
  store i32* null, i32** @shellErrFlag, align 8
  br label %54

54:                                               ; preds = %51, %43, %40
  %55 = load i32*, i32** @shellErrFlag, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %75, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commandShell, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* %1, align 4
  %64 = call i32* @bmake_malloc(i32 %63)
  store i32* %64, i32** @shellErrFlag, align 8
  %65 = load i32*, i32** @shellErrFlag, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load i32*, i32** @shellErrFlag, align 8
  %69 = load i32, i32* %1, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commandShell, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @snprintf(i32* %68, i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %67, %57
  br label %75

75:                                               ; preds = %74, %54
  br label %83

76:                                               ; preds = %33, %28
  %77 = load i32*, i32** @shellErrFlag, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** @shellErrFlag, align 8
  %81 = call i32 @free(i32* %80)
  store i32* null, i32** @shellErrFlag, align 8
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %75
  ret void
}

declare dso_local i8* @str_concat(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @bmake_malloc(i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
