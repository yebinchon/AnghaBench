; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_synthesize_probe_trace_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_synthesize_probe_trace_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_arg = type { i8*, i8*, i8*, %struct.probe_trace_arg_ref* }
%struct.probe_trace_arg_ref = type { i32, %struct.probe_trace_arg_ref* }

@.str = private unnamed_addr constant [5 x i8] c" %s=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%+ld\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_trace_arg*, i8*, i64)* @synthesize_probe_trace_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthesize_probe_trace_arg(%struct.probe_trace_arg* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.probe_trace_arg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.probe_trace_arg_ref*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.probe_trace_arg* %0, %struct.probe_trace_arg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %5, align 8
  %13 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %12, i32 0, i32 3
  %14 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %13, align 8
  store %struct.probe_trace_arg_ref* %14, %struct.probe_trace_arg_ref** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %11, align 8
  %16 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %5, align 8
  %17 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %5, align 8
  %24 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, i64, i8*, ...) @e_snprintf(i8* %21, i64 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %9, align 4
  br label %31

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 (i8*, i64, i8*, ...) @e_snprintf(i8* %28, i64 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %167

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %7, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %5, align 8
  %46 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 64
  br i1 %51, label %52, label %61

52:                                               ; preds = %36
  %53 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %5, align 8
  %54 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %53, i32 0, i32 3
  %55 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %54, align 8
  %56 = icmp ne %struct.probe_trace_arg_ref* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %8, align 8
  %59 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %58, i32 0, i32 1
  %60 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %59, align 8
  store %struct.probe_trace_arg_ref* %60, %struct.probe_trace_arg_ref** %8, align 8
  br label %61

61:                                               ; preds = %57, %52, %36
  %62 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %8, align 8
  %63 = icmp ne %struct.probe_trace_arg_ref* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %8, align 8
  %66 = call i32 @__synthesize_probe_trace_arg_ref(%struct.probe_trace_arg_ref* %65, i8** %6, i64* %7, i32 1)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %167

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %61
  %73 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %5, align 8
  %74 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 64
  br i1 %79, label %80, label %97

80:                                               ; preds = %72
  %81 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %5, align 8
  %82 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %81, i32 0, i32 3
  %83 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %82, align 8
  %84 = icmp ne %struct.probe_trace_arg_ref* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %5, align 8
  %89 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %5, align 8
  %92 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %91, i32 0, i32 3
  %93 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %92, align 8
  %94 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, i64, i8*, ...) @e_snprintf(i8* %86, i64 %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %90, i32 %95)
  store i32 %96, i32* %9, align 4
  br label %104

97:                                               ; preds = %80, %72
  %98 = load i8*, i8** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %5, align 8
  %101 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, i64, i8*, ...) @e_snprintf(i8* %98, i64 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %97, %85
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %4, align 4
  br label %167

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = load i8*, i8** %6, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %7, align 8
  %117 = sub i64 %116, %115
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %130, %109
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %10, align 4
  %121 = icmp ne i32 %119, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %118
  %123 = load i8*, i8** %6, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 (i8*, i64, i8*, ...) @e_snprintf(i8* %123, i64 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %167

130:                                              ; preds = %122
  %131 = load i32, i32* %9, align 4
  %132 = load i8*, i8** %6, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %7, align 8
  %138 = sub i64 %137, %136
  store i64 %138, i64* %7, align 8
  br label %118

139:                                              ; preds = %118
  %140 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %5, align 8
  %141 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %160

144:                                              ; preds = %139
  %145 = load i8*, i8** %6, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %5, align 8
  %148 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, i64, i8*, ...) @e_snprintf(i8* %145, i64 %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp sle i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %4, align 4
  br label %167

155:                                              ; preds = %144
  %156 = load i32, i32* %9, align 4
  %157 = load i8*, i8** %6, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8* %159, i8** %6, align 8
  br label %160

160:                                              ; preds = %155, %139
  %161 = load i8*, i8** %6, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %160, %153, %128, %107, %69, %34
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @e_snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @__synthesize_probe_trace_arg_ref(%struct.probe_trace_arg_ref*, i8**, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
