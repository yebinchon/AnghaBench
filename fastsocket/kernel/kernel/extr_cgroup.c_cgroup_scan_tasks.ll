; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_scan_tasks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_scan_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_scanner = type { i32 (%struct.task_struct*, %struct.cgroup_scanner*)*, i32, i32 (%struct.task_struct*, %struct.cgroup_scanner*)*, %struct.ptr_heap* }
%struct.task_struct = type { %struct.timespec }
%struct.timespec = type { i32, i32 }
%struct.ptr_heap = type { i32, %struct.task_struct**, i32* }
%struct.cgroup_iter = type { i32 }

@started_after = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroup_scan_tasks(%struct.cgroup_scanner* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgroup_scanner*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgroup_iter, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.ptr_heap, align 8
  %11 = alloca %struct.ptr_heap*, align 8
  %12 = alloca %struct.timespec, align 4
  %13 = alloca %struct.task_struct*, align 8
  store %struct.cgroup_scanner* %0, %struct.cgroup_scanner** %3, align 8
  store %struct.task_struct* null, %struct.task_struct** %9, align 8
  %14 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.cgroup_scanner*, %struct.cgroup_scanner** %3, align 8
  %16 = getelementptr inbounds %struct.cgroup_scanner, %struct.cgroup_scanner* %15, i32 0, i32 3
  %17 = load %struct.ptr_heap*, %struct.ptr_heap** %16, align 8
  %18 = icmp ne %struct.ptr_heap* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.cgroup_scanner*, %struct.cgroup_scanner** %3, align 8
  %21 = getelementptr inbounds %struct.cgroup_scanner, %struct.cgroup_scanner* %20, i32 0, i32 3
  %22 = load %struct.ptr_heap*, %struct.ptr_heap** %21, align 8
  store %struct.ptr_heap* %22, %struct.ptr_heap** %11, align 8
  %23 = load %struct.ptr_heap*, %struct.ptr_heap** %11, align 8
  %24 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %23, i32 0, i32 2
  store i32* @started_after, i32** %24, align 8
  br label %35

25:                                               ; preds = %1
  store %struct.ptr_heap* %10, %struct.ptr_heap** %11, align 8
  %26 = load %struct.ptr_heap*, %struct.ptr_heap** %11, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @heap_init(%struct.ptr_heap* %26, i32 %27, i32 %28, i32* @started_after)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %140

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %19
  br label %36

36:                                               ; preds = %133, %35
  %37 = load %struct.ptr_heap*, %struct.ptr_heap** %11, align 8
  %38 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.cgroup_scanner*, %struct.cgroup_scanner** %3, align 8
  %40 = getelementptr inbounds %struct.cgroup_scanner, %struct.cgroup_scanner* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cgroup_iter_start(i32 %41, %struct.cgroup_iter* %6)
  br label %43

43:                                               ; preds = %88, %68, %62, %36
  %44 = load %struct.cgroup_scanner*, %struct.cgroup_scanner** %3, align 8
  %45 = getelementptr inbounds %struct.cgroup_scanner, %struct.cgroup_scanner* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.task_struct* @cgroup_iter_next(i32 %46, %struct.cgroup_iter* %6)
  store %struct.task_struct* %47, %struct.task_struct** %7, align 8
  %48 = icmp ne %struct.task_struct* %47, null
  br i1 %48, label %49, label %89

49:                                               ; preds = %43
  %50 = load %struct.cgroup_scanner*, %struct.cgroup_scanner** %3, align 8
  %51 = getelementptr inbounds %struct.cgroup_scanner, %struct.cgroup_scanner* %50, i32 0, i32 2
  %52 = load i32 (%struct.task_struct*, %struct.cgroup_scanner*)*, i32 (%struct.task_struct*, %struct.cgroup_scanner*)** %51, align 8
  %53 = icmp ne i32 (%struct.task_struct*, %struct.cgroup_scanner*)* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.cgroup_scanner*, %struct.cgroup_scanner** %3, align 8
  %56 = getelementptr inbounds %struct.cgroup_scanner, %struct.cgroup_scanner* %55, i32 0, i32 2
  %57 = load i32 (%struct.task_struct*, %struct.cgroup_scanner*)*, i32 (%struct.task_struct*, %struct.cgroup_scanner*)** %56, align 8
  %58 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %59 = load %struct.cgroup_scanner*, %struct.cgroup_scanner** %3, align 8
  %60 = call i32 %57(%struct.task_struct* %58, %struct.cgroup_scanner* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %43

63:                                               ; preds = %54, %49
  %64 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %65 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %66 = call i32 @started_after_time(%struct.task_struct* %64, %struct.timespec* %12, %struct.task_struct* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %43

69:                                               ; preds = %63
  %70 = load %struct.ptr_heap*, %struct.ptr_heap** %11, align 8
  %71 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %72 = call %struct.task_struct* @heap_insert(%struct.ptr_heap* %70, %struct.task_struct* %71)
  store %struct.task_struct* %72, %struct.task_struct** %8, align 8
  %73 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %74 = icmp eq %struct.task_struct* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %77 = call i32 @get_task_struct(%struct.task_struct* %76)
  br label %88

78:                                               ; preds = %69
  %79 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %80 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %81 = icmp ne %struct.task_struct* %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %84 = call i32 @get_task_struct(%struct.task_struct* %83)
  %85 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %86 = call i32 @put_task_struct(%struct.task_struct* %85)
  br label %87

87:                                               ; preds = %82, %78
  br label %88

88:                                               ; preds = %87, %75
  br label %43

89:                                               ; preds = %43
  %90 = load %struct.cgroup_scanner*, %struct.cgroup_scanner** %3, align 8
  %91 = getelementptr inbounds %struct.cgroup_scanner, %struct.cgroup_scanner* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @cgroup_iter_end(i32 %92, %struct.cgroup_iter* %6)
  %94 = load %struct.ptr_heap*, %struct.ptr_heap** %11, align 8
  %95 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %134

98:                                               ; preds = %89
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %130, %98
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.ptr_heap*, %struct.ptr_heap** %11, align 8
  %102 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %133

105:                                              ; preds = %99
  %106 = load %struct.ptr_heap*, %struct.ptr_heap** %11, align 8
  %107 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %106, i32 0, i32 1
  %108 = load %struct.task_struct**, %struct.task_struct*** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %108, i64 %110
  %112 = load %struct.task_struct*, %struct.task_struct** %111, align 8
  store %struct.task_struct* %112, %struct.task_struct** %13, align 8
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %105
  %116 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %117 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %116, i32 0, i32 0
  %118 = bitcast %struct.timespec* %12 to i8*
  %119 = bitcast %struct.timespec* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 8, i1 false)
  %120 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  store %struct.task_struct* %120, %struct.task_struct** %9, align 8
  br label %121

121:                                              ; preds = %115, %105
  %122 = load %struct.cgroup_scanner*, %struct.cgroup_scanner** %3, align 8
  %123 = getelementptr inbounds %struct.cgroup_scanner, %struct.cgroup_scanner* %122, i32 0, i32 0
  %124 = load i32 (%struct.task_struct*, %struct.cgroup_scanner*)*, i32 (%struct.task_struct*, %struct.cgroup_scanner*)** %123, align 8
  %125 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %126 = load %struct.cgroup_scanner*, %struct.cgroup_scanner** %3, align 8
  %127 = call i32 %124(%struct.task_struct* %125, %struct.cgroup_scanner* %126)
  %128 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %129 = call i32 @put_task_struct(%struct.task_struct* %128)
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %99

133:                                              ; preds = %99
  br label %36

134:                                              ; preds = %89
  %135 = load %struct.ptr_heap*, %struct.ptr_heap** %11, align 8
  %136 = icmp eq %struct.ptr_heap* %135, %10
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 @heap_free(%struct.ptr_heap* %10)
  br label %139

139:                                              ; preds = %137, %134
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %32
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @heap_init(%struct.ptr_heap*, i32, i32, i32*) #2

declare dso_local i32 @cgroup_iter_start(i32, %struct.cgroup_iter*) #2

declare dso_local %struct.task_struct* @cgroup_iter_next(i32, %struct.cgroup_iter*) #2

declare dso_local i32 @started_after_time(%struct.task_struct*, %struct.timespec*, %struct.task_struct*) #2

declare dso_local %struct.task_struct* @heap_insert(%struct.ptr_heap*, %struct.task_struct*) #2

declare dso_local i32 @get_task_struct(%struct.task_struct*) #2

declare dso_local i32 @put_task_struct(%struct.task_struct*) #2

declare dso_local i32 @cgroup_iter_end(i32, %struct.cgroup_iter*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @heap_free(%struct.ptr_heap*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
