; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_dump_graph.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_dump_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.edge*, %struct.edge* }
%struct.edge = type { i32, i32, %struct.edge*, %struct.edge* }

@.str = private unnamed_addr constant [11 x i8] c"%d (%d)\09<-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\09->\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_graph(i32* %0, %struct.graph* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.graph*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.edge*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.graph* %1, %struct.graph** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %96, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.graph*, %struct.graph** %4, align 8
  %10 = getelementptr inbounds %struct.graph, %struct.graph* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %99

13:                                               ; preds = %7
  %14 = load %struct.graph*, %struct.graph** %4, align 8
  %15 = getelementptr inbounds %struct.graph, %struct.graph* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load %struct.edge*, %struct.edge** %20, align 8
  %22 = icmp ne %struct.edge* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %13
  %24 = load %struct.graph*, %struct.graph** %4, align 8
  %25 = getelementptr inbounds %struct.graph, %struct.graph* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.edge*, %struct.edge** %30, align 8
  %32 = icmp ne %struct.edge* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %96

34:                                               ; preds = %23, %13
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.graph*, %struct.graph** %4, align 8
  %38 = getelementptr inbounds %struct.graph, %struct.graph* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %44)
  %46 = load %struct.graph*, %struct.graph** %4, align 8
  %47 = getelementptr inbounds %struct.graph, %struct.graph* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load %struct.edge*, %struct.edge** %52, align 8
  store %struct.edge* %53, %struct.edge** %6, align 8
  br label %54

54:                                               ; preds = %63, %34
  %55 = load %struct.edge*, %struct.edge** %6, align 8
  %56 = icmp ne %struct.edge* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.edge*, %struct.edge** %6, align 8
  %60 = getelementptr inbounds %struct.edge, %struct.edge* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57
  %64 = load %struct.edge*, %struct.edge** %6, align 8
  %65 = getelementptr inbounds %struct.edge, %struct.edge* %64, i32 0, i32 3
  %66 = load %struct.edge*, %struct.edge** %65, align 8
  store %struct.edge* %66, %struct.edge** %6, align 8
  br label %54

67:                                               ; preds = %54
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.graph*, %struct.graph** %4, align 8
  %73 = getelementptr inbounds %struct.graph, %struct.graph* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load %struct.edge*, %struct.edge** %78, align 8
  store %struct.edge* %79, %struct.edge** %6, align 8
  br label %80

80:                                               ; preds = %89, %67
  %81 = load %struct.edge*, %struct.edge** %6, align 8
  %82 = icmp ne %struct.edge* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32*, i32** %3, align 8
  %85 = load %struct.edge*, %struct.edge** %6, align 8
  %86 = getelementptr inbounds %struct.edge, %struct.edge* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83
  %90 = load %struct.edge*, %struct.edge** %6, align 8
  %91 = getelementptr inbounds %struct.edge, %struct.edge* %90, i32 0, i32 2
  %92 = load %struct.edge*, %struct.edge** %91, align 8
  store %struct.edge* %92, %struct.edge** %6, align 8
  br label %80

93:                                               ; preds = %80
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %33
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %7

99:                                               ; preds = %7
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
