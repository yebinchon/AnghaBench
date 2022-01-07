; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_perf_event__preprocess_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_perf_event__preprocess_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64 }
%union.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.machine = type { i32** }
%struct.addr_location = type { i8, i32, %struct.TYPE_9__*, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.dso* }
%struct.dso = type { i8*, i64 }
%struct.perf_sample = type { i32 }
%struct.thread = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@PERF_RECORD_MISC_CPUMODE_MASK = common dso_local global i64 0, align 8
@symbol_conf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c" ... thread: %s:%d\0A\00", align 1
@PERF_RECORD_MISC_KERNEL = common dso_local global i64 0, align 8
@MAP__FUNCTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c" ...... dso: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"[hypervisor]\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"<not found>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__preprocess_sample(%union.perf_event* %0, %struct.machine* %1, %struct.addr_location* %2, %struct.perf_sample* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca %struct.addr_location*, align 8
  %10 = alloca %struct.perf_sample*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.dso*, align 8
  store %union.perf_event* %0, %union.perf_event** %7, align 8
  store %struct.machine* %1, %struct.machine** %8, align 8
  store %struct.addr_location* %2, %struct.addr_location** %9, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %union.perf_event*, %union.perf_event** %7, align 8
  %16 = bitcast %union.perf_event* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PERF_RECORD_MISC_CPUMODE_MASK, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %12, align 8
  %21 = load %struct.machine*, %struct.machine** %8, align 8
  %22 = load %union.perf_event*, %union.perf_event** %7, align 8
  %23 = bitcast %union.perf_event* %22 to %struct.TYPE_7__*
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.thread* @machine__findnew_thread(%struct.machine* %21, i32 %25)
  store %struct.thread* %26, %struct.thread** %13, align 8
  %27 = load %struct.thread*, %struct.thread** %13, align 8
  %28 = icmp eq %struct.thread* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %178

30:                                               ; preds = %5
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 2), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 2), align 8
  %35 = load %struct.thread*, %struct.thread** %13, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @strlist__has_entry(i64 %34, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %175

41:                                               ; preds = %33, %30
  %42 = load %struct.thread*, %struct.thread** %13, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.thread*, %struct.thread** %13, align 8
  %47 = getelementptr inbounds %struct.thread, %struct.thread* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i8*, ...) @dump_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %48)
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @PERF_RECORD_MISC_KERNEL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %41
  %54 = load %struct.machine*, %struct.machine** %8, align 8
  %55 = getelementptr inbounds %struct.machine, %struct.machine* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* @MAP__FUNCTION, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.machine*, %struct.machine** %8, align 8
  %63 = call i32 @machine__create_kernel_maps(%struct.machine* %62)
  br label %64

64:                                               ; preds = %61, %53, %41
  %65 = load %struct.thread*, %struct.thread** %13, align 8
  %66 = load %struct.machine*, %struct.machine** %8, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @MAP__FUNCTION, align 8
  %69 = load %union.perf_event*, %union.perf_event** %7, align 8
  %70 = bitcast %union.perf_event* %69 to %struct.TYPE_7__*
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %74 = call i32 @thread__find_addr_map(%struct.thread* %65, %struct.machine* %66, i64 %67, i64 %68, i32 %72, %struct.addr_location* %73)
  %75 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %76 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %75, i32 0, i32 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = icmp ne %struct.TYPE_10__* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %64
  %80 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %81 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %80, i32 0, i32 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.dso*, %struct.dso** %83, align 8
  %85 = getelementptr inbounds %struct.dso, %struct.dso* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  br label %95

87:                                               ; preds = %64
  %88 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %89 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 8
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 72
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  br label %95

95:                                               ; preds = %87, %79
  %96 = phi i8* [ %86, %79 ], [ %94, %87 ]
  %97 = call i32 (i8*, i8*, ...) @dump_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  %98 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %99 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %98, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %99, align 8
  %100 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %101 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %104 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %106 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %105, i32 0, i32 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = icmp ne %struct.TYPE_10__* %107, null
  br i1 %108, label %109, label %156

109:                                              ; preds = %95
  %110 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %111 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %110, i32 0, i32 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load %struct.dso*, %struct.dso** %113, align 8
  store %struct.dso* %114, %struct.dso** %14, align 8
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 1), align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %109
  %118 = load %struct.dso*, %struct.dso** %14, align 8
  %119 = icmp ne %struct.dso* %118, null
  br i1 %119, label %120, label %144

120:                                              ; preds = %117
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 1), align 8
  %122 = load %struct.dso*, %struct.dso** %14, align 8
  %123 = getelementptr inbounds %struct.dso, %struct.dso* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @strlist__has_entry(i64 %121, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %145, label %127

127:                                              ; preds = %120
  %128 = load %struct.dso*, %struct.dso** %14, align 8
  %129 = getelementptr inbounds %struct.dso, %struct.dso* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.dso*, %struct.dso** %14, align 8
  %133 = getelementptr inbounds %struct.dso, %struct.dso* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %131, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %127
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 1), align 8
  %138 = load %struct.dso*, %struct.dso** %14, align 8
  %139 = getelementptr inbounds %struct.dso, %struct.dso* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = ptrtoint i8* %140 to i64
  %142 = call i64 @strlist__has_entry(i64 %137, i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %136, %127, %117
  br label %175

145:                                              ; preds = %136, %120, %109
  %146 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %147 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %146, i32 0, i32 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %150 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call %struct.TYPE_9__* @map__find_symbol(%struct.TYPE_10__* %148, i32 %151, i32 %152)
  %154 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %155 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %154, i32 0, i32 2
  store %struct.TYPE_9__* %153, %struct.TYPE_9__** %155, align 8
  br label %156

156:                                              ; preds = %145, %95
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 0), align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %156
  %160 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %161 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %160, i32 0, i32 2
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = icmp ne %struct.TYPE_9__* %162, null
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 0), align 8
  %166 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %167 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %166, i32 0, i32 2
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @strlist__has_entry(i64 %165, i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %164, %159
  br label %175

174:                                              ; preds = %164, %156
  store i32 0, i32* %6, align 4
  br label %178

175:                                              ; preds = %173, %144, %40
  %176 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %177 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %176, i32 0, i32 1
  store i32 1, i32* %177, align 4
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %175, %174, %29
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32) #1

declare dso_local i64 @strlist__has_entry(i64, i64) #1

declare dso_local i32 @dump_printf(i8*, i8*, ...) #1

declare dso_local i32 @machine__create_kernel_maps(%struct.machine*) #1

declare dso_local i32 @thread__find_addr_map(%struct.thread*, %struct.machine*, i64, i64, i32, %struct.addr_location*) #1

declare dso_local %struct.TYPE_9__* @map__find_symbol(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
