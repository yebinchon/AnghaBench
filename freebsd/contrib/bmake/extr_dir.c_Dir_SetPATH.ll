; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_SetPATH.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_SetPATH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c".PATH\00", align 1
@VAR_GLOBAL = common dso_local global i32 0, align 4
@dirSearchPath = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@dotLast = common dso_local global %struct.TYPE_5__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@dot = common dso_local global %struct.TYPE_5__* null, align 8
@cur = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dir_SetPATH() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @FALSE, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* @VAR_GLOBAL, align 4
  %6 = call i32 @Var_Delete(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @dirSearchPath, align 4
  %8 = call i64 @Lst_Open(i32 %7)
  %9 = load i64, i64* @SUCCESS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %104

11:                                               ; preds = %0
  %12 = load i32, i32* @dirSearchPath, align 4
  %13 = call i32* @Lst_First(i32 %12)
  store i32* %13, i32** %1, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i32*, i32** %1, align 8
  %17 = call i64 @Lst_Datum(i32* %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %2, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dotLast, align 8
  %21 = icmp eq %struct.TYPE_5__* %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %3, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dotLast, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @VAR_GLOBAL, align 4
  %28 = call i32 @Var_Append(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %15
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dot, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dot, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VAR_GLOBAL, align 4
  %41 = call i32 @Var_Append(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %33
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cur, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cur, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @VAR_GLOBAL, align 4
  %50 = call i32 @Var_Append(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %73, %72, %64, %52
  %54 = load i32, i32* @dirSearchPath, align 4
  %55 = call i32* @Lst_Next(i32 %54)
  store i32* %55, i32** %1, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load i32*, i32** %1, align 8
  %59 = call i64 @Lst_Datum(i32* %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %2, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dotLast, align 8
  %63 = icmp eq %struct.TYPE_5__* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %53

65:                                               ; preds = %57
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dot, align 8
  %68 = icmp eq %struct.TYPE_5__* %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i64, i64* %3, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %53

73:                                               ; preds = %69, %65
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @VAR_GLOBAL, align 4
  %78 = call i32 @Var_Append(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  br label %53

79:                                               ; preds = %53
  %80 = load i64, i64* %3, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dot, align 8
  %84 = icmp ne %struct.TYPE_5__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dot, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @VAR_GLOBAL, align 4
  %90 = call i32 @Var_Append(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cur, align 8
  %93 = icmp ne %struct.TYPE_6__* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cur, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @VAR_GLOBAL, align 4
  %99 = call i32 @Var_Append(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %91
  br label %101

101:                                              ; preds = %100, %79
  %102 = load i32, i32* @dirSearchPath, align 4
  %103 = call i32 @Lst_Close(i32 %102)
  br label %104

104:                                              ; preds = %101, %0
  ret void
}

declare dso_local i32 @Var_Delete(i8*, i32) #1

declare dso_local i64 @Lst_Open(i32) #1

declare dso_local i32* @Lst_First(i32) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i32 @Var_Append(i8*, i32, i32) #1

declare dso_local i32* @Lst_Next(i32) #1

declare dso_local i32 @Lst_Close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
