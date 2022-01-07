; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_Suff_AddSuffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_Suff_AddSuffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__*, i32**, i64, i64, i8*, i8*, i8*, i8*, i32, i32 }

@sufflist = common dso_local global i32 0, align 4
@SuffSuffHasNameP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@sNum = common dso_local global i32 0, align 4
@SuffScanTargets = common dso_local global i32 0, align 4
@transforms = common dso_local global i32 0, align 4
@SuffRebuildGraph = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Suff_AddSuffix(i8* %0, i32** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %3, align 8
  store i32** %1, i32*** %4, align 8
  %8 = load i32, i32* @sufflist, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @SuffSuffHasNameP, align 4
  %11 = call i32* @Lst_Find(i32 %8, i8* %9, i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %67

14:                                               ; preds = %2
  %15 = call %struct.TYPE_6__* @bmake_malloc(i32 80)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @bmake_strdup(i8* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strlen(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i8* @Lst_Init(i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 9
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i8* @Lst_Init(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 8
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i8* @Lst_Init(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i8* @Lst_Init(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @sNum, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @sNum, align 4
  %44 = sext i32 %42 to i64
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @sufflist, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = call i32 @Lst_AtEnd(i32 %51, %struct.TYPE_6__* %52)
  %54 = load i32**, i32*** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32** %54, i32*** %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %57, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = call i32 (...) @Targ_List()
  %61 = load i32, i32* @SuffScanTargets, align 4
  %62 = call i32 @Lst_ForEach(i32 %60, i32 %61, %struct.TYPE_6__* %7)
  %63 = load i32, i32* @transforms, align 4
  %64 = load i32, i32* @SuffRebuildGraph, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = call i32 @Lst_ForEach(i32 %63, i32 %64, %struct.TYPE_6__* %65)
  br label %67

67:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32* @Lst_Find(i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @bmake_malloc(i32) #1

declare dso_local i32 @bmake_strdup(i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @Lst_Init(i32) #1

declare dso_local i32 @Lst_AtEnd(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @Lst_ForEach(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @Targ_List(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
