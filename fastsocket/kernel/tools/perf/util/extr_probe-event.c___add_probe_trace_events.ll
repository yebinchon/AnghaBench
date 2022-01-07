; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c___add_probe_trace_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c___add_probe_trace_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i8*, i8*, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i8* }
%struct.probe_trace_event = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.strlist = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to get current event list.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Added new event%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"s:\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@PERFPROBE_GROUP = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"\0AYou can now use it in all perf tools, such as:\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\09perf record -e %s:%s -aR sleep 1\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_probe_event*, %struct.probe_trace_event*, i32, i32)* @__add_probe_trace_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__add_probe_trace_events(%struct.perf_probe_event* %0, %struct.probe_trace_event* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_probe_event*, align 8
  %7 = alloca %struct.probe_trace_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.probe_trace_event*, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.strlist*, align 8
  store %struct.perf_probe_event* %0, %struct.perf_probe_event** %6, align 8
  store %struct.probe_trace_event* %1, %struct.probe_trace_event** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.probe_trace_event* null, %struct.probe_trace_event** %13, align 8
  %18 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %19 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 @open_uprobe_events(i32 1)
  store i32 %23, i32* %11, align 4
  br label %26

24:                                               ; preds = %4
  %25 = call i32 @open_kprobe_events(i32 1)
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %178

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.strlist* @get_probe_trace_event_names(i32 %32, i32 0)
  store %struct.strlist* %33, %struct.strlist** %17, align 8
  %34 = load %struct.strlist*, %struct.strlist** %17, align 8
  %35 = icmp ne %struct.strlist* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %178

40:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 1
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %157, %40
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %160

50:                                               ; preds = %46
  %51 = load %struct.probe_trace_event*, %struct.probe_trace_event** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %51, i64 %53
  store %struct.probe_trace_event* %54, %struct.probe_trace_event** %13, align 8
  %55 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %56 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %61 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %15, align 8
  br label %80

63:                                               ; preds = %50
  %64 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %65 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %71 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %15, align 8
  br label %79

74:                                               ; preds = %63
  %75 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %76 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %15, align 8
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %79, %59
  %81 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %82 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %87 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %16, align 8
  br label %91

89:                                               ; preds = %80
  %90 = load i8*, i8** @PERFPROBE_GROUP, align 8
  store i8* %90, i8** %16, align 8
  br label %91

91:                                               ; preds = %89, %85
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %93 = load i8*, i8** %15, align 8
  %94 = load %struct.strlist*, %struct.strlist** %17, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @get_new_event_name(i8* %92, i32 64, i8* %93, %struct.strlist* %94, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %160

100:                                              ; preds = %91
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  store i8* %101, i8** %15, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = call i8* @strdup(i8* %102)
  %104 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %105 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = call i8* @strdup(i8* %106)
  %108 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %109 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %111 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %100
  %115 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %116 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %114, %100
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %12, align 4
  br label %160

122:                                              ; preds = %114
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %125 = call i32 @write_probe_trace_event(i32 %123, %struct.probe_trace_event* %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %160

129:                                              ; preds = %122
  %130 = load %struct.strlist*, %struct.strlist** %17, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = call i32 @strlist__add(%struct.strlist* %130, i8* %131)
  %133 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %134 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %15, align 8
  %136 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %137 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %16, align 8
  %139 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %140 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %143 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %145 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %148 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  %149 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %150 = call i32 @show_perf_probe_event(%struct.perf_probe_event* %149)
  %151 = load i8*, i8** %15, align 8
  %152 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %153 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** %16, align 8
  %155 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %156 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  store i32 1, i32* %9, align 4
  br label %157

157:                                              ; preds = %129
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %46

160:                                              ; preds = %128, %119, %99, %46
  %161 = load i32, i32* %12, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %165 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %166 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %169 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %167, i8* %170)
  br label %172

172:                                              ; preds = %163, %160
  %173 = load %struct.strlist*, %struct.strlist** %17, align 8
  %174 = call i32 @strlist__delete(%struct.strlist* %173)
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @close(i32 %175)
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %172, %36, %29
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @open_uprobe_events(i32) #1

declare dso_local i32 @open_kprobe_events(i32) #1

declare dso_local %struct.strlist* @get_probe_trace_event_names(i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @get_new_event_name(i8*, i32, i8*, %struct.strlist*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @write_probe_trace_event(i32, %struct.probe_trace_event*) #1

declare dso_local i32 @strlist__add(%struct.strlist*, i8*) #1

declare dso_local i32 @show_perf_probe_event(%struct.perf_probe_event*) #1

declare dso_local i32 @strlist__delete(%struct.strlist*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
