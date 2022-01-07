; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tracer.c_find_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tracer.c_find_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__* }

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Trace seed %i [%i]\00", align 1
@EDGE_DFS_BACK = common dso_local global i32 0, align 4
@EDGE_COMPLEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c",%i [%i]\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" forward %i [%i]\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_11__**)* @find_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_trace(%struct.TYPE_11__* %0, %struct.TYPE_11__** %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* @dump_file, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i64, i64* @dump_file, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i64, i8*, ...) @fprintf(i64 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %10, %2
  br label %20

20:                                               ; preds = %58, %19
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call %struct.TYPE_10__* @find_best_predecessor(%struct.TYPE_11__* %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %6, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %7, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = call i64 @seen(%struct.TYPE_11__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EDGE_DFS_BACK, align 4
  %36 = load i32, i32* @EDGE_COMPLEX, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = call %struct.TYPE_10__* @find_best_successor(%struct.TYPE_11__* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = icmp ne %struct.TYPE_10__* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %31, %24
  br label %60

46:                                               ; preds = %40
  %47 = load i64, i64* @dump_file, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i64, i64* @dump_file, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i64, i8*, ...) @fprintf(i64 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %49, %46
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %3, align 8
  br label %20

60:                                               ; preds = %45, %20
  %61 = load i64, i64* @dump_file, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i64, i64* @dump_file, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i64, i8*, ...) @fprintf(i64 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %63, %60
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %74, i64 %77
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %78, align 8
  br label %79

79:                                               ; preds = %117, %72
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = call %struct.TYPE_10__* @find_best_successor(%struct.TYPE_11__* %80)
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %6, align 8
  %82 = icmp ne %struct.TYPE_10__* %81, null
  br i1 %82, label %83, label %124

83:                                               ; preds = %79
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %3, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = call i64 @seen(%struct.TYPE_11__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %83
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @EDGE_DFS_BACK, align 4
  %95 = load i32, i32* @EDGE_COMPLEX, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %90
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = call %struct.TYPE_10__* @find_best_predecessor(%struct.TYPE_11__* %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = icmp ne %struct.TYPE_10__* %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %90, %83
  br label %124

105:                                              ; preds = %99
  %106 = load i64, i64* @dump_file, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i64, i64* @dump_file, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i64, i8*, ...) @fprintf(i64 %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %108, %105
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %119, i64 %122
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %123, align 8
  br label %79

124:                                              ; preds = %104, %79
  %125 = load i64, i64* @dump_file, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i64, i64* @dump_file, align 8
  %129 = call i32 (i64, i8*, ...) @fprintf(i64 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @find_best_predecessor(%struct.TYPE_11__*) #1

declare dso_local i64 @seen(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @find_best_successor(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
