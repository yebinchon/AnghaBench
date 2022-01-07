; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_deregister_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_deregister_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { %struct.se_node_acl*, i32*, %struct.se_portal_group*, i32 }
%struct.se_node_acl = type { i32, i64 }
%struct.se_portal_group = type { %struct.target_core_fabric_ops*, i32, i32, i32 }
%struct.target_core_fabric_ops = type { i32 (...)*, i32 (%struct.se_portal_group.0*, %struct.se_node_acl.1*)*, i32 (%struct.se_portal_group.2*)* }
%struct.se_portal_group.0 = type opaque
%struct.se_node_acl.1 = type opaque
%struct.se_portal_group.2 = type opaque

@.str = private unnamed_addr constant [43 x i8] c"TARGET_CORE[%s]: Deregistered fabric_sess\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_deregister_session(%struct.se_session* %0) #0 {
  %2 = alloca %struct.se_session*, align 8
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca %struct.target_core_fabric_ops*, align 8
  %5 = alloca %struct.se_node_acl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.se_session* %0, %struct.se_session** %2, align 8
  %8 = load %struct.se_session*, %struct.se_session** %2, align 8
  %9 = getelementptr inbounds %struct.se_session, %struct.se_session* %8, i32 0, i32 2
  %10 = load %struct.se_portal_group*, %struct.se_portal_group** %9, align 8
  store %struct.se_portal_group* %10, %struct.se_portal_group** %3, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %12 = icmp ne %struct.se_portal_group* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.se_session*, %struct.se_session** %2, align 8
  %15 = call i32 @transport_free_session(%struct.se_session* %14)
  br label %110

16:                                               ; preds = %1
  %17 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %18 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %17, i32 0, i32 0
  %19 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %18, align 8
  store %struct.target_core_fabric_ops* %19, %struct.target_core_fabric_ops** %4, align 8
  %20 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %21 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %20, i32 0, i32 3
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.se_session*, %struct.se_session** %2, align 8
  %25 = getelementptr inbounds %struct.se_session, %struct.se_session* %24, i32 0, i32 3
  %26 = call i32 @list_del(i32* %25)
  %27 = load %struct.se_session*, %struct.se_session** %2, align 8
  %28 = getelementptr inbounds %struct.se_session, %struct.se_session* %27, i32 0, i32 2
  store %struct.se_portal_group* null, %struct.se_portal_group** %28, align 8
  %29 = load %struct.se_session*, %struct.se_session** %2, align 8
  %30 = getelementptr inbounds %struct.se_session, %struct.se_session* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %32 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %31, i32 0, i32 3
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.se_session*, %struct.se_session** %2, align 8
  %36 = getelementptr inbounds %struct.se_session, %struct.se_session* %35, i32 0, i32 0
  %37 = load %struct.se_node_acl*, %struct.se_node_acl** %36, align 8
  store %struct.se_node_acl* %37, %struct.se_node_acl** %5, align 8
  %38 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %39 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %38, i32 0, i32 1
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %43 = icmp ne %struct.se_node_acl* %42, null
  br i1 %43, label %44, label %87

44:                                               ; preds = %16
  %45 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %46 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %44
  %50 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %51 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %50, i32 0, i32 2
  %52 = load i32 (%struct.se_portal_group.2*)*, i32 (%struct.se_portal_group.2*)** %51, align 8
  %53 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %54 = bitcast %struct.se_portal_group* %53 to %struct.se_portal_group.2*
  %55 = call i32 %52(%struct.se_portal_group.2* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %86, label %57

57:                                               ; preds = %49
  %58 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %59 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %58, i32 0, i32 0
  %60 = call i32 @list_del(i32* %59)
  %61 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %62 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %66 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %65, i32 0, i32 1
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %70 = call i32 @core_tpg_wait_for_nacl_pr_ref(%struct.se_node_acl* %69)
  %71 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %72 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %73 = call i32 @core_free_device_list_for_node(%struct.se_node_acl* %71, %struct.se_portal_group* %72)
  %74 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %75 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %74, i32 0, i32 1
  %76 = load i32 (%struct.se_portal_group.0*, %struct.se_node_acl.1*)*, i32 (%struct.se_portal_group.0*, %struct.se_node_acl.1*)** %75, align 8
  %77 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %78 = bitcast %struct.se_portal_group* %77 to %struct.se_portal_group.0*
  %79 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %80 = bitcast %struct.se_node_acl* %79 to %struct.se_node_acl.1*
  %81 = call i32 %76(%struct.se_portal_group.0* %78, %struct.se_node_acl.1* %80)
  store i32 0, i32* %7, align 4
  %82 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %83 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %82, i32 0, i32 1
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %57, %49
  br label %87

87:                                               ; preds = %86, %44, %16
  %88 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %89 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %88, i32 0, i32 1
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %93 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %92, i32 0, i32 0
  %94 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %93, align 8
  %95 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %94, i32 0, i32 0
  %96 = load i32 (...)*, i32 (...)** %95, align 8
  %97 = call i32 (...) %96()
  %98 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %100 = icmp ne %struct.se_node_acl* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %87
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %106 = call i32 @target_put_nacl(%struct.se_node_acl* %105)
  br label %107

107:                                              ; preds = %104, %101, %87
  %108 = load %struct.se_session*, %struct.se_session** %2, align 8
  %109 = call i32 @transport_free_session(%struct.se_session* %108)
  br label %110

110:                                              ; preds = %107, %13
  ret void
}

declare dso_local i32 @transport_free_session(%struct.se_session*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @core_tpg_wait_for_nacl_pr_ref(%struct.se_node_acl*) #1

declare dso_local i32 @core_free_device_list_for_node(%struct.se_node_acl*, %struct.se_portal_group*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @target_put_nacl(%struct.se_node_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
