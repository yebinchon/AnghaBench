; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_ua.c_target_scsi3_ua_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_ua.c_target_scsi3_ua_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i32*, %struct.se_session* }
%struct.se_session = type { %struct.se_node_acl* }
%struct.se_node_acl = type { %struct.se_dev_entry** }
%struct.se_dev_entry = type { i32 }

@TCM_CHECK_CONDITION_UNIT_ATTENTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_scsi3_ua_check(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_dev_entry*, align 8
  %5 = alloca %struct.se_session*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %7 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 2
  %9 = load %struct.se_session*, %struct.se_session** %8, align 8
  store %struct.se_session* %9, %struct.se_session** %5, align 8
  %10 = load %struct.se_session*, %struct.se_session** %5, align 8
  %11 = icmp ne %struct.se_session* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.se_session*, %struct.se_session** %5, align 8
  %15 = getelementptr inbounds %struct.se_session, %struct.se_session* %14, i32 0, i32 0
  %16 = load %struct.se_node_acl*, %struct.se_node_acl** %15, align 8
  store %struct.se_node_acl* %16, %struct.se_node_acl** %6, align 8
  %17 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %18 = icmp ne %struct.se_node_acl* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %43

20:                                               ; preds = %13
  %21 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %22 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %21, i32 0, i32 0
  %23 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %22, align 8
  %24 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %23, i64 %26
  %28 = load %struct.se_dev_entry*, %struct.se_dev_entry** %27, align 8
  store %struct.se_dev_entry* %28, %struct.se_dev_entry** %4, align 8
  %29 = load %struct.se_dev_entry*, %struct.se_dev_entry** %4, align 8
  %30 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %29, i32 0, i32 0
  %31 = call i32 @atomic_read(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %43

34:                                               ; preds = %20
  %35 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %41 [
    i32 130, label %40
    i32 129, label %40
    i32 128, label %40
  ]

40:                                               ; preds = %34, %34, %34
  store i32 0, i32* %2, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @TCM_CHECK_CONDITION_UNIT_ATTENTION, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %40, %33, %19, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
