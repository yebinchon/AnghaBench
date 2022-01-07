; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_attach_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_attach_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrace_engine_ops = type { i32 }
%struct.utrace_engine = type { i32, i8*, %struct.utrace_engine_ops*, i64, i32 }
%struct.task_struct = type { i32 }
%struct.utrace = type { i32 }

@UTRACE_ATTACH_CREATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@utrace_detached_ops = common dso_local global %struct.utrace_engine_ops zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@PF_KTHREAD = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@utrace_engine_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.utrace_engine* @utrace_attach_task(%struct.task_struct* %0, i32 %1, %struct.utrace_engine_ops* %2, i8* %3) #0 {
  %5 = alloca %struct.utrace_engine*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.utrace_engine_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.utrace*, align 8
  %11 = alloca %struct.utrace_engine*, align 8
  %12 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.utrace_engine_ops* %2, %struct.utrace_engine_ops** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %14 = call %struct.utrace* @task_utrace_struct(%struct.task_struct* %13)
  store %struct.utrace* %14, %struct.utrace** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @UTRACE_ATTACH_CREATE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %57, label %19

19:                                               ; preds = %4
  %20 = load %struct.utrace*, %struct.utrace** %10, align 8
  %21 = icmp ne %struct.utrace* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.utrace_engine* @ERR_PTR(i32 %28)
  store %struct.utrace_engine* %29, %struct.utrace_engine** %5, align 8
  br label %153

30:                                               ; preds = %19
  %31 = load %struct.utrace*, %struct.utrace** %10, align 8
  %32 = getelementptr inbounds %struct.utrace, %struct.utrace* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.utrace*, %struct.utrace** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.utrace_engine_ops*, %struct.utrace_engine_ops** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call %struct.utrace_engine* @find_matching_engine(%struct.utrace* %34, i32 %35, %struct.utrace_engine_ops* %36, i8* %37)
  store %struct.utrace_engine* %38, %struct.utrace_engine** %11, align 8
  %39 = load %struct.utrace_engine*, %struct.utrace_engine** %11, align 8
  %40 = icmp ne %struct.utrace_engine* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.utrace_engine*, %struct.utrace_engine** %11, align 8
  %43 = call i32 @utrace_engine_get(%struct.utrace_engine* %42)
  br label %44

44:                                               ; preds = %41, %30
  %45 = load %struct.utrace*, %struct.utrace** %10, align 8
  %46 = getelementptr inbounds %struct.utrace, %struct.utrace* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.utrace_engine*, %struct.utrace_engine** %11, align 8
  %49 = icmp ne %struct.utrace_engine* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.utrace_engine* @ERR_PTR(i32 %53)
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi %struct.utrace_engine* [ %48, %50 ], [ %54, %51 ]
  store %struct.utrace_engine* %56, %struct.utrace_engine** %5, align 8
  br label %153

57:                                               ; preds = %4
  %58 = load %struct.utrace_engine_ops*, %struct.utrace_engine_ops** %8, align 8
  %59 = icmp ne %struct.utrace_engine_ops* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load %struct.utrace_engine_ops*, %struct.utrace_engine_ops** %8, align 8
  %66 = icmp eq %struct.utrace_engine_ops* %65, @utrace_detached_ops
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64, %57
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  %73 = call %struct.utrace_engine* @ERR_PTR(i32 %72)
  store %struct.utrace_engine* %73, %struct.utrace_engine** %5, align 8
  br label %153

74:                                               ; preds = %64
  %75 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PF_KTHREAD, align 4
  %79 = and i32 %77, %78
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i32, i32* @EPERM, align 4
  %84 = sub nsw i32 0, %83
  %85 = call %struct.utrace_engine* @ERR_PTR(i32 %84)
  store %struct.utrace_engine* %85, %struct.utrace_engine** %5, align 8
  br label %153

86:                                               ; preds = %74
  %87 = load %struct.utrace*, %struct.utrace** %10, align 8
  %88 = icmp ne %struct.utrace* %87, null
  br i1 %88, label %104, label %89

