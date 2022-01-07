; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_add_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_add_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@ntab = common dso_local global %struct.TYPE_5__** null, align 8
@.str = private unnamed_addr constant [45 x i8] c"No interactive rename table, links may fail\0A\00", align 1
@N_TAB_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot update rename table\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Interactive rename table out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_name(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @ntab, align 8
  %11 = icmp eq %struct.TYPE_5__** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %106

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @N_TAB_SZ, align 4
  %18 = call i64 @st_hash(i8* %15, i32 %16, i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @ntab, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %19, i64 %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %8, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %67

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %37, %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i64 @strcmp(i8* %29, %struct.TYPE_5__* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %28, %25
  %36 = phi i1 [ false, %25 ], [ %34, %28 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %8, align 8
  br label %25

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i64 @strcmp(i8* %45, %struct.TYPE_5__* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %106

52:                                               ; preds = %44
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 @free(%struct.TYPE_5__* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @strdup(i8* %57)
  %59 = bitcast i8* %58 to %struct.TYPE_5__*
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %61, align 8
  %62 = icmp eq %struct.TYPE_5__* %59, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %106

65:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %106

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66, %14
  %68 = call i64 @malloc(i32 24)
  %69 = inttoptr i64 %68 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %8, align 8
  %70 = icmp ne %struct.TYPE_5__* %69, null
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = call i8* @strdup(i8* %72)
  %74 = bitcast i8* %73 to %struct.TYPE_5__*
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %76, align 8
  %77 = icmp ne %struct.TYPE_5__* %74, null
  br i1 %77, label %78, label %101

78:                                               ; preds = %71
  %79 = load i8*, i8** %7, align 8
  %80 = call i8* @strdup(i8* %79)
  %81 = bitcast i8* %80 to %struct.TYPE_5__*
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %83, align 8
  %84 = icmp ne %struct.TYPE_5__* %81, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @ntab, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %86, i64 %87
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @ntab, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %93, i64 %94
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %95, align 8
  store i32 0, i32* %4, align 4
  br label %106

96:                                               ; preds = %78
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = call i32 @free(%struct.TYPE_5__* %99)
  br label %101

101:                                              ; preds = %96, %71
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = call i32 @free(%struct.TYPE_5__* %102)
  br label %104

104:                                              ; preds = %101, %67
  %105 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %85, %65, %63, %51, %12
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i64 @st_hash(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
