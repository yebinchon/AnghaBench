; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_synthesize_perf_probe_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_synthesize_perf_probe_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_arg = type { i8*, i8*, i8*, %struct.perf_probe_arg_field* }
%struct.perf_probe_arg_field = type { i8*, %struct.perf_probe_arg_field*, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Failed to synthesize perf probe argument: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @synthesize_perf_probe_arg(%struct.perf_probe_arg* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_probe_arg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.perf_probe_arg_field*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.perf_probe_arg* %0, %struct.perf_probe_arg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %12 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %11, i32 0, i32 3
  %13 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %12, align 8
  store %struct.perf_probe_arg_field* %13, %struct.perf_probe_arg_field** %8, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %10, align 8
  %15 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %16 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %21 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %28 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %31 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, i64, i8*, i8*, ...) @e_snprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %32)
  store i32 %33, i32* %9, align 4
  br label %52

34:                                               ; preds = %19, %3
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %38 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %43 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  br label %49

45:                                               ; preds = %34
  %46 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %47 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i8* [ %44, %41 ], [ %48, %45 ]
  %51 = call i32 (i8*, i64, i8*, i8*, ...) @e_snprintf(i8* %35, i64 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %24
  %53 = load i32, i32* %9, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %143

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %10, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %100, %56
  %66 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %8, align 8
  %67 = icmp ne %struct.perf_probe_arg_field* %66, null
  br i1 %67, label %68, label %112

68:                                               ; preds = %65
  %69 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %8, align 8
  %70 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 91
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load i8*, i8** %10, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %8, align 8
  %80 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, i64, i8*, i8*, ...) @e_snprintf(i8* %77, i64 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  store i32 %82, i32* %9, align 4
  br label %96

83:                                               ; preds = %68
  %84 = load i8*, i8** %10, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %8, align 8
  %87 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %92 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %8, align 8
  %93 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, i64, i8*, i8*, ...) @e_snprintf(i8* %84, i64 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %91, i8* %94)
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %83, %76
  %97 = load i32, i32* %9, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %143

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %10, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %7, align 8
  %108 = sub i64 %107, %106
  store i64 %108, i64* %7, align 8
  %109 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %8, align 8
  %110 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %109, i32 0, i32 1
  %111 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %110, align 8
  store %struct.perf_probe_arg_field* %111, %struct.perf_probe_arg_field** %8, align 8
  br label %65

112:                                              ; preds = %65
  %113 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %114 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %136

117:                                              ; preds = %112
  %118 = load i8*, i8** %10, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %121 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, i64, i8*, i8*, ...) @e_snprintf(i8* %118, i64 %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %143

127:                                              ; preds = %117
  %128 = load i32, i32* %9, align 4
  %129 = load i8*, i8** %10, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %10, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %7, align 8
  %135 = sub i64 %134, %133
  store i64 %135, i64* %7, align 8
  br label %136

136:                                              ; preds = %127, %112
  %137 = load i8*, i8** %10, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = ptrtoint i8* %137 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %4, align 4
  br label %149

143:                                              ; preds = %126, %99, %55
  %144 = load i32, i32* %9, align 4
  %145 = sub nsw i32 0, %144
  %146 = call i32 @strerror(i32 %145)
  %147 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %143, %136
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @e_snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
