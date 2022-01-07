; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_cpumap.c_cpu_map__read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_cpumap.c_cpu_map__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_map = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@MAX_NR_CPUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpu_map* @cpu_map__read(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.cpu_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store %struct.cpu_map* null, %struct.cpu_map** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i8 0, i8* %11, align 1
  store i32 -1, i32* %10, align 4
  br label %13

13:                                               ; preds = %105, %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @fscanf(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %9, i8* %11)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %106

19:                                               ; preds = %13
  %20 = load i32, i32* %10, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %22
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @MAX_NR_CPUS, align 4
  %35 = sdiv i32 %34, 2
  %36 = add nsw i32 %33, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32* @realloc(i32* %37, i32 %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %116

46:                                               ; preds = %32
  %47 = load i32*, i32** %6, align 8
  store i32* %47, i32** %5, align 8
  br label %48

48:                                               ; preds = %46, %22
  br label %49

49:                                               ; preds = %54, %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %55, i32* %60, align 4
  br label %49

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %19
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i32, i32* @MAX_NR_CPUS, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i32* @realloc(i32* %70, i32 %74)
  store i32* %75, i32** %6, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %116

79:                                               ; preds = %66
  %80 = load i32*, i32** %6, align 8
  store i32* %80, i32** %5, align 8
  br label %81

81:                                               ; preds = %79, %62
  %82 = load i32, i32* %9, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load i8, i8* %11, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 45
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %10, align 4
  br label %97

96:                                               ; preds = %90, %81
  store i32 -1, i32* %10, align 4
  br label %97

97:                                               ; preds = %96, %94
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i8, i8* %11, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 10
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %97
  br label %106

105:                                              ; preds = %100
  br label %13

106:                                              ; preds = %104, %18
  %107 = load i32, i32* %4, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %4, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = call %struct.cpu_map* @cpu_map__trim_new(i32 %110, i32* %111)
  store %struct.cpu_map* %112, %struct.cpu_map** %3, align 8
  br label %115

113:                                              ; preds = %106
  %114 = call %struct.cpu_map* (...) @cpu_map__default_new()
  store %struct.cpu_map* %114, %struct.cpu_map** %3, align 8
  br label %115

115:                                              ; preds = %113, %109
  br label %116

116:                                              ; preds = %115, %78, %45
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @free(i32* %117)
  %119 = load %struct.cpu_map*, %struct.cpu_map** %3, align 8
  ret %struct.cpu_map* %119
}

declare dso_local i32 @fscanf(i32*, i8*, i32*, i8*) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local %struct.cpu_map* @cpu_map__trim_new(i32, i32*) #1

declare dso_local %struct.cpu_map* @cpu_map__default_new(...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
