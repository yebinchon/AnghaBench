; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_map.c_map__fprintf_dsoname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_map.c_map__fprintf_dsoname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.map = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"[unknown]\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @map__fprintf_dsoname(%struct.map* %0, i32* %1) #0 {
  %3 = alloca %struct.map*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store %struct.map* %0, %struct.map** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load %struct.map*, %struct.map** %3, align 8
  %7 = icmp ne %struct.map* %6, null
  br i1 %7, label %8, label %58

8:                                                ; preds = %2
  %9 = load %struct.map*, %struct.map** %3, align 8
  %10 = getelementptr inbounds %struct.map, %struct.map* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %58

13:                                               ; preds = %8
  %14 = load %struct.map*, %struct.map** %3, align 8
  %15 = getelementptr inbounds %struct.map, %struct.map* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.map*, %struct.map** %3, align 8
  %22 = getelementptr inbounds %struct.map, %struct.map* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %58

27:                                               ; preds = %20, %13
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.map*, %struct.map** %3, align 8
  %32 = getelementptr inbounds %struct.map, %struct.map* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.map*, %struct.map** %3, align 8
  %39 = getelementptr inbounds %struct.map, %struct.map* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %5, align 8
  br label %57

43:                                               ; preds = %30, %27
  %44 = load %struct.map*, %struct.map** %3, align 8
  %45 = getelementptr inbounds %struct.map, %struct.map* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.map*, %struct.map** %3, align 8
  %52 = getelementptr inbounds %struct.map, %struct.map* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %50, %43
  br label %57

57:                                               ; preds = %56, %37
  br label %58

58:                                               ; preds = %57, %20, %8, %2
  %59 = load i32*, i32** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @fprintf(i32* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  ret i64 %61
}

declare dso_local i64 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
