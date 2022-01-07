; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_create_device_list_for_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_create_device_list_for_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { %struct.se_dev_entry** }
%struct.se_dev_entry = type { i32, i32, i32, i32, i32 }

@TRANSPORT_MAX_LUNS_PER_TPG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Unable to allocate memory for struct se_node_acl->device_list\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_node_acl*)* @core_create_device_list_for_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_create_device_list_for_node(%struct.se_node_acl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_node_acl*, align 8
  %4 = alloca %struct.se_dev_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.se_node_acl* %0, %struct.se_node_acl** %3, align 8
  %6 = load i32, i32* @TRANSPORT_MAX_LUNS_PER_TPG, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.se_dev_entry** @array_zalloc(i32 %6, i32 20, i32 %7)
  %9 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %10 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %9, i32 0, i32 0
  store %struct.se_dev_entry** %8, %struct.se_dev_entry*** %10, align 8
  %11 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %12 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %11, i32 0, i32 0
  %13 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %12, align 8
  %14 = icmp ne %struct.se_dev_entry** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %51

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @TRANSPORT_MAX_LUNS_PER_TPG, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %26 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %25, i32 0, i32 0
  %27 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %27, i64 %29
  %31 = load %struct.se_dev_entry*, %struct.se_dev_entry** %30, align 8
  store %struct.se_dev_entry* %31, %struct.se_dev_entry** %4, align 8
  %32 = load %struct.se_dev_entry*, %struct.se_dev_entry** %4, align 8
  %33 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %32, i32 0, i32 4
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.se_dev_entry*, %struct.se_dev_entry** %4, align 8
  %36 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %35, i32 0, i32 3
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = load %struct.se_dev_entry*, %struct.se_dev_entry** %4, align 8
  %39 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %38, i32 0, i32 2
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.se_dev_entry*, %struct.se_dev_entry** %4, align 8
  %42 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %41, i32 0, i32 1
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.se_dev_entry*, %struct.se_dev_entry** %4, align 8
  %45 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %44, i32 0, i32 0
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  br label %47

47:                                               ; preds = %24
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %20

50:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.se_dev_entry** @array_zalloc(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
