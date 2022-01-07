; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_thread__find_addr_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_thread__find_addr_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.map_groups }
%struct.map_groups = type { i32 }
%struct.machine = type { %struct.map_groups }
%struct.addr_location = type { i32, i8, i64, %struct.TYPE_3__*, i64, %struct.thread* }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_3__*, i64)* }

@PERF_RECORD_MISC_KERNEL = common dso_local global i64 0, align 8
@perf_host = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_USER = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_GUEST_KERNEL = common dso_local global i64 0, align 8
@perf_guest = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_GUEST_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread__find_addr_map(%struct.thread* %0, %struct.machine* %1, i64 %2, i32 %3, i64 %4, %struct.addr_location* %5) #0 {
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.addr_location*, align 8
  %13 = alloca %struct.map_groups*, align 8
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.machine* %1, %struct.machine** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store %struct.addr_location* %5, %struct.addr_location** %12, align 8
  %14 = load %struct.thread*, %struct.thread** %7, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  store %struct.map_groups* %15, %struct.map_groups** %13, align 8
  %16 = load %struct.thread*, %struct.thread** %7, align 8
  %17 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %18 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 5
  store %struct.thread* %16, %struct.thread** %18, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %21 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %24 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %23, i32 0, i32 4
  store i64 %22, i64* %24, align 8
  %25 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %26 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.machine*, %struct.machine** %8, align 8
  %28 = icmp eq %struct.machine* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %31 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %30, i32 0, i32 3
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %31, align 8
  br label %162

32:                                               ; preds = %6
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @PERF_RECORD_MISC_KERNEL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i64, i64* @perf_host, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %41 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %40, i32 0, i32 1
  store i8 107, i8* %41, align 4
  %42 = load %struct.machine*, %struct.machine** %8, align 8
  %43 = getelementptr inbounds %struct.machine, %struct.machine* %42, i32 0, i32 0
  store %struct.map_groups* %43, %struct.map_groups** %13, align 8
  br label %112

44:                                               ; preds = %36, %32
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @PERF_RECORD_MISC_USER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i64, i64* @perf_host, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %53 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %52, i32 0, i32 1
  store i8 46, i8* %53, align 4
  br label %111

54:                                               ; preds = %48, %44
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @PERF_RECORD_MISC_GUEST_KERNEL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i64, i64* @perf_guest, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %63 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %62, i32 0, i32 1
  store i8 103, i8* %63, align 4
  %64 = load %struct.machine*, %struct.machine** %8, align 8
  %65 = getelementptr inbounds %struct.machine, %struct.machine* %64, i32 0, i32 0
  store %struct.map_groups* %65, %struct.map_groups** %13, align 8
  br label %110

66:                                               ; preds = %58, %54
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @PERF_RECORD_MISC_GUEST_USER, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i64, i64* @perf_guest, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %75 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %74, i32 0, i32 1
  store i8 117, i8* %75, align 4
  br label %79

76:                                               ; preds = %70, %66
  %77 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %78 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %77, i32 0, i32 1
  store i8 72, i8* %78, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %81 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %80, i32 0, i32 3
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %81, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @PERF_RECORD_MISC_GUEST_USER, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @PERF_RECORD_MISC_GUEST_KERNEL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85, %79
  %90 = load i64, i64* @perf_guest, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %94 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %89, %85
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @PERF_RECORD_MISC_USER, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* @PERF_RECORD_MISC_KERNEL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99, %95
  %104 = load i64, i64* @perf_host, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %108 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %103, %99
  br label %162

110:                                              ; preds = %61
  br label %111

111:                                              ; preds = %110, %51
  br label %112

112:                                              ; preds = %111, %39
  br label %113

113:                                              ; preds = %143, %112
  %114 = load %struct.map_groups*, %struct.map_groups** %13, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %117 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call %struct.TYPE_3__* @map_groups__find(%struct.map_groups* %114, i32 %115, i64 %118)
  %120 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %121 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %120, i32 0, i32 3
  store %struct.TYPE_3__* %119, %struct.TYPE_3__** %121, align 8
  %122 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %123 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %122, i32 0, i32 3
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = icmp eq %struct.TYPE_3__* %124, null
  br i1 %125, label %126, label %147

126:                                              ; preds = %113
  %127 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %128 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* @PERF_RECORD_MISC_USER, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load %struct.machine*, %struct.machine** %8, align 8
  %137 = icmp ne %struct.machine* %136, null
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load %struct.map_groups*, %struct.map_groups** %13, align 8
  %140 = load %struct.machine*, %struct.machine** %8, align 8
  %141 = getelementptr inbounds %struct.machine, %struct.machine* %140, i32 0, i32 0
  %142 = icmp ne %struct.map_groups* %139, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.machine*, %struct.machine** %8, align 8
  %145 = getelementptr inbounds %struct.machine, %struct.machine* %144, i32 0, i32 0
  store %struct.map_groups* %145, %struct.map_groups** %13, align 8
  br label %113

146:                                              ; preds = %138, %135, %131, %126
  br label %162

147:                                              ; preds = %113
  %148 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %149 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %148, i32 0, i32 3
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i64 (%struct.TYPE_3__*, i64)*, i64 (%struct.TYPE_3__*, i64)** %151, align 8
  %153 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %154 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %153, i32 0, i32 3
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %157 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i64 %152(%struct.TYPE_3__* %155, i64 %158)
  %160 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %161 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %29, %109, %147, %146
  ret void
}

declare dso_local %struct.TYPE_3__* @map_groups__find(%struct.map_groups*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
