; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_verbose.c_print_conflicts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_verbose.c_print_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.TYPE_3__* }

@parser = common dso_local global %struct.TYPE_3__** null, align 8
@SHIFT = common dso_local global i32 0, align 4
@REDUCE = common dso_local global i32 0, align 4
@final_state = common dso_local global i32 0, align 4
@verbose_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%d: shift/reduce conflict (accept, reduce %d) on $end\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%d: shift/reduce conflict (shift %d, reduce %d) on %s\0A\00", align 1
@symbol_name = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"%d: reduce/reduce conflict (reduce %d, reduce %d) on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_conflicts(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %3, align 4
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @parser, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %7, i64 %9
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %6, align 8
  br label %12

12:                                               ; preds = %101, %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %105

15:                                               ; preds = %12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %101

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %5, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SHIFT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @SHIFT, align 4
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %27
  %42 = load i32, i32* @REDUCE, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %100

44:                                               ; preds = %21
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %99

49:                                               ; preds = %44
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @final_state, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* @verbose_file, align 4
  %58 = load i32, i32* %2, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 2
  %63 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %62)
  br label %98

64:                                               ; preds = %53, %49
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @SHIFT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i32, i32* @verbose_file, align 4
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 2
  %76 = load i8**, i8*** @symbol_name, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71, i32 %75, i8* %80)
  br label %97

82:                                               ; preds = %64
  %83 = load i32, i32* @verbose_file, align 4
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* %5, align 4
  %86 = sub nsw i32 %85, 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 2
  %91 = load i8**, i8*** @symbol_name, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %86, i32 %90, i8* %95)
  br label %97

97:                                               ; preds = %82, %68
  br label %98

98:                                               ; preds = %97, %56
  br label %99

99:                                               ; preds = %98, %44
  br label %100

100:                                              ; preds = %99, %43
  br label %101

101:                                              ; preds = %100, %20
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  store %struct.TYPE_3__* %104, %struct.TYPE_3__** %6, align 8
  br label %12

105:                                              ; preds = %12
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
