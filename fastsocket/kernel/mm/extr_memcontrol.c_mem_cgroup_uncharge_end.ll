; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_uncharge_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_uncharge_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.memcg_batch_info }
%struct.memcg_batch_info = type { %struct.TYPE_3__*, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_cgroup_uncharge_end() #0 {
  %1 = alloca %struct.memcg_batch_info*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store %struct.memcg_batch_info* %3, %struct.memcg_batch_info** %1, align 8
  %4 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %1, align 8
  %5 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %60

9:                                                ; preds = %0
  %10 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %1, align 8
  %11 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %1, align 8
  %15 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %60

19:                                               ; preds = %9
  %20 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %1, align 8
  %21 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %60

25:                                               ; preds = %19
  %26 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %1, align 8
  %27 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %1, align 8
  %32 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %1, align 8
  %36 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @res_counter_uncharge(i32* %34, i64 %37)
  br label %39

39:                                               ; preds = %30, %25
  %40 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %1, align 8
  %41 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %1, align 8
  %46 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %1, align 8
  %50 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @res_counter_uncharge(i32* %48, i64 %51)
  br label %53

53:                                               ; preds = %44, %39
  %54 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %1, align 8
  %55 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i32 @memcg_oom_recover(%struct.TYPE_3__* %56)
  %58 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %1, align 8
  %59 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %58, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %59, align 8
  br label %60

60:                                               ; preds = %53, %24, %18, %8
  ret void
}

declare dso_local i32 @res_counter_uncharge(i32*, i64) #1

declare dso_local i32 @memcg_oom_recover(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
