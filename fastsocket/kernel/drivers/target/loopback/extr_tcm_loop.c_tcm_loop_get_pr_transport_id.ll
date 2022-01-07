; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_get_pr_transport_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_get_pr_transport_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { %struct.tcm_loop_tpg* }
%struct.tcm_loop_tpg = type { %struct.tcm_loop_hba* }
%struct.tcm_loop_hba = type { i32 }
%struct.se_node_acl = type { i32 }
%struct.t10_pr_registration = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Unknown tl_proto_id: 0x%02x, using SAS emulation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_portal_group*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32*, i8*)* @tcm_loop_get_pr_transport_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_loop_get_pr_transport_id(%struct.se_portal_group* %0, %struct.se_node_acl* %1, %struct.t10_pr_registration* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.se_portal_group*, align 8
  %8 = alloca %struct.se_node_acl*, align 8
  %9 = alloca %struct.t10_pr_registration*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tcm_loop_tpg*, align 8
  %13 = alloca %struct.tcm_loop_hba*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %7, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %8, align 8
  store %struct.t10_pr_registration* %2, %struct.t10_pr_registration** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %15 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %14, i32 0, i32 0
  %16 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %15, align 8
  store %struct.tcm_loop_tpg* %16, %struct.tcm_loop_tpg** %12, align 8
  %17 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %12, align 8
  %18 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %17, i32 0, i32 0
  %19 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %18, align 8
  store %struct.tcm_loop_hba* %19, %struct.tcm_loop_hba** %13, align 8
  %20 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %13, align 8
  %21 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %44 [
    i32 128, label %23
    i32 130, label %30
    i32 129, label %37
  ]

23:                                               ; preds = %5
  %24 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %25 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %26 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @sas_get_pr_transport_id(%struct.se_portal_group* %24, %struct.se_node_acl* %25, %struct.t10_pr_registration* %26, i32* %27, i8* %28)
  store i32 %29, i32* %6, align 4
  br label %56

30:                                               ; preds = %5
  %31 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %32 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %33 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @fc_get_pr_transport_id(%struct.se_portal_group* %31, %struct.se_node_acl* %32, %struct.t10_pr_registration* %33, i32* %34, i8* %35)
  store i32 %36, i32* %6, align 4
  br label %56

37:                                               ; preds = %5
  %38 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %39 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %40 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @iscsi_get_pr_transport_id(%struct.se_portal_group* %38, %struct.se_node_acl* %39, %struct.t10_pr_registration* %40, i32* %41, i8* %42)
  store i32 %43, i32* %6, align 4
  br label %56

44:                                               ; preds = %5
  %45 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %13, align 8
  %46 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44
  %50 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %51 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %52 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %9, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @sas_get_pr_transport_id(%struct.se_portal_group* %50, %struct.se_node_acl* %51, %struct.t10_pr_registration* %52, i32* %53, i8* %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %49, %37, %30, %23
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @sas_get_pr_transport_id(%struct.se_portal_group*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32*, i8*) #1

declare dso_local i32 @fc_get_pr_transport_id(%struct.se_portal_group*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32*, i8*) #1

declare dso_local i32 @iscsi_get_pr_transport_id(%struct.se_portal_group*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
