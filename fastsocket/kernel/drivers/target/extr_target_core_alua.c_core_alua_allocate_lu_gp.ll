; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_allocate_lu_gp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_allocate_lu_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_lu_gp = type { i32, i64, i32, i32, i32, i32 }

@t10_alua_lu_gp_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to allocate struct t10_alua_lu_gp\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@alua_lu_gps_counter = common dso_local global i32 0, align 4
@alua_lu_gps_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.t10_alua_lu_gp* @core_alua_allocate_lu_gp(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.t10_alua_lu_gp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.t10_alua_lu_gp*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @t10_alua_lu_gp_cache, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.t10_alua_lu_gp* @kmem_cache_zalloc(i32 %7, i32 %8)
  store %struct.t10_alua_lu_gp* %9, %struct.t10_alua_lu_gp** %6, align 8
  %10 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %6, align 8
  %11 = icmp ne %struct.t10_alua_lu_gp* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.t10_alua_lu_gp* @ERR_PTR(i32 %15)
  store %struct.t10_alua_lu_gp* %16, %struct.t10_alua_lu_gp** %3, align 8
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %6, align 8
  %19 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %18, i32 0, i32 5
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %6, align 8
  %22 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %21, i32 0, i32 4
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %6, align 8
  %25 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %24, i32 0, i32 3
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %6, align 8
  %28 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %27, i32 0, i32 2
  %29 = call i32 @atomic_set(i32* %28, i32 0)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %17
  %33 = load i32, i32* @alua_lu_gps_counter, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @alua_lu_gps_counter, align 4
  %35 = sext i32 %33 to i64
  %36 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %6, align 8
  %37 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %6, align 8
  %39 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* @alua_lu_gps_count, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @alua_lu_gps_count, align 4
  br label %42

42:                                               ; preds = %32, %17
  %43 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %6, align 8
  store %struct.t10_alua_lu_gp* %43, %struct.t10_alua_lu_gp** %3, align 8
  br label %44

44:                                               ; preds = %42, %12
  %45 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %3, align 8
  ret %struct.t10_alua_lu_gp* %45
}

declare dso_local %struct.t10_alua_lu_gp* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.t10_alua_lu_gp* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
