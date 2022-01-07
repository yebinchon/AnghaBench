; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_setup_alua.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_setup_alua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.t10_alua_lu_gp_member = type { i32 }

@TRANSPORT_PLUGIN_PHBA_PDEV = common dso_local global i64 0, align 8
@HBA_FLAGS_INTERNAL_USE = common dso_local global i32 0, align 4
@default_lu_gp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"%s: Adding to default ALUA LU Group: core/alua/lu_gps/default_lu_gp\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_setup_alua(%struct.se_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.t10_alua_lu_gp_member*, align 8
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  %5 = load %struct.se_device*, %struct.se_device** %3, align 8
  %6 = getelementptr inbounds %struct.se_device, %struct.se_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TRANSPORT_PLUGIN_PHBA_PDEV, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = load %struct.se_device*, %struct.se_device** %3, align 8
  %14 = getelementptr inbounds %struct.se_device, %struct.se_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HBA_FLAGS_INTERNAL_USE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %12
  %22 = load %struct.se_device*, %struct.se_device** %3, align 8
  %23 = call %struct.t10_alua_lu_gp_member* @core_alua_allocate_lu_gp_mem(%struct.se_device* %22)
  store %struct.t10_alua_lu_gp_member* %23, %struct.t10_alua_lu_gp_member** %4, align 8
  %24 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %25 = call i64 @IS_ERR(%struct.t10_alua_lu_gp_member* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %29 = call i32 @PTR_ERR(%struct.t10_alua_lu_gp_member* %28)
  store i32 %29, i32* %2, align 4
  br label %47

30:                                               ; preds = %21
  %31 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %32 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %35 = load i32, i32* @default_lu_gp, align 4
  %36 = call i32 @__core_alua_attach_lu_gp_mem(%struct.t10_alua_lu_gp_member* %34, i32 %35)
  %37 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %38 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load %struct.se_device*, %struct.se_device** %3, align 8
  %41 = getelementptr inbounds %struct.se_device, %struct.se_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %30, %12, %1
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.t10_alua_lu_gp_member* @core_alua_allocate_lu_gp_mem(%struct.se_device*) #1

declare dso_local i64 @IS_ERR(%struct.t10_alua_lu_gp_member*) #1

declare dso_local i32 @PTR_ERR(%struct.t10_alua_lu_gp_member*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__core_alua_attach_lu_gp_mem(%struct.t10_alua_lu_gp_member*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
