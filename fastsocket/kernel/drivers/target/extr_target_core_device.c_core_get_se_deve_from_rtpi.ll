; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_get_se_deve_from_rtpi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_get_se_deve_from_rtpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_dev_entry = type { i32, i32, %struct.se_lun* }
%struct.se_lun = type { %struct.se_port* }
%struct.se_port = type { i64 }
%struct.se_node_acl = type { i32, %struct.se_dev_entry**, %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (...)* }

@TRANSPORT_MAX_LUNS_PER_TPG = common dso_local global i64 0, align 8
@TRANSPORT_LUNFLAGS_INITIATOR_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"%s device entries device pointer is NULL, but Initiator has access.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_dev_entry* @core_get_se_deve_from_rtpi(%struct.se_node_acl* %0, i64 %1) #0 {
  %3 = alloca %struct.se_dev_entry*, align 8
  %4 = alloca %struct.se_node_acl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.se_dev_entry*, align 8
  %7 = alloca %struct.se_lun*, align 8
  %8 = alloca %struct.se_port*, align 8
  %9 = alloca %struct.se_portal_group*, align 8
  %10 = alloca i64, align 8
  store %struct.se_node_acl* %0, %struct.se_node_acl** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %12 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %11, i32 0, i32 2
  %13 = load %struct.se_portal_group*, %struct.se_portal_group** %12, align 8
  store %struct.se_portal_group* %13, %struct.se_portal_group** %9, align 8
  %14 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %15 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_irq(i32* %15)
  store i64 0, i64* %10, align 8
  br label %17

17:                                               ; preds = %79, %2
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @TRANSPORT_MAX_LUNS_PER_TPG, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %17
  %22 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %23 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %22, i32 0, i32 1
  %24 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %24, i64 %25
  %27 = load %struct.se_dev_entry*, %struct.se_dev_entry** %26, align 8
  store %struct.se_dev_entry* %27, %struct.se_dev_entry** %6, align 8
  %28 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %29 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TRANSPORT_LUNFLAGS_INITIATOR_ACCESS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %79

35:                                               ; preds = %21
  %36 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %37 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %36, i32 0, i32 2
  %38 = load %struct.se_lun*, %struct.se_lun** %37, align 8
  store %struct.se_lun* %38, %struct.se_lun** %7, align 8
  %39 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %40 = icmp ne %struct.se_lun* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  %43 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (...)*, i32 (...)** %45, align 8
  %47 = call i32 (...) %46()
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %79

49:                                               ; preds = %35
  %50 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %51 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %50, i32 0, i32 0
  %52 = load %struct.se_port*, %struct.se_port** %51, align 8
  store %struct.se_port* %52, %struct.se_port** %8, align 8
  %53 = load %struct.se_port*, %struct.se_port** %8, align 8
  %54 = icmp ne %struct.se_port* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %49
  %56 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  %57 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (...)*, i32 (...)** %59, align 8
  %61 = call i32 (...) %60()
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %79

63:                                               ; preds = %49
  %64 = load %struct.se_port*, %struct.se_port** %8, align 8
  %65 = getelementptr inbounds %struct.se_port, %struct.se_port* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %79

70:                                               ; preds = %63
  %71 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %72 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %71, i32 0, i32 1
  %73 = call i32 @atomic_inc(i32* %72)
  %74 = call i32 (...) @smp_mb__after_atomic_inc()
  %75 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %76 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock_irq(i32* %76)
  %78 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  store %struct.se_dev_entry* %78, %struct.se_dev_entry** %3, align 8
  br label %86

79:                                               ; preds = %69, %55, %41, %34
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %17

82:                                               ; preds = %17
  %83 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %84 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_irq(i32* %84)
  store %struct.se_dev_entry* null, %struct.se_dev_entry** %3, align 8
  br label %86

86:                                               ; preds = %82, %70
  %87 = load %struct.se_dev_entry*, %struct.se_dev_entry** %3, align 8
  ret %struct.se_dev_entry* %87
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @smp_mb__after_atomic_inc(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