89:                                               ; preds = %86
  %90 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %91 = call i32 @utrace_task_alloc(%struct.task_struct* %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  %100 = call %struct.utrace_engine* @ERR_PTR(i32 %99)
  store %struct.utrace_engine* %100, %struct.utrace_engine** %5, align 8
  br label %153

101:                                              ; preds = %89
  %102 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %103 = call %struct.utrace* @task_utrace_struct(%struct.task_struct* %102)
  store %struct.utrace* %103, %struct.utrace** %10, align 8
  br label %104

104:                                              ; preds = %101, %86
  %105 = load i32, i32* @utrace_engine_cachep, align 4
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.utrace_engine* @kmem_cache_alloc(i32 %105, i32 %106)
  store %struct.utrace_engine* %107, %struct.utrace_engine** %11, align 8
  %108 = load %struct.utrace_engine*, %struct.utrace_engine** %11, align 8
  %109 = icmp ne %struct.utrace_engine* %108, null
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  %117 = call %struct.utrace_engine* @ERR_PTR(i32 %116)
  store %struct.utrace_engine* %117, %struct.utrace_engine** %5, align 8
  br label %153

118:                                              ; preds = %104
  %119 = load %struct.utrace_engine*, %struct.utrace_engine** %11, align 8
  %120 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %119, i32 0, i32 4
  %121 = call i32 @kref_set(i32* %120, i32 2)
  %122 = load %struct.utrace_engine*, %struct.utrace_engine** %11, align 8
  %123 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  %124 = load %struct.utrace_engine_ops*, %struct.utrace_engine_ops** %8, align 8
  %125 = load %struct.utrace_engine*, %struct.utrace_engine** %11, align 8
  %126 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %125, i32 0, i32 2
  store %struct.utrace_engine_ops* %124, %struct.utrace_engine_ops** %126, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load %struct.utrace_engine*, %struct.utrace_engine** %11, align 8
  %129 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load %struct.utrace_engine_ops*, %struct.utrace_engine_ops** %8, align 8
  %131 = getelementptr inbounds %struct.utrace_engine_ops, %struct.utrace_engine_ops* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.utrace_engine*, %struct.utrace_engine** %11, align 8
  %134 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %136 = load %struct.utrace*, %struct.utrace** %10, align 8
  %137 = load %struct.utrace_engine*, %struct.utrace_engine** %11, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.utrace_engine_ops*, %struct.utrace_engine_ops** %8, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = call i32 @utrace_add_engine(%struct.task_struct* %135, %struct.utrace* %136, %struct.utrace_engine* %137, i32 %138, %struct.utrace_engine_ops* %139, i8* %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %118
  %146 = load i32, i32* @utrace_engine_cachep, align 4
  %147 = load %struct.utrace_engine*, %struct.utrace_engine** %11, align 8
  %148 = call i32 @kmem_cache_free(i32 %146, %struct.utrace_engine* %147)
  %149 = load i32, i32* %12, align 4
  %150 = call %struct.utrace_engine* @ERR_PTR(i32 %149)
  store %struct.utrace_engine* %150, %struct.utrace_engine** %11, align 8
  br label %151

151:                                              ; preds = %145, %118
  %152 = load %struct.utrace_engine*, %struct.utrace_engine** %11, align 8
  store %struct.utrace_engine* %152, %struct.utrace_engine** %5, align 8
  br label %153

153:                                              ; preds = %151, %114, %97, %82, %70, %55, %26
  %154 = load %struct.utrace_engine*, %struct.utrace_engine** %5, align 8
  ret %struct.utrace_engine* %154
}

declare dso_local %struct.utrace* @task_utrace_struct(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.utrace_engine* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.utrace_engine* @find_matching_engine(%struct.utrace*, i32, %struct.utrace_engine_ops*, i8*) #1

declare dso_local i32 @utrace_engine_get(%struct.utrace_engine*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @utrace_task_alloc(%struct.task_struct*) #1

declare dso_local %struct.utrace_engine* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @kref_set(i32*, i32) #1

declare dso_local i32 @utrace_add_engine(%struct.task_struct*, %struct.utrace*, %struct.utrace_engine*, i32, %struct.utrace_engine_ops*, i8*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.utrace_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
