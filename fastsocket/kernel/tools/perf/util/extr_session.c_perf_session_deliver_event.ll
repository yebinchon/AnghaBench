; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session_deliver_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session_deliver_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%union.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.perf_sample = type { i32 }
%struct.perf_tool = type { i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.0*, %struct.perf_evsel*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.1*, %struct.machine.2*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.3*, %struct.machine.4*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.5*, %struct.machine.6*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.7*, %struct.machine.8*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.9*, %struct.machine.10*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.11*, %struct.perf_evsel.12*, %struct.machine.13*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.14*, %struct.machine.15*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.16*, %struct.machine.17*)* }
%struct.perf_sample.0 = type opaque
%struct.perf_evsel = type opaque
%struct.machine = type opaque
%struct.perf_sample.1 = type opaque
%struct.machine.2 = type opaque
%struct.perf_sample.3 = type opaque
%struct.machine.4 = type opaque
%struct.perf_sample.5 = type opaque
%struct.machine.6 = type opaque
%struct.perf_sample.7 = type opaque
%struct.machine.8 = type opaque
%struct.perf_sample.9 = type opaque
%struct.machine.10 = type opaque
%struct.perf_sample.11 = type opaque
%struct.perf_evsel.12 = type opaque
%struct.machine.13 = type opaque
%struct.perf_sample.14 = type opaque
%struct.machine.15 = type opaque
%struct.perf_sample.16 = type opaque
%struct.machine.17 = type opaque
%struct.perf_evsel.18 = type { i32 }
%struct.machine.19 = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session*, %union.perf_event*, %struct.perf_sample*, %struct.perf_tool*, i32)* @perf_session_deliver_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_session_deliver_event(%struct.perf_session* %0, %union.perf_event* %1, %struct.perf_sample* %2, %struct.perf_tool* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_session*, align 8
  %8 = alloca %union.perf_event*, align 8
  %9 = alloca %struct.perf_sample*, align 8
  %10 = alloca %struct.perf_tool*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.perf_evsel.18*, align 8
  %13 = alloca %struct.machine.19*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %7, align 8
  store %union.perf_event* %1, %union.perf_event** %8, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %9, align 8
  store %struct.perf_tool* %3, %struct.perf_tool** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %15 = load %union.perf_event*, %union.perf_event** %8, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %18 = call i32 @dump_event(%struct.perf_session* %14, %union.perf_event* %15, i32 %16, %struct.perf_sample* %17)
  %19 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %20 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %23 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.perf_evsel.18* @perf_evlist__id2evsel(i32 %21, i32 %24)
  store %struct.perf_evsel.18* %25, %struct.perf_evsel.18** %12, align 8
  %26 = load %struct.perf_evsel.18*, %struct.perf_evsel.18** %12, align 8
  %27 = icmp ne %struct.perf_evsel.18* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %5
  %29 = load %union.perf_event*, %union.perf_event** %8, align 8
  %30 = bitcast %union.perf_event* %29 to %struct.TYPE_5__*
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 130
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.perf_evsel.18*, %struct.perf_evsel.18** %12, align 8
  %36 = getelementptr inbounds %struct.perf_evsel.18, %struct.perf_evsel.18* %35, i32 0, i32 0
  %37 = load %union.perf_event*, %union.perf_event** %8, align 8
  %38 = bitcast %union.perf_event* %37 to %struct.TYPE_5__*
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hists__inc_nr_events(i32* %36, i32 %40)
  br label %42

42:                                               ; preds = %34, %28, %5
  %43 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %44 = load %union.perf_event*, %union.perf_event** %8, align 8
  %45 = call %struct.machine.19* @perf_session__find_machine_for_cpumode(%struct.perf_session* %43, %union.perf_event* %44)
  store %struct.machine.19* %45, %struct.machine.19** %13, align 8
  %46 = load %union.perf_event*, %union.perf_event** %8, align 8
  %47 = bitcast %union.perf_event* %46 to %struct.TYPE_5__*
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %193 [
    i32 130, label %50
    i32 132, label %87
    i32 136, label %98
    i32 134, label %109
    i32 135, label %120
    i32 133, label %131
    i32 131, label %158
    i32 129, label %171
    i32 128, label %182
  ]

50:                                               ; preds = %42
  %51 = load %struct.perf_evsel.18*, %struct.perf_evsel.18** %12, align 8
  %52 = load %union.perf_event*, %union.perf_event** %8, align 8
  %53 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %54 = call i32 @dump_sample(%struct.perf_evsel.18* %51, %union.perf_event* %52, %struct.perf_sample* %53)
  %55 = load %struct.perf_evsel.18*, %struct.perf_evsel.18** %12, align 8
  %56 = icmp eq %struct.perf_evsel.18* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %59 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  store i32 0, i32* %6, align 4
  br label %200

64:                                               ; preds = %50
  %65 = load %struct.machine.19*, %struct.machine.19** %13, align 8
  %66 = icmp eq %struct.machine.19* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %69 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  store i32 0, i32* %6, align 4
  br label %200

74:                                               ; preds = %64
  %75 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %76 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %75, i32 0, i32 0
  %77 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.0*, %struct.perf_evsel*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.0*, %struct.perf_evsel*, %struct.machine*)** %76, align 8
  %78 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %79 = load %union.perf_event*, %union.perf_event** %8, align 8
  %80 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %81 = bitcast %struct.perf_sample* %80 to %struct.perf_sample.0*
  %82 = load %struct.perf_evsel.18*, %struct.perf_evsel.18** %12, align 8
  %83 = bitcast %struct.perf_evsel.18* %82 to %struct.perf_evsel*
  %84 = load %struct.machine.19*, %struct.machine.19** %13, align 8
  %85 = bitcast %struct.machine.19* %84 to %struct.machine*
  %86 = call i32 %77(%struct.perf_tool* %78, %union.perf_event* %79, %struct.perf_sample.0* %81, %struct.perf_evsel* %83, %struct.machine* %85)
  store i32 %86, i32* %6, align 4
  br label %200

