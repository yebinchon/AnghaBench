; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_free_device_list_for_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_free_device_list_for_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { %struct.se_dev_entry**, i32 }
%struct.se_dev_entry = type { i32, i32, %struct.se_lun* }
%struct.se_lun = type { i32 }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (...)* }

@TRANSPORT_MAX_LUNS_PER_TPG = common dso_local global i64 0, align 8
@TRANSPORT_LUNFLAGS_INITIATOR_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"%s device entries device pointer is NULL, but Initiator has access.\0A\00", align 1
@TRANSPORT_LUNFLAGS_NO_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_free_device_list_for_node(%struct.se_node_acl* %0, %struct.se_portal_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_node_acl*, align 8
  %5 = alloca %struct.se_portal_group*, align 8
  %6 = alloca %struct.se_dev_entry*, align 8
  %7 = alloca %struct.se_lun*, align 8
  %8 = alloca i64, align 8
  store %struct.se_node_acl* %0, %struct.se_node_acl** %4, align 8
  store %struct.se_portal_group* %1, %struct.se_portal_group** %5, align 8
  %9 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %10 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %9, i32 0, i32 0
  %11 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %10, align 8
  %12 = icmp ne %struct.se_dev_entry** %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

14:                                               ; preds = %2
  %15 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %16 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_irq(i32* %16)
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %67, %14
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @TRANSPORT_MAX_LUNS_PER_TPG, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %18
  %23 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %24 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %23, i32 0, i32 0
  %25 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %25, i64 %26
  %28 = load %struct.se_dev_entry*, %struct.se_dev_entry** %27, align 8
  store %struct.se_dev_entry* %28, %struct.se_dev_entry** %6, align 8
  %29 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %30 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TRANSPORT_LUNFLAGS_INITIATOR_ACCESS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %22
  br label %67

36:                                               ; preds = %22
  %37 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %38 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %37, i32 0, i32 2
  %39 = load %struct.se_lun*, %struct.se_lun** %38, align 8
  %40 = icmp ne %struct.se_lun* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %43 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (...)*, i32 (...)** %45, align 8
  %47 = call i32 (...) %46()
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %67

49:                                               ; preds = %36
  %50 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %51 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %50, i32 0, i32 2
  %52 = load %struct.se_lun*, %struct.se_lun** %51, align 8
  store %struct.se_lun* %52, %struct.se_lun** %7, align 8
  %53 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %54 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock_irq(i32* %54)
  %56 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %57 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %58 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TRANSPORT_LUNFLAGS_NO_ACCESS, align 4
  %61 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %62 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %63 = call i32 @core_disable_device_list_for_node(%struct.se_lun* %56, i32* null, i32 %59, i32 %60, %struct.se_node_acl* %61, %struct.se_portal_group* %62)
  %64 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %65 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %64, i32 0, i32 1
  %66 = call i32 @spin_lock_irq(i32* %65)
  br label %67

67:                                               ; preds = %49, %41, %35
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %18

70:                                               ; preds = %18
  %71 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %72 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock_irq(i32* %72)
  %74 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %75 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %74, i32 0, i32 0
  %76 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %75, align 8
  %77 = load i64, i64* @TRANSPORT_MAX_LUNS_PER_TPG, align 8
  %78 = call i32 @array_free(%struct.se_dev_entry** %76, i64 %77)
  %79 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %80 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %79, i32 0, i32 0
  store %struct.se_dev_entry** null, %struct.se_dev_entry*** %80, align 8
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %70, %13
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @core_disable_device_list_for_node(%struct.se_lun*, i32*, i32, i32, %struct.se_node_acl*, %struct.se_portal_group*) #1

declare dso_local i32 @array_free(%struct.se_dev_entry**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
