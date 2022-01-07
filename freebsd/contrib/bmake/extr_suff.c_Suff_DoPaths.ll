; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_Suff_DoPaths.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_Suff_DoPaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@sufflist = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@dirSearchPath = common dso_local global i32 0, align 4
@Dir_Destroy = common dso_local global i32 0, align 4
@Dir_CopyDir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c".INCLUDES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@VAR_GLOBAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c".LIBS\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-L\00", align 1
@SUFF_INCLUDE = common dso_local global i32 0, align 4
@SUFF_LIBRARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Suff_DoPaths() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @sufflist, align 4
  %7 = call i64 @Lst_Open(i32 %6)
  %8 = load i64, i64* @FAILURE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %68

11:                                               ; preds = %0
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @Lst_Init(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32 @Lst_Init(i32 %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %46, %11
  %17 = load i32, i32* @sufflist, align 4
  %18 = call i32* @Lst_Next(i32 %17)
  store i32* %18, i32** %2, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i32*, i32** %2, align 8
  %22 = call i64 @Lst_Datum(i32* %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %1, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @Lst_IsEmpty(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @dirSearchPath, align 4
  %34 = call i32 @Dir_Concat(i32 %32, i32 %33)
  br label %46

35:                                               ; preds = %20
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @Dir_Destroy, align 4
  %40 = call i32 @Lst_Destroy(i32 %38, i32 %39)
  %41 = load i32, i32* @dirSearchPath, align 4
  %42 = load i32, i32* @Dir_CopyDir, align 4
  %43 = call i32 @Lst_Duplicate(i32 %41, i32 %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %35, %29
  br label %16

47:                                               ; preds = %16
  %48 = load i32, i32* %4, align 4
  %49 = call i8* @Dir_MakeFlags(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i8* %49, i8** %3, align 8
  %50 = load i32, i32* @VAR_GLOBAL, align 4
  %51 = call i32 @Var_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %49, i32 %50, i32 0)
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i8* @Dir_MakeFlags(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  store i8* %55, i8** %3, align 8
  %56 = load i32, i32* @VAR_GLOBAL, align 4
  %57 = call i32 @Var_Set(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %56, i32 0)
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @Dir_Destroy, align 4
  %62 = call i32 @Lst_Destroy(i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @Dir_Destroy, align 4
  %65 = call i32 @Lst_Destroy(i32 %63, i32 %64)
  %66 = load i32, i32* @sufflist, align 4
  %67 = call i32 @Lst_Close(i32 %66)
  br label %68

68:                                               ; preds = %47, %10
  ret void
}

declare dso_local i64 @Lst_Open(i32) #1

declare dso_local i32 @Lst_Init(i32) #1

declare dso_local i32* @Lst_Next(i32) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i32 @Lst_IsEmpty(i32) #1

declare dso_local i32 @Dir_Concat(i32, i32) #1

declare dso_local i32 @Lst_Destroy(i32, i32) #1

declare dso_local i32 @Lst_Duplicate(i32, i32) #1

declare dso_local i32 @Var_Set(i8*, i8*, i32, i32) #1

declare dso_local i8* @Dir_MakeFlags(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @Lst_Close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
