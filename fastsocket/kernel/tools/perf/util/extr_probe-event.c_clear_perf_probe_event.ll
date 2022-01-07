; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_clear_perf_probe_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_clear_perf_probe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i32, %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field*, %struct.perf_probe_point }
%struct.perf_probe_arg_field = type { %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field* }
%struct.perf_probe_point = type { %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_perf_probe_event(%struct.perf_probe_event* %0) #0 {
  %2 = alloca %struct.perf_probe_event*, align 8
  %3 = alloca %struct.perf_probe_point*, align 8
  %4 = alloca %struct.perf_probe_arg_field*, align 8
  %5 = alloca %struct.perf_probe_arg_field*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_probe_event* %0, %struct.perf_probe_event** %2, align 8
  %7 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %8 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %7, i32 0, i32 4
  store %struct.perf_probe_point* %8, %struct.perf_probe_point** %3, align 8
  %9 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %10 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %9, i32 0, i32 3
  %11 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %10, align 8
  %12 = icmp ne %struct.perf_probe_arg_field* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %15 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %14, i32 0, i32 3
  %16 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %15, align 8
  %17 = call i32 @free(%struct.perf_probe_arg_field* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %20 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %19, i32 0, i32 2
  %21 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %20, align 8
  %22 = icmp ne %struct.perf_probe_arg_field* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %25 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %24, i32 0, i32 2
  %26 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %25, align 8
  %27 = call i32 @free(%struct.perf_probe_arg_field* %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %30 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %29, i32 0, i32 2
  %31 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %30, align 8
  %32 = icmp ne %struct.perf_probe_arg_field* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %35 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %34, i32 0, i32 2
  %36 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %35, align 8
  %37 = call i32 @free(%struct.perf_probe_arg_field* %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %40 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %39, i32 0, i32 1
  %41 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %40, align 8
  %42 = icmp ne %struct.perf_probe_arg_field* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %45 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %44, i32 0, i32 1
  %46 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %45, align 8
  %47 = call i32 @free(%struct.perf_probe_arg_field* %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %50 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %49, i32 0, i32 0
  %51 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %50, align 8
  %52 = icmp ne %struct.perf_probe_arg_field* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %55 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %54, i32 0, i32 0
  %56 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %55, align 8
  %57 = call i32 @free(%struct.perf_probe_arg_field* %56)
  br label %58

58:                                               ; preds = %53, %48
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %155, %58
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %62 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %158

65:                                               ; preds = %59
  %66 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %67 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %66, i32 0, i32 1
  %68 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %68, i64 %70
  %72 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %71, i32 0, i32 0
  %73 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %72, align 8
  %74 = icmp ne %struct.perf_probe_arg_field* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %65
  %76 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %77 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %76, i32 0, i32 1
  %78 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %78, i64 %80
  %82 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %81, i32 0, i32 0
  %83 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %82, align 8
  %84 = call i32 @free(%struct.perf_probe_arg_field* %83)
  br label %85

85:                                               ; preds = %75, %65
  %86 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %87 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %86, i32 0, i32 1
  %88 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %88, i64 %90
  %92 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %91, i32 0, i32 4
  %93 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %92, align 8
  %94 = icmp ne %struct.perf_probe_arg_field* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %85
  %96 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %97 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %96, i32 0, i32 1
  %98 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %98, i64 %100
  %102 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %101, i32 0, i32 4
  %103 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %102, align 8
  %104 = call i32 @free(%struct.perf_probe_arg_field* %103)
  br label %105

105:                                              ; preds = %95, %85
  %106 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %107 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %106, i32 0, i32 1
  %108 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %108, i64 %110
  %112 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %111, i32 0, i32 3
  %113 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %112, align 8
  %114 = icmp ne %struct.perf_probe_arg_field* %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %105
  %116 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %117 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %116, i32 0, i32 1
  %118 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %118, i64 %120
  %122 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %121, i32 0, i32 3
  %123 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %122, align 8
  %124 = call i32 @free(%struct.perf_probe_arg_field* %123)
  br label %125

125:                                              ; preds = %115, %105
  %126 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %127 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %126, i32 0, i32 1
  %128 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %128, i64 %130
  %132 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %131, i32 0, i32 2
  %133 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %132, align 8
  store %struct.perf_probe_arg_field* %133, %struct.perf_probe_arg_field** %4, align 8
  br label %134

134:                                              ; preds = %150, %125
  %135 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %4, align 8
  %136 = icmp ne %struct.perf_probe_arg_field* %135, null
  br i1 %136, label %137, label %154

137:                                              ; preds = %134
  %138 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %4, align 8
  %139 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %138, i32 0, i32 1
  %140 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %139, align 8
  store %struct.perf_probe_arg_field* %140, %struct.perf_probe_arg_field** %5, align 8
  %141 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %4, align 8
  %142 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %141, i32 0, i32 0
  %143 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %142, align 8
  %144 = icmp ne %struct.perf_probe_arg_field* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %4, align 8
  %147 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %146, i32 0, i32 0
  %148 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %147, align 8
  %149 = call i32 @free(%struct.perf_probe_arg_field* %148)
  br label %150

150:                                              ; preds = %145, %137
  %151 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %4, align 8
  %152 = call i32 @free(%struct.perf_probe_arg_field* %151)
  %153 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %5, align 8
  store %struct.perf_probe_arg_field* %153, %struct.perf_probe_arg_field** %4, align 8
  br label %134

154:                                              ; preds = %134
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %59

158:                                              ; preds = %59
  %159 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %160 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %159, i32 0, i32 1
  %161 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %160, align 8
  %162 = icmp ne %struct.perf_probe_arg_field* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %165 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %164, i32 0, i32 1
  %166 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %165, align 8
  %167 = call i32 @free(%struct.perf_probe_arg_field* %166)
  br label %168

168:                                              ; preds = %163, %158
  %169 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %170 = call i32 @memset(%struct.perf_probe_event* %169, i32 0, i32 56)
  ret void
}

declare dso_local i32 @free(%struct.perf_probe_arg_field*) #1

declare dso_local i32 @memset(%struct.perf_probe_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
