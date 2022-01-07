; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hist_entry__period_snprintf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hist_entry__period_snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }
%struct.TYPE_4__ = type { i32 (%struct.perf_hpp*, %struct.hist_entry*)*, i32 (%struct.perf_hpp*, %struct.hist_entry*)*, i32 }
%struct.perf_hpp = type { i8*, i32 }
%struct.hist_entry = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PERF_HPP__MAX_INDEX = common dso_local global i32 0, align 4
@perf_hpp__format = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hist_entry__period_snprintf(%struct.perf_hpp* %0, %struct.hist_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_hpp*, align 8
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.perf_hpp* %0, %struct.perf_hpp** %5, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 0), align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %15 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  store i32 1, i32* %12, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 1), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %21 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %110

25:                                               ; preds = %19, %3
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %98, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @PERF_HPP__MAX_INDEX, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %101

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @perf_hpp__format, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %98

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %47 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %50 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %56

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi i8* [ %52, %54 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %55 ]
  %58 = call i32 @scnprintf(i8* %48, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @advance_hpp(%struct.perf_hpp* %59, i32 %60)
  br label %63

62:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @perf_hpp__format, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.perf_hpp*, %struct.hist_entry*)*, i32 (%struct.perf_hpp*, %struct.hist_entry*)** %71, align 8
  %73 = icmp ne i32 (%struct.perf_hpp*, %struct.hist_entry*)* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @perf_hpp__format, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (%struct.perf_hpp*, %struct.hist_entry*)*, i32 (%struct.perf_hpp*, %struct.hist_entry*)** %79, align 8
  %81 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %82 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %83 = call i32 %80(%struct.perf_hpp* %81, %struct.hist_entry* %82)
  store i32 %83, i32* %11, align 4
  br label %94

84:                                               ; preds = %66, %63
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @perf_hpp__format, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32 (%struct.perf_hpp*, %struct.hist_entry*)*, i32 (%struct.perf_hpp*, %struct.hist_entry*)** %89, align 8
  %91 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %92 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %93 = call i32 %90(%struct.perf_hpp* %91, %struct.hist_entry* %92)
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %84, %74
  %95 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @advance_hpp(%struct.perf_hpp* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %38
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %26

101:                                              ; preds = %26
  %102 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %103 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %101, %24
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @advance_hpp(%struct.perf_hpp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
