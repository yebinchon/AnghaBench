; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_clear_probe_trace_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_clear_probe_trace_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_event = type { i32, %struct.probe_trace_arg_ref*, %struct.TYPE_2__, %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref* }
%struct.TYPE_2__ = type { %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref* }
%struct.probe_trace_arg_ref = type { %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.probe_trace_event*)* @clear_probe_trace_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_probe_trace_event(%struct.probe_trace_event* %0) #0 {
  %2 = alloca %struct.probe_trace_event*, align 8
  %3 = alloca %struct.probe_trace_arg_ref*, align 8
  %4 = alloca %struct.probe_trace_arg_ref*, align 8
  %5 = alloca i32, align 4
  store %struct.probe_trace_event* %0, %struct.probe_trace_event** %2, align 8
  %6 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %7 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %6, i32 0, i32 4
  %8 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %7, align 8
  %9 = icmp ne %struct.probe_trace_arg_ref* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %12 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %11, i32 0, i32 4
  %13 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %14 = call i32 @free(%struct.probe_trace_arg_ref* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %17 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %16, i32 0, i32 3
  %18 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %17, align 8
  %19 = icmp ne %struct.probe_trace_arg_ref* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %22 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %21, i32 0, i32 3
  %23 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %22, align 8
  %24 = call i32 @free(%struct.probe_trace_arg_ref* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %27 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %28, align 8
  %30 = icmp ne %struct.probe_trace_arg_ref* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %33 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %34, align 8
  %36 = call i32 @free(%struct.probe_trace_arg_ref* %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %39 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %40, align 8
  %42 = icmp ne %struct.probe_trace_arg_ref* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %45 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %46, align 8
  %48 = call i32 @free(%struct.probe_trace_arg_ref* %47)
  br label %49

49:                                               ; preds = %43, %37
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %136, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %53 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %139

56:                                               ; preds = %50
  %57 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %58 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %57, i32 0, i32 1
  %59 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %59, i64 %61
  %63 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %62, i32 0, i32 4
  %64 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %63, align 8
  %65 = icmp ne %struct.probe_trace_arg_ref* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %56
  %67 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %68 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %67, i32 0, i32 1
  %69 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %69, i64 %71
  %73 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %72, i32 0, i32 4
  %74 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %73, align 8
  %75 = call i32 @free(%struct.probe_trace_arg_ref* %74)
  br label %76

76:                                               ; preds = %66, %56
  %77 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %78 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %77, i32 0, i32 1
  %79 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %79, i64 %81
  %83 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %82, i32 0, i32 3
  %84 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %83, align 8
  %85 = icmp ne %struct.probe_trace_arg_ref* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %76
  %87 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %88 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %87, i32 0, i32 1
  %89 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %89, i64 %91
  %93 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %92, i32 0, i32 3
  %94 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %93, align 8
  %95 = call i32 @free(%struct.probe_trace_arg_ref* %94)
  br label %96

96:                                               ; preds = %86, %76
  %97 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %98 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %97, i32 0, i32 1
  %99 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %99, i64 %101
  %103 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %102, i32 0, i32 2
  %104 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %103, align 8
  %105 = icmp ne %struct.probe_trace_arg_ref* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %96
  %107 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %108 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %107, i32 0, i32 1
  %109 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %109, i64 %111
  %113 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %112, i32 0, i32 2
  %114 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %113, align 8
  %115 = call i32 @free(%struct.probe_trace_arg_ref* %114)
  br label %116

116:                                              ; preds = %106, %96
  %117 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %118 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %117, i32 0, i32 1
  %119 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %119, i64 %121
  %123 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %122, i32 0, i32 1
  %124 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %123, align 8
  store %struct.probe_trace_arg_ref* %124, %struct.probe_trace_arg_ref** %3, align 8
  br label %125

125:                                              ; preds = %128, %116
  %126 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %3, align 8
  %127 = icmp ne %struct.probe_trace_arg_ref* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %3, align 8
  %130 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %129, i32 0, i32 0
  %131 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %130, align 8
  store %struct.probe_trace_arg_ref* %131, %struct.probe_trace_arg_ref** %4, align 8
  %132 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %3, align 8
  %133 = call i32 @free(%struct.probe_trace_arg_ref* %132)
  %134 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %4, align 8
  store %struct.probe_trace_arg_ref* %134, %struct.probe_trace_arg_ref** %3, align 8
  br label %125

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %50

139:                                              ; preds = %50
  %140 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %141 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %140, i32 0, i32 1
  %142 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %141, align 8
  %143 = icmp ne %struct.probe_trace_arg_ref* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %146 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %145, i32 0, i32 1
  %147 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %146, align 8
  %148 = call i32 @free(%struct.probe_trace_arg_ref* %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %151 = call i32 @memset(%struct.probe_trace_event* %150, i32 0, i32 48)
  ret void
}

declare dso_local i32 @free(%struct.probe_trace_arg_ref*) #1

declare dso_local i32 @memset(%struct.probe_trace_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
