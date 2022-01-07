; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_clear_initiator_node_from_tpg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_clear_initiator_node_from_tpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32, %struct.se_dev_entry** }
%struct.se_dev_entry = type { i32, i32, %struct.se_lun* }
%struct.se_lun = type { i32 }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (...)* }

@TRANSPORT_MAX_LUNS_PER_TPG = common dso_local global i32 0, align 4
@TRANSPORT_LUNFLAGS_INITIATOR_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"%s device entries device pointer is NULL, but Initiator has access.\0A\00", align 1
@TRANSPORT_LUNFLAGS_NO_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_node_acl*, %struct.se_portal_group*)* @core_clear_initiator_node_from_tpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_clear_initiator_node_from_tpg(%struct.se_node_acl* %0, %struct.se_portal_group* %1) #0 {
  %3 = alloca %struct.se_node_acl*, align 8
  %4 = alloca %struct.se_portal_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_dev_entry*, align 8
  %7 = alloca %struct.se_lun*, align 8
  store %struct.se_node_acl* %0, %struct.se_node_acl** %3, align 8
  store %struct.se_portal_group* %1, %struct.se_portal_group** %4, align 8
  %8 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %9 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %61, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TRANSPORT_MAX_LUNS_PER_TPG, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %11
  %16 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %17 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %16, i32 0, i32 1
  %18 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %18, i64 %20
  %22 = load %struct.se_dev_entry*, %struct.se_dev_entry** %21, align 8
  store %struct.se_dev_entry* %22, %struct.se_dev_entry** %6, align 8
  %23 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %24 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TRANSPORT_LUNFLAGS_INITIATOR_ACCESS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  br label %61

30:                                               ; preds = %15
  %31 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %32 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %31, i32 0, i32 2
  %33 = load %struct.se_lun*, %struct.se_lun** %32, align 8
  %34 = icmp ne %struct.se_lun* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %37 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (...)*, i32 (...)** %39, align 8
  %41 = call i32 (...) %40()
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %61

43:                                               ; preds = %30
  %44 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %45 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %44, i32 0, i32 2
  %46 = load %struct.se_lun*, %struct.se_lun** %45, align 8
  store %struct.se_lun* %46, %struct.se_lun** %7, align 8
  %47 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %48 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %51 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %52 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TRANSPORT_LUNFLAGS_NO_ACCESS, align 4
  %55 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %56 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %57 = call i32 @core_disable_device_list_for_node(%struct.se_lun* %50, i32* null, i32 %53, i32 %54, %struct.se_node_acl* %55, %struct.se_portal_group* %56)
  %58 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %59 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_irq(i32* %59)
  br label %61

61:                                               ; preds = %43, %35, %29
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %11

64:                                               ; preds = %11
  %65 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %66 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_irq(i32* %66)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @core_disable_device_list_for_node(%struct.se_lun*, i32*, i32, i32, %struct.se_node_acl*, %struct.se_portal_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
