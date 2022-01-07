; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_insert_empty_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_insert_empty_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_6__* }

@cache = common dso_local global i32 0, align 4
@cache_size = common dso_local global i64 0, align 8
@CACHE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"$$%d\00", align 1
@gensym = common dso_local global i32 0, align 4
@last_symbol = common dso_local global %struct.TYPE_6__* null, align 8
@plhs = common dso_local global %struct.TYPE_6__** null, align 8
@nrules = common dso_local global i64 0, align 8
@ACTION = common dso_local global i32 0, align 4
@nitems = common dso_local global i64 0, align 8
@maxitems = common dso_local global i64 0, align 8
@pitem = common dso_local global %struct.TYPE_6__** null, align 8
@maxrules = common dso_local global i64 0, align 8
@rprec = common dso_local global i64* null, align 8
@rassoc = common dso_local global i32* null, align 8
@TOKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @insert_empty_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_empty_rule() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__**, align 8
  %3 = load i32, i32* @cache, align 4
  %4 = call i32 @assert(i32 %3)
  %5 = load i64, i64* @cache_size, align 8
  %6 = load i64, i64* @CACHE_SIZE, align 8
  %7 = icmp sge i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* @cache, align 4
  %11 = load i32, i32* @gensym, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @gensym, align 4
  %13 = call i32 @sprintf(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @cache, align 4
  %15 = call %struct.TYPE_6__* @make_bucket(i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %1, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @last_symbol, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** @last_symbol, align 8
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @plhs, align 8
  %21 = load i64, i64* @nrules, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %21
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @ACTION, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* @nitems, align 8
  %32 = add nsw i64 %31, 2
  store i64 %32, i64* @nitems, align 8
  %33 = load i64, i64* @nitems, align 8
  %34 = load i64, i64* @maxitems, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %0
  %37 = call i32 (...) @expand_items()
  br label %38

38:                                               ; preds = %36, %0
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @pitem, align 8
  %40 = load i64, i64* @nitems, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 -1
  store %struct.TYPE_6__** %42, %struct.TYPE_6__*** %2, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %44, i32 -1
  store %struct.TYPE_6__** %45, %struct.TYPE_6__*** %2, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %44, align 8
  br label %46

46:                                               ; preds = %53, %38
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 -1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 0
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %51, align 8
  %52 = icmp ne %struct.TYPE_6__* %49, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %54, i32 -1
  store %struct.TYPE_6__** %55, %struct.TYPE_6__*** %2, align 8
  br label %46

56:                                               ; preds = %46
  %57 = load i64, i64* @nrules, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* @nrules, align 8
  %59 = load i64, i64* @maxrules, align 8
  %60 = icmp uge i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (...) @expand_rules()
  br label %63

63:                                               ; preds = %61, %56
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @plhs, align 8
  %65 = load i64, i64* @nrules, align 8
  %66 = sub i64 %65, 1
  %67 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %64, i64 %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @plhs, align 8
  %70 = load i64, i64* @nrules, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %69, i64 %70
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @plhs, align 8
  %74 = load i64, i64* @nrules, align 8
  %75 = sub i64 %74, 1
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 %75
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %76, align 8
  %77 = load i64*, i64** @rprec, align 8
  %78 = load i64, i64* @nrules, align 8
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** @rprec, align 8
  %83 = load i64, i64* @nrules, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 %81, i64* %84, align 8
  %85 = load i64*, i64** @rprec, align 8
  %86 = load i64, i64* @nrules, align 8
  %87 = sub i64 %86, 1
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 0, i64* %88, align 8
  %89 = load i32*, i32** @rassoc, align 8
  %90 = load i64, i64* @nrules, align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** @rassoc, align 8
  %95 = load i64, i64* @nrules, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @TOKEN, align 4
  %98 = load i32*, i32** @rassoc, align 8
  %99 = load i64, i64* @nrules, align 8
  %100 = sub i64 %99, 1
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @make_bucket(i32) #1

declare dso_local i32 @expand_items(...) #1

declare dso_local i32 @expand_rules(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
