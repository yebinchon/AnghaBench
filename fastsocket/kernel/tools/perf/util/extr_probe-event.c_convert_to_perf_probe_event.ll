; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_convert_to_perf_probe_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_convert_to_perf_probe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_event = type { i8*, i8*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.perf_probe_event = type { i32, %struct.TYPE_3__*, i32, i32*, i32* }
%struct.TYPE_3__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_trace_event*, %struct.perf_probe_event*, i32)* @convert_to_perf_probe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_perf_probe_event(%struct.probe_trace_event* %0, %struct.perf_probe_event* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.probe_trace_event*, align 8
  %6 = alloca %struct.perf_probe_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.probe_trace_event* %0, %struct.probe_trace_event** %5, align 8
  store %struct.perf_probe_event* %1, %struct.perf_probe_event** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast [64 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 64, i1 false)
  %12 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %13 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @strdup(i8* %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %18 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  %19 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %20 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @strdup(i8* %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %25 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %27 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %32 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %3
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %167

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %43 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %42, i32 0, i32 4
  %44 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %45 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %44, i32 0, i32 2
  %46 = call i32 @kprobe_convert_to_perf_probe(i32* %43, i32* %45)
  store i32 %46, i32* %10, align 4
  br label %53

47:                                               ; preds = %38
  %48 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %49 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %48, i32 0, i32 4
  %50 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %51 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %50, i32 0, i32 2
  %52 = call i32 @convert_to_perf_probe_point(i32* %49, i32* %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %47, %41
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %167

58:                                               ; preds = %53
  %59 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %60 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %63 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %65 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = call %struct.TYPE_3__* @zalloc(i32 %69)
  %71 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %72 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %71, i32 0, i32 1
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** %72, align 8
  %73 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %74 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = icmp eq %struct.TYPE_3__* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %58
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %167

80:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %156, %80
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %84 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = icmp sge i32 %88, 0
  br label %90

90:                                               ; preds = %87, %81
  %91 = phi i1 [ false, %81 ], [ %89, %87 ]
  br i1 %91, label %92, label %159

92:                                               ; preds = %90
  %93 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %94 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %120

102:                                              ; preds = %92
  %103 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %104 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* @strdup(i8* %110)
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %114 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i32* %112, i32** %119, align 8
  br label %139

120:                                              ; preds = %92
  %121 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %122 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %121, i32 0, i32 3
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %128 = call i32 @synthesize_probe_trace_arg(%struct.TYPE_4__* %126, i8* %127, i32 64)
  store i32 %128, i32* %10, align 4
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %130 = call i8* @strdup(i8* %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %133 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %132, i32 0, i32 1
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store i32* %131, i32** %138, align 8
  br label %139

139:                                              ; preds = %120, %102
  %140 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %141 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %140, i32 0, i32 1
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %139
  %150 = load i32, i32* %10, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %152, %149, %139
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %81

159:                                              ; preds = %90
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %164 = call i32 @clear_perf_probe_event(%struct.perf_probe_event* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %165, %77, %56, %35
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @kprobe_convert_to_perf_probe(i32*, i32*) #2

declare dso_local i32 @convert_to_perf_probe_point(i32*, i32*) #2

declare dso_local %struct.TYPE_3__* @zalloc(i32) #2

declare dso_local i32 @synthesize_probe_trace_arg(%struct.TYPE_4__*, i8*, i32) #2

declare dso_local i32 @clear_perf_probe_event(%struct.perf_probe_event*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
