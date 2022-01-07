; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_free_lu_gp_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_free_lu_gp_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.t10_alua_lu_gp_member* }
%struct.t10_alua_lu_gp_member = type { i32, %struct.t10_alua_lu_gp*, i64, i32, i32 }
%struct.t10_alua_lu_gp = type { i32, i32 }

@t10_alua_lu_gp_mem_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_alua_free_lu_gp_mem(%struct.se_device* %0) #0 {
  %2 = alloca %struct.se_device*, align 8
  %3 = alloca %struct.t10_alua_lu_gp*, align 8
  %4 = alloca %struct.t10_alua_lu_gp_member*, align 8
  store %struct.se_device* %0, %struct.se_device** %2, align 8
  %5 = load %struct.se_device*, %struct.se_device** %2, align 8
  %6 = getelementptr inbounds %struct.se_device, %struct.se_device* %5, i32 0, i32 0
  %7 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %6, align 8
  store %struct.t10_alua_lu_gp_member* %7, %struct.t10_alua_lu_gp_member** %4, align 8
  %8 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %9 = icmp ne %struct.t10_alua_lu_gp_member* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %59

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %14 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %13, i32 0, i32 4
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 (...) @cpu_relax()
  br label %12

19:                                               ; preds = %12
  %20 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %21 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %24 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %23, i32 0, i32 1
  %25 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %24, align 8
  store %struct.t10_alua_lu_gp* %25, %struct.t10_alua_lu_gp** %3, align 8
  %26 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %3, align 8
  %27 = icmp ne %struct.t10_alua_lu_gp* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %19
  %29 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %3, align 8
  %30 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %33 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %38 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %37, i32 0, i32 3
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %3, align 8
  %41 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %45 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %36, %28
  %47 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %3, align 8
  %48 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %51 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %50, i32 0, i32 1
  store %struct.t10_alua_lu_gp* null, %struct.t10_alua_lu_gp** %51, align 8
  br label %52

52:                                               ; preds = %46, %19
  %53 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %54 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load i32, i32* @t10_alua_lu_gp_mem_cache, align 4
  %57 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %58 = call i32 @kmem_cache_free(i32 %56, %struct.t10_alua_lu_gp_member* %57)
  br label %59

59:                                               ; preds = %52, %10
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.t10_alua_lu_gp_member*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
