; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_torture_shuffle_tasks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_torture_shuffle_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shuffle_tmp_mask = common dso_local global i32 0, align 4
@rcu_idle_cpu = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@reader_tasks = common dso_local global i64* null, align 8
@nrealreaders = common dso_local global i32 0, align 4
@fakewriter_tasks = common dso_local global i64* null, align 8
@nfakewriters = common dso_local global i32 0, align 4
@writer_task = common dso_local global i64 0, align 8
@stats_task = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rcu_torture_shuffle_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_torture_shuffle_tasks() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @shuffle_tmp_mask, align 4
  %3 = call i32 @cpumask_setall(i32 %2)
  %4 = call i32 (...) @get_online_cpus()
  %5 = call i32 (...) @num_online_cpus()
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @put_online_cpus()
  br label %100

9:                                                ; preds = %0
  %10 = load i32, i32* @rcu_idle_cpu, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @rcu_idle_cpu, align 4
  %14 = load i32, i32* @shuffle_tmp_mask, align 4
  %15 = call i32 @cpumask_clear_cpu(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i64, i64* @current, align 8
  %18 = load i32, i32* @shuffle_tmp_mask, align 4
  %19 = call i32 @set_cpus_allowed_ptr(i64 %17, i32 %18)
  %20 = load i64*, i64** @reader_tasks, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @nrealreaders, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load i64*, i64** @reader_tasks, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i64*, i64** @reader_tasks, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @shuffle_tmp_mask, align 4
  %41 = call i32 @set_cpus_allowed_ptr(i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %23

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %46, %16
  %48 = load i64*, i64** @fakewriter_tasks, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @nfakewriters, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load i64*, i64** @fakewriter_tasks, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i64*, i64** @fakewriter_tasks, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @shuffle_tmp_mask, align 4
  %69 = call i32 @set_cpus_allowed_ptr(i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %51

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74, %47
  %76 = load i64, i64* @writer_task, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i64, i64* @writer_task, align 8
  %80 = load i32, i32* @shuffle_tmp_mask, align 4
  %81 = call i32 @set_cpus_allowed_ptr(i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i64, i64* @stats_task, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i64, i64* @stats_task, align 8
  %87 = load i32, i32* @shuffle_tmp_mask, align 4
  %88 = call i32 @set_cpus_allowed_ptr(i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* @rcu_idle_cpu, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = call i32 (...) @num_online_cpus()
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* @rcu_idle_cpu, align 4
  br label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @rcu_idle_cpu, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* @rcu_idle_cpu, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = call i32 (...) @put_online_cpus()
  br label %100

100:                                              ; preds = %98, %7
  ret void
}

declare dso_local i32 @cpumask_setall(i32) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @set_cpus_allowed_ptr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
