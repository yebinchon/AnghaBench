; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_draw_process_bars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_draw_process_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_pid = type { i32, %struct.per_pid*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i32, i8*, i32, %struct.per_pidcomm*, i32, %struct.cpu_sample*, i32, i32 }
%struct.cpu_sample = type { i64, %struct.cpu_sample*, i32, i32, i32 }

@numcpus = common dso_local global i32 0, align 4
@all_data = common dso_local global %struct.per_pid* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"process\00", align 1
@TYPE_RUNNING = common dso_local global i64 0, align 8
@TYPE_BLOCKED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"blocked\00", align 1
@TYPE_WAITING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"%s:%i (%2.2fs)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s:%i (%3.1fms)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw_process_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_process_bars() #0 {
  %1 = alloca %struct.per_pid*, align 8
  %2 = alloca %struct.per_pidcomm*, align 8
  %3 = alloca %struct.cpu_sample*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @numcpus, align 4
  %7 = mul nsw i32 2, %6
  %8 = add nsw i32 %7, 2
  store i32 %8, i32* %4, align 4
  %9 = load %struct.per_pid*, %struct.per_pid** @all_data, align 8
  store %struct.per_pid* %9, %struct.per_pid** %1, align 8
  br label %10

10:                                               ; preds = %153, %0
  %11 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %12 = icmp ne %struct.per_pid* %11, null
  br i1 %12, label %13, label %157

13:                                               ; preds = %10
  %14 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %15 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %14, i32 0, i32 2
  %16 = load %struct.per_pidcomm*, %struct.per_pidcomm** %15, align 8
  store %struct.per_pidcomm* %16, %struct.per_pidcomm** %2, align 8
  br label %17

17:                                               ; preds = %144, %25, %13
  %18 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %19 = icmp ne %struct.per_pidcomm* %18, null
  br i1 %19, label %20, label %153

20:                                               ; preds = %17
  %21 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %22 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %27 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %29 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %28, i32 0, i32 3
  %30 = load %struct.per_pidcomm*, %struct.per_pidcomm** %29, align 8
  store %struct.per_pidcomm* %30, %struct.per_pidcomm** %2, align 8
  br label %17

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %34 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %37 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @svg_box(i32 %32, i32 %35, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %41 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %40, i32 0, i32 5
  %42 = load %struct.cpu_sample*, %struct.cpu_sample** %41, align 8
  store %struct.cpu_sample* %42, %struct.cpu_sample** %3, align 8
  br label %43

43:                                               ; preds = %94, %31
  %44 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %45 = icmp ne %struct.cpu_sample* %44, null
  br i1 %45, label %46, label %98

46:                                               ; preds = %43
  %47 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %48 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TYPE_RUNNING, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %55 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %58 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %61 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @svg_sample(i32 %53, i32 %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %52, %46
  %65 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %66 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TYPE_BLOCKED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %73 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %76 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @svg_box(i32 %71, i32 %74, i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %70, %64
  %80 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %81 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TYPE_WAITING, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %88 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %91 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @svg_waiting(i32 %86, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %85, %79
  %95 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %96 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %95, i32 0, i32 1
  %97 = load %struct.cpu_sample*, %struct.cpu_sample** %96, align 8
  store %struct.cpu_sample* %97, %struct.cpu_sample** %3, align 8
  br label %43

98:                                               ; preds = %43
  %99 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %100 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %144

103:                                              ; preds = %98
  %104 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %105 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = icmp sgt i64 %107, 5000000000
  br i1 %108, label %109, label %123

109:                                              ; preds = %103
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %111 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %112 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %115 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %118 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = sitofp i32 %119 to double
  %121 = fdiv double %120, 1.000000e+09
  %122 = call i32 @sprintf(i8* %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %113, i32 %116, double %121)
  br label %137

123:                                              ; preds = %103
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %125 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %126 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %129 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %132 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sitofp i32 %133 to double
  %135 = fdiv double %134, 1.000000e+06
  %136 = call i32 @sprintf(i8* %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %127, i32 %130, double %135)
  br label %137

137:                                              ; preds = %123, %109
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %140 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %143 = call i32 @svg_text(i32 %138, i32 %141, i8* %142)
  br label %144

144:                                              ; preds = %137, %98
  %145 = load i32, i32* %4, align 4
  %146 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %147 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  %150 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %151 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %150, i32 0, i32 3
  %152 = load %struct.per_pidcomm*, %struct.per_pidcomm** %151, align 8
  store %struct.per_pidcomm* %152, %struct.per_pidcomm** %2, align 8
  br label %17

153:                                              ; preds = %17
  %154 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %155 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %154, i32 0, i32 1
  %156 = load %struct.per_pid*, %struct.per_pid** %155, align 8
  store %struct.per_pid* %156, %struct.per_pid** %1, align 8
  br label %10

157:                                              ; preds = %10
  ret void
}

declare dso_local i32 @svg_box(i32, i32, i32, i8*) #1

declare dso_local i32 @svg_sample(i32, i32, i32, i32) #1

declare dso_local i32 @svg_waiting(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, double) #1

declare dso_local i32 @svg_text(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