87:                                               ; preds = %42
  %88 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %89 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %88, i32 0, i32 1
  %90 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.1*, %struct.machine.2*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.1*, %struct.machine.2*)** %89, align 8
  %91 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %92 = load %union.perf_event*, %union.perf_event** %8, align 8
  %93 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %94 = bitcast %struct.perf_sample* %93 to %struct.perf_sample.1*
  %95 = load %struct.machine.19*, %struct.machine.19** %13, align 8
  %96 = bitcast %struct.machine.19* %95 to %struct.machine.2*
  %97 = call i32 %90(%struct.perf_tool* %91, %union.perf_event* %92, %struct.perf_sample.1* %94, %struct.machine.2* %96)
  store i32 %97, i32* %6, align 4
  br label %200

98:                                               ; preds = %42
  %99 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %100 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %99, i32 0, i32 2
  %101 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.3*, %struct.machine.4*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.3*, %struct.machine.4*)** %100, align 8
  %102 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %103 = load %union.perf_event*, %union.perf_event** %8, align 8
  %104 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %105 = bitcast %struct.perf_sample* %104 to %struct.perf_sample.3*
  %106 = load %struct.machine.19*, %struct.machine.19** %13, align 8
  %107 = bitcast %struct.machine.19* %106 to %struct.machine.4*
  %108 = call i32 %101(%struct.perf_tool* %102, %union.perf_event* %103, %struct.perf_sample.3* %105, %struct.machine.4* %107)
  store i32 %108, i32* %6, align 4
  br label %200

109:                                              ; preds = %42
  %110 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %111 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %110, i32 0, i32 3
  %112 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.5*, %struct.machine.6*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.5*, %struct.machine.6*)** %111, align 8
  %113 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %114 = load %union.perf_event*, %union.perf_event** %8, align 8
  %115 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %116 = bitcast %struct.perf_sample* %115 to %struct.perf_sample.5*
  %117 = load %struct.machine.19*, %struct.machine.19** %13, align 8
  %118 = bitcast %struct.machine.19* %117 to %struct.machine.6*
  %119 = call i32 %112(%struct.perf_tool* %113, %union.perf_event* %114, %struct.perf_sample.5* %116, %struct.machine.6* %118)
  store i32 %119, i32* %6, align 4
  br label %200

120:                                              ; preds = %42
  %121 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %122 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %121, i32 0, i32 4
  %123 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.7*, %struct.machine.8*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.7*, %struct.machine.8*)** %122, align 8
  %124 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %125 = load %union.perf_event*, %union.perf_event** %8, align 8
  %126 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %127 = bitcast %struct.perf_sample* %126 to %struct.perf_sample.7*
  %128 = load %struct.machine.19*, %struct.machine.19** %13, align 8
  %129 = bitcast %struct.machine.19* %128 to %struct.machine.8*
  %130 = call i32 %123(%struct.perf_tool* %124, %union.perf_event* %125, %struct.perf_sample.7* %127, %struct.machine.8* %129)
  store i32 %130, i32* %6, align 4
  br label %200

