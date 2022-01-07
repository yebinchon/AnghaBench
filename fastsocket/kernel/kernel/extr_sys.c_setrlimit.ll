; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sys.c_setrlimit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sys.c_setrlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.rlimit* }
%struct.rlimit = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@sysctl_nr_open = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@tasklist_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@RLIMIT_CPU = common dso_local global i32 0, align 4
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setrlimit(%struct.task_struct* %0, i32 %1, %struct.rlimit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rlimit*, align 8
  %8 = alloca %struct.rlimit*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rlimit* %2, %struct.rlimit** %7, align 8
  %10 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %133

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @RLIMIT_NOFILE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %26 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @sysctl_nr_open, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %133

34:                                               ; preds = %24, %20
  %35 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %37 = icmp ne %struct.task_struct* %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = call i32 @read_lock(i32* @tasklist_lock)
  %40 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ESRCH, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %125

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %52 = call i32 @security_task_setrlimit(%struct.task_struct* %49, i32 %50, %struct.rlimit* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %125

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @RLIMIT_CPU, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %62 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %67 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %60, %56
  %69 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %70 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.rlimit*, %struct.rlimit** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %73, i64 %75
  store %struct.rlimit* %76, %struct.rlimit** %8, align 8
  %77 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @task_lock(i32 %79)
  %81 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %82 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %85 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sle i32 %83, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %68
  %89 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %90 = call i64 @capable(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88, %68
  %93 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %94 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %95 = bitcast %struct.rlimit* %93 to i8*
  %96 = bitcast %struct.rlimit* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 8, i1 false)
  br label %100

97:                                               ; preds = %88
  %98 = load i32, i32* @EPERM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %102 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @task_unlock(i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @RLIMIT_CPU, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %100
  br label %125

112:                                              ; preds = %107
  %113 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %114 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @RLIM_INFINITY, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %125

119:                                              ; preds = %112
  %120 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %121 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %122 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @update_rlimit_cpu(%struct.task_struct* %120, i32 %123)
  br label %125

125:                                              ; preds = %119, %118, %111, %55, %44
  %126 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %127 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %128 = icmp ne %struct.task_struct* %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %131

131:                                              ; preds = %129, %125
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %31, %17
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @security_task_setrlimit(%struct.task_struct*, i32, %struct.rlimit*) #1

declare dso_local i32 @task_lock(i32) #1

declare dso_local i64 @capable(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @task_unlock(i32) #1

declare dso_local i32 @update_rlimit_cpu(%struct.task_struct*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
