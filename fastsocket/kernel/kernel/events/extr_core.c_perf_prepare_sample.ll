; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_prepare_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_prepare_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_header = type { i64, i32, i32 }
%struct.perf_sample_data = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.perf_event = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pt_regs = type { i32 }

@PERF_RECORD_SAMPLE = common dso_local global i32 0, align 4
@PERF_SAMPLE_IP = common dso_local global i32 0, align 4
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@PERF_SAMPLE_RAW = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_STACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_prepare_sample(%struct.perf_event_header* %0, %struct.perf_sample_data* %1, %struct.perf_event* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca %struct.perf_event_header*, align 8
  %6 = alloca %struct.perf_sample_data*, align 8
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.perf_event_header* %0, %struct.perf_event_header** %5, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %6, align 8
  store %struct.perf_event* %2, %struct.perf_event** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @PERF_RECORD_SAMPLE, align 4
  %18 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %19 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 16, %22
  %24 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %25 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %27 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %29 = call i32 @perf_misc_flags(%struct.pt_regs* %28)
  %30 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %31 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %35 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %36 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %37 = call i32 @__perf_event_header__init_id(%struct.perf_event_header* %34, %struct.perf_sample_data* %35, %struct.perf_event* %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %44 = call i32 @perf_instruction_pointer(%struct.pt_regs* %43)
  %45 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %46 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %42, %4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  %53 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %54 = call %struct.TYPE_8__* @perf_callchain(%struct.pt_regs* %53)
  %55 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %56 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %55, i32 0, i32 2
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %56, align 8
  %57 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %58 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %52
  %62 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %63 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %61, %52
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %76 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, %74
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %71, %47
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @PERF_SAMPLE_RAW, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %116

84:                                               ; preds = %79
  store i32 4, i32* %11, align 4
  %85 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %86 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = icmp ne %struct.TYPE_6__* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %91 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %11, align 4
  br label %104

99:                                               ; preds = %84
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %101, 4
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %99, %89
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = and i64 %106, 3
  %108 = trunc i64 %107 to i32
  %109 = call i32 @WARN_ON_ONCE(i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %113 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %104, %79
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %116
  store i32 4, i32* %12, align 4
  %122 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %123 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = icmp ne %struct.TYPE_7__* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %121
  %127 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %128 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %126, %121
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %142 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %140
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %138, %116
  ret void
}

declare dso_local i32 @perf_misc_flags(%struct.pt_regs*) #1

declare dso_local i32 @__perf_event_header__init_id(%struct.perf_event_header*, %struct.perf_sample_data*, %struct.perf_event*) #1

declare dso_local i32 @perf_instruction_pointer(%struct.pt_regs*) #1

declare dso_local %struct.TYPE_8__* @perf_callchain(%struct.pt_regs*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
