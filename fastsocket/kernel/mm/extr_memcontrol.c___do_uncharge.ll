; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c___do_uncharge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c___do_uncharge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.memcg_batch_info }
%struct.memcg_batch_info = type { i32, i32, %struct.mem_cgroup*, i32 }
%struct.mem_cgroup = type { i32, i32 }

@do_swap_account = common dso_local global i32 0, align 4
@MEM_CGROUP_CHARGE_TYPE_SWAPOUT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@TIF_MEMDIE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, i32, i32)* @__do_uncharge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__do_uncharge(%struct.mem_cgroup* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.memcg_batch_info*, align 8
  %8 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.memcg_batch_info* null, %struct.memcg_batch_info** %7, align 8
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @do_swap_account, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MEM_CGROUP_CHARGE_TYPE_SWAPOUT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.memcg_batch_info* %18, %struct.memcg_batch_info** %7, align 8
  %19 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %7, align 8
  %20 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %19, i32 0, i32 2
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %20, align 8
  %22 = icmp ne %struct.mem_cgroup* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %25 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %7, align 8
  %26 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %25, i32 0, i32 2
  store %struct.mem_cgroup* %24, %struct.mem_cgroup** %26, align 8
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %7, align 8
  %29 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @TIF_MEMDIE, align 4
  %34 = call i64 @test_thread_flag(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %27
  br label %64

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %64

42:                                               ; preds = %37
  %43 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %7, align 8
  %44 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %43, i32 0, i32 2
  %45 = load %struct.mem_cgroup*, %struct.mem_cgroup** %44, align 8
  %46 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %47 = icmp ne %struct.mem_cgroup* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %64

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %7, align 8
  %52 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %7, align 8
  %60 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %49
  br label %89

64:                                               ; preds = %48, %41, %36
  %65 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %66 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %65, i32 0, i32 1
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @res_counter_uncharge(i32* %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %73 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %72, i32 0, i32 0
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @res_counter_uncharge(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %64
  %77 = load %struct.memcg_batch_info*, %struct.memcg_batch_info** %7, align 8
  %78 = getelementptr inbounds %struct.memcg_batch_info, %struct.memcg_batch_info* %77, i32 0, i32 2
  %79 = load %struct.mem_cgroup*, %struct.mem_cgroup** %78, align 8
  %80 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %81 = icmp ne %struct.mem_cgroup* %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %87 = call i32 @memcg_oom_recover(%struct.mem_cgroup* %86)
  br label %88

88:                                               ; preds = %85, %76
  br label %89

89:                                               ; preds = %88, %63
  ret void
}

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @res_counter_uncharge(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcg_oom_recover(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
