; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_add_perf_probe_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_add_perf_probe_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i32 }
%struct.__event_package = type { i32, %struct.__event_package*, %struct.perf_probe_event* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_perf_probe_events(%struct.perf_probe_event* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_probe_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.__event_package*, align 8
  store %struct.perf_probe_event* %0, %struct.perf_probe_event** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 24, %17
  %19 = trunc i64 %18 to i32
  %20 = call %struct.__event_package* @zalloc(i32 %19)
  store %struct.__event_package* %20, %struct.__event_package** %15, align 8
  %21 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %22 = icmp eq %struct.__event_package* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %162

26:                                               ; preds = %5
  %27 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %28 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 (...) @init_vmlinux()
  store i32 %32, i32* %14, align 4
  br label %35

33:                                               ; preds = %26
  %34 = call i32 (...) @init_user_exec()
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %40 = call i32 @free(%struct.__event_package* %39)
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %162

42:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %81, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %84

47:                                               ; preds = %43
  %48 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %48, i64 %50
  %52 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %52, i64 %54
  %56 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %55, i32 0, i32 2
  store %struct.perf_probe_event* %51, %struct.perf_probe_event** %56, align 8
  %57 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %57, i64 %59
  %61 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %60, i32 0, i32 2
  %62 = load %struct.perf_probe_event*, %struct.perf_probe_event** %61, align 8
  %63 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %63, i64 %65
  %67 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %66, i32 0, i32 1
  %68 = load i32, i32* %9, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @convert_to_probe_trace_events(%struct.perf_probe_event* %62, %struct.__event_package** %67, i32 %68, i8* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %47
  br label %118

74:                                               ; preds = %47
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %76, i64 %78
  %80 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %79, i32 0, i32 0
  store i32 %75, i32* %80, align 8
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %43

84:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %114, %84
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %85
  %90 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %90, i64 %92
  %94 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %93, i32 0, i32 2
  %95 = load %struct.perf_probe_event*, %struct.perf_probe_event** %94, align 8
  %96 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %96, i64 %98
  %100 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %99, i32 0, i32 1
  %101 = load %struct.__event_package*, %struct.__event_package** %100, align 8
  %102 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %102, i64 %104
  %106 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @__add_probe_trace_events(%struct.perf_probe_event* %95, %struct.__event_package* %101, i32 %107, i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %89
  br label %117

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %85

117:                                              ; preds = %112, %85
  br label %118

118:                                              ; preds = %117, %73
  store i32 0, i32* %12, align 4
  br label %119

119:                                              ; preds = %155, %118
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %158

123:                                              ; preds = %119
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %144, %123
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %126, i64 %128
  %130 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %125, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %124
  %134 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %134, i64 %136
  %138 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %137, i32 0, i32 1
  %139 = load %struct.__event_package*, %struct.__event_package** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %139, i64 %141
  %143 = call i32 @clear_probe_trace_event(%struct.__event_package* %142)
  br label %144

144:                                              ; preds = %133
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %124

147:                                              ; preds = %124
  %148 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %148, i64 %150
  %152 = getelementptr inbounds %struct.__event_package, %struct.__event_package* %151, i32 0, i32 1
  %153 = load %struct.__event_package*, %struct.__event_package** %152, align 8
  %154 = call i32 @free(%struct.__event_package* %153)
  br label %155

155:                                              ; preds = %147
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %119

158:                                              ; preds = %119
  %159 = load %struct.__event_package*, %struct.__event_package** %15, align 8
  %160 = call i32 @free(%struct.__event_package* %159)
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %158, %38, %23
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local %struct.__event_package* @zalloc(i32) #1

declare dso_local i32 @init_vmlinux(...) #1

declare dso_local i32 @init_user_exec(...) #1

declare dso_local i32 @free(%struct.__event_package*) #1

declare dso_local i32 @convert_to_probe_trace_events(%struct.perf_probe_event*, %struct.__event_package**, i32, i8*) #1

declare dso_local i32 @__add_probe_trace_events(%struct.perf_probe_event*, %struct.__event_package*, i32, i32) #1

declare dso_local i32 @clear_probe_trace_event(%struct.__event_package*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
