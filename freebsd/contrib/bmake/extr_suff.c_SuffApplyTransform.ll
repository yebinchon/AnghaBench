; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffApplyTransform.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffApplyTransform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i32, i32, i32 }
%struct.TYPE_11__ = type { i8* }

@transforms = common dso_local global i32 0, align 4
@SuffGNHasNameP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SUFF = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\09applying %s -> %s to \22%s\22\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @SuffApplyTransform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SuffApplyTransform(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = call i32 @Lst_AtEnd(i32 %16, %struct.TYPE_12__* %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = call i32 @Lst_AtEnd(i32 %21, %struct.TYPE_12__* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @str_concat(i8* %30, i8* %33, i32 0)
  store i8* %34, i8** %12, align 8
  %35 = load i32, i32* @transforms, align 4
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* @SuffGNHasNameP, align 4
  %38 = call i32* @Lst_Find(i32 %35, i8* %36, i32 %37)
  store i32* %38, i32** %10, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32*, i32** %10, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %5, align 4
  br label %92

45:                                               ; preds = %4
  %46 = load i32*, i32** %10, align 8
  %47 = call i64 @Lst_Datum(i32* %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %13, align 8
  %49 = load i32, i32* @SUFF, align 4
  %50 = call i64 @DEBUG(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load i32, i32* @debug_file, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %59, i8* %62)
  br label %64

64:                                               ; preds = %52, %45
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32* @Lst_Last(i32 %67)
  store i32* %68, i32** %10, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = call i32 @Make_HandleUse(%struct.TYPE_12__* %69, %struct.TYPE_12__* %70)
  %72 = load i32*, i32** %10, align 8
  %73 = call i32* @Lst_Succ(i32* %72)
  store i32* %73, i32** %10, align 8
  br label %74

74:                                               ; preds = %83, %64
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32*, i32** %10, align 8
  %79 = call i32* @Lst_Succ(i32* %78)
  store i32* %79, i32** %11, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = call i32 @SuffExpandChildren(i32* %80, %struct.TYPE_12__* %81)
  br label %83

83:                                               ; preds = %77
  %84 = load i32*, i32** %11, align 8
  store i32* %84, i32** %10, align 8
  br label %74

85:                                               ; preds = %74
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = call i32 @Lst_AtEnd(i32 %88, %struct.TYPE_12__* %89)
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %85, %43
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @Lst_AtEnd(i32, %struct.TYPE_12__*) #1

declare dso_local i8* @str_concat(i8*, i8*, i32) #1

declare dso_local i32* @Lst_Find(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32* @Lst_Last(i32) #1

declare dso_local i32 @Make_HandleUse(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32* @Lst_Succ(i32*) #1

declare dso_local i32 @SuffExpandChildren(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
