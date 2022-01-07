; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-live.c_dump_coalesce_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-live.c_dump_coalesce_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__**, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [16 x i8] c"Coalesce List:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"] - \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"(%1d), \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Sorted Coalesce list:\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"(%d) \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" : \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_coalesce_list(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %79

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @num_var_partitions(i32 %18)
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %75, %13
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %5, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %74

34:                                               ; preds = %24
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @partition_to_var(i32 %40, i32 %41)
  %43 = load i32, i32* @TDF_SLIM, align 4
  %44 = call i32 @print_generic_expr(i32* %37, i32 %42, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %67, %34
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @partition_to_var(i32 %53, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @TDF_SLIM, align 4
  %61 = call i32 @print_generic_expr(i32* %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %50
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %5, align 8
  br label %47

71:                                               ; preds = %47
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %24
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %20

78:                                               ; preds = %20
  br label %127

79:                                               ; preds = %2
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  store %struct.TYPE_4__* %86, %struct.TYPE_4__** %5, align 8
  br label %87

87:                                               ; preds = %122, %79
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = icmp ne %struct.TYPE_4__* %88, null
  br i1 %89, label %90, label %126

90:                                               ; preds = %87
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @partition_to_var(i32 %98, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @TDF_SLIM, align 4
  %106 = call i32 @print_generic_expr(i32* %103, i32 %104, i32 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @partition_to_var(i32 %111, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32*, i32** %3, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @TDF_SLIM, align 4
  %119 = call i32 @print_generic_expr(i32* %116, i32 %117, i32 %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %122

122:                                              ; preds = %90
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  store %struct.TYPE_4__* %125, %struct.TYPE_4__** %5, align 8
  br label %87

126:                                              ; preds = %87
  br label %127

127:                                              ; preds = %126, %78
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @num_var_partitions(i32) #1

declare dso_local i32 @print_generic_expr(i32*, i32, i32) #1

declare dso_local i32 @partition_to_var(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