131:                                              ; preds = %42
  %132 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %133 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %132, i32 0, i32 5
  %134 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.9*, %struct.machine.10*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.9*, %struct.machine.10*)** %133, align 8
  %135 = icmp eq i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.9*, %struct.machine.10*)* %134, bitcast (i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine.19*)* @perf_event__process_lost to i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.9*, %struct.machine.10*)*)
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load %union.perf_event*, %union.perf_event** %8, align 8
  %138 = bitcast %union.perf_event* %137 to %struct.TYPE_6__*
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %142 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %140
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %136, %131
  %148 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %149 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %148, i32 0, i32 5
  %150 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.9*, %struct.machine.10*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.9*, %struct.machine.10*)** %149, align 8
  %151 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %152 = load %union.perf_event*, %union.perf_event** %8, align 8
  %153 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %154 = bitcast %struct.perf_sample* %153 to %struct.perf_sample.9*
  %155 = load %struct.machine.19*, %struct.machine.19** %13, align 8
  %156 = bitcast %struct.machine.19* %155 to %struct.machine.10*
  %157 = call i32 %150(%struct.perf_tool* %151, %union.perf_event* %152, %struct.perf_sample.9* %154, %struct.machine.10* %156)
  store i32 %157, i32* %6, align 4
  br label %200

158:                                              ; preds = %42
  %159 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %160 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %159, i32 0, i32 6
  %161 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.11*, %struct.perf_evsel.12*, %struct.machine.13*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.11*, %struct.perf_evsel.12*, %struct.machine.13*)** %160, align 8
  %162 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %163 = load %union.perf_event*, %union.perf_event** %8, align 8
  %164 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %165 = bitcast %struct.perf_sample* %164 to %struct.perf_sample.11*
  %166 = load %struct.perf_evsel.18*, %struct.perf_evsel.18** %12, align 8
  %167 = bitcast %struct.perf_evsel.18* %166 to %struct.perf_evsel.12*
  %168 = load %struct.machine.19*, %struct.machine.19** %13, align 8
  %169 = bitcast %struct.machine.19* %168 to %struct.machine.13*
  %170 = call i32 %161(%struct.perf_tool* %162, %union.perf_event* %163, %struct.perf_sample.11* %165, %struct.perf_evsel.12* %167, %struct.machine.13* %169)
  store i32 %170, i32* %6, align 4
  br label %200

171:                                              ; preds = %42
  %172 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %173 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %172, i32 0, i32 7
  %174 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.14*, %struct.machine.15*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.14*, %struct.machine.15*)** %173, align 8
  %175 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %176 = load %union.perf_event*, %union.perf_event** %8, align 8
  %177 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %178 = bitcast %struct.perf_sample* %177 to %struct.perf_sample.14*
  %179 = load %struct.machine.19*, %struct.machine.19** %13, align 8
  %180 = bitcast %struct.machine.19* %179 to %struct.machine.15*
  %181 = call i32 %174(%struct.perf_tool* %175, %union.perf_event* %176, %struct.perf_sample.14* %178, %struct.machine.15* %180)
  store i32 %181, i32* %6, align 4
  br label %200

182:                                              ; preds = %42
  %183 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %184 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %183, i32 0, i32 8
  %185 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.16*, %struct.machine.17*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.16*, %struct.machine.17*)** %184, align 8
  %186 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %187 = load %union.perf_event*, %union.perf_event** %8, align 8
  %188 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %189 = bitcast %struct.perf_sample* %188 to %struct.perf_sample.16*
  %190 = load %struct.machine.19*, %struct.machine.19** %13, align 8
  %191 = bitcast %struct.machine.19* %190 to %struct.machine.17*
  %192 = call i32 %185(%struct.perf_tool* %186, %union.perf_event* %187, %struct.perf_sample.16* %189, %struct.machine.17* %191)
  store i32 %192, i32* %6, align 4
  br label %200

193:                                              ; preds = %42
  %194 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %195 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  store i32 -1, i32* %6, align 4
  br label %200

200:                                              ; preds = %193, %182, %171, %158, %147, %120, %109, %98, %87, %74, %67, %57
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local i32 @dump_event(%struct.perf_session*, %union.perf_event*, i32, %struct.perf_sample*) #1

declare dso_local %struct.perf_evsel.18* @perf_evlist__id2evsel(i32, i32) #1

declare dso_local i32 @hists__inc_nr_events(i32*, i32) #1

declare dso_local %struct.machine.19* @perf_session__find_machine_for_cpumode(%struct.perf_session*, %union.perf_event*) #1

declare dso_local i32 @dump_sample(%struct.perf_evsel.18*, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @perf_event__process_lost(%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine.19*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
