; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_pid_put_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_pid_put_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_pid = type { i64, i32, %struct.per_pidcomm*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i64, i32, %struct.cpu_sample*, %struct.per_pidcomm* }
%struct.cpu_sample = type { i32, i32, %struct.cpu_sample*, i64, i64 }

@TYPE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64, i64)* @pid_put_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pid_put_sample(i32 %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.per_pid*, align 8
  %12 = alloca %struct.per_pidcomm*, align 8
  %13 = alloca %struct.cpu_sample*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.per_pid* @find_create_pid(i32 %14)
  store %struct.per_pid* %15, %struct.per_pid** %11, align 8
  %16 = load %struct.per_pid*, %struct.per_pid** %11, align 8
  %17 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %16, i32 0, i32 3
  %18 = load %struct.per_pidcomm*, %struct.per_pidcomm** %17, align 8
  store %struct.per_pidcomm* %18, %struct.per_pidcomm** %12, align 8
  %19 = load %struct.per_pidcomm*, %struct.per_pidcomm** %12, align 8
  %20 = icmp ne %struct.per_pidcomm* %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %5
  %22 = call i8* @zalloc(i32 32)
  %23 = bitcast i8* %22 to %struct.per_pidcomm*
  store %struct.per_pidcomm* %23, %struct.per_pidcomm** %12, align 8
  %24 = load %struct.per_pidcomm*, %struct.per_pidcomm** %12, align 8
  %25 = icmp ne %struct.per_pidcomm* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.per_pidcomm*, %struct.per_pidcomm** %12, align 8
  %29 = load %struct.per_pid*, %struct.per_pid** %11, align 8
  %30 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %29, i32 0, i32 3
  store %struct.per_pidcomm* %28, %struct.per_pidcomm** %30, align 8
  %31 = load %struct.per_pid*, %struct.per_pid** %11, align 8
  %32 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %31, i32 0, i32 2
  %33 = load %struct.per_pidcomm*, %struct.per_pidcomm** %32, align 8
  %34 = load %struct.per_pidcomm*, %struct.per_pidcomm** %12, align 8
  %35 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %34, i32 0, i32 3
  store %struct.per_pidcomm* %33, %struct.per_pidcomm** %35, align 8
  %36 = load %struct.per_pidcomm*, %struct.per_pidcomm** %12, align 8
  %37 = load %struct.per_pid*, %struct.per_pid** %11, align 8
  %38 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %37, i32 0, i32 2
  store %struct.per_pidcomm* %36, %struct.per_pidcomm** %38, align 8
  br label %39

39:                                               ; preds = %21, %5
  %40 = call i8* @zalloc(i32 32)
  %41 = bitcast i8* %40 to %struct.cpu_sample*
  store %struct.cpu_sample* %41, %struct.cpu_sample** %13, align 8
  %42 = load %struct.cpu_sample*, %struct.cpu_sample** %13, align 8
  %43 = icmp ne %struct.cpu_sample* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.cpu_sample*, %struct.cpu_sample** %13, align 8
  %48 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.cpu_sample*, %struct.cpu_sample** %13, align 8
  %51 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.cpu_sample*, %struct.cpu_sample** %13, align 8
  %54 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.per_pidcomm*, %struct.per_pidcomm** %12, align 8
  %56 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %55, i32 0, i32 2
  %57 = load %struct.cpu_sample*, %struct.cpu_sample** %56, align 8
  %58 = load %struct.cpu_sample*, %struct.cpu_sample** %13, align 8
  %59 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %58, i32 0, i32 2
  store %struct.cpu_sample* %57, %struct.cpu_sample** %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.cpu_sample*, %struct.cpu_sample** %13, align 8
  %62 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.cpu_sample*, %struct.cpu_sample** %13, align 8
  %64 = load %struct.per_pidcomm*, %struct.per_pidcomm** %12, align 8
  %65 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %64, i32 0, i32 2
  store %struct.cpu_sample* %63, %struct.cpu_sample** %65, align 8
  %66 = load %struct.cpu_sample*, %struct.cpu_sample** %13, align 8
  %67 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @TYPE_RUNNING, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %39
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load i64, i64* %9, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load %struct.per_pidcomm*, %struct.per_pidcomm** %12, align 8
  %83 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %9, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load %struct.per_pid*, %struct.per_pid** %11, align 8
  %92 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 8
  br label %97

97:                                               ; preds = %78, %75, %71, %39
  %98 = load %struct.per_pidcomm*, %struct.per_pidcomm** %12, align 8
  %99 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = load %struct.per_pidcomm*, %struct.per_pidcomm** %12, align 8
  %104 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %9, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102, %97
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.per_pidcomm*, %struct.per_pidcomm** %12, align 8
  %111 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %102
  %113 = load %struct.per_pid*, %struct.per_pid** %11, align 8
  %114 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %112
  %118 = load %struct.per_pid*, %struct.per_pid** %11, align 8
  %119 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117, %112
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.per_pid*, %struct.per_pid** %11, align 8
  %126 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %117
  ret void
}

declare dso_local %struct.per_pid* @find_create_pid(i32) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
