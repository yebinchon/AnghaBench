; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_get_pr_transport_id_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_get_pr_transport_id_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { %struct.tcm_loop_tpg* }
%struct.tcm_loop_tpg = type { %struct.tcm_loop_hba* }
%struct.tcm_loop_hba = type { i32 }
%struct.se_node_acl = type { i32 }
%struct.t10_pr_registration = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Unknown tl_proto_id: 0x%02x, using SAS emulation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_portal_group*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32*)* @tcm_loop_get_pr_transport_id_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_loop_get_pr_transport_id_len(%struct.se_portal_group* %0, %struct.se_node_acl* %1, %struct.t10_pr_registration* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca %struct.se_node_acl*, align 8
  %8 = alloca %struct.t10_pr_registration*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tcm_loop_tpg*, align 8
  %11 = alloca %struct.tcm_loop_hba*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %6, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %7, align 8
  store %struct.t10_pr_registration* %2, %struct.t10_pr_registration** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %13 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %12, i32 0, i32 0
  %14 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %13, align 8
  store %struct.tcm_loop_tpg* %14, %struct.tcm_loop_tpg** %10, align 8
  %15 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %10, align 8
  %16 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %15, i32 0, i32 0
  %17 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %16, align 8
  store %struct.tcm_loop_hba* %17, %struct.tcm_loop_hba** %11, align 8
  %18 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %11, align 8
  %19 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %39 [
    i32 128, label %21
    i32 130, label %27
    i32 129, label %33
  ]

21:                                               ; preds = %4
  %22 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %23 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %24 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @sas_get_pr_transport_id_len(%struct.se_portal_group* %22, %struct.se_node_acl* %23, %struct.t10_pr_registration* %24, i32* %25)
  store i32 %26, i32* %5, align 4
  br label %50

27:                                               ; preds = %4
  %28 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %29 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %30 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @fc_get_pr_transport_id_len(%struct.se_portal_group* %28, %struct.se_node_acl* %29, %struct.t10_pr_registration* %30, i32* %31)
  store i32 %32, i32* %5, align 4
  br label %50

33:                                               ; preds = %4
  %34 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %35 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %36 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @iscsi_get_pr_transport_id_len(%struct.se_portal_group* %34, %struct.se_node_acl* %35, %struct.t10_pr_registration* %36, i32* %37)
  store i32 %38, i32* %5, align 4
  br label %50

39:                                               ; preds = %4
  %40 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %11, align 8
  %41 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39
  %45 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %46 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %47 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @sas_get_pr_transport_id_len(%struct.se_portal_group* %45, %struct.se_node_acl* %46, %struct.t10_pr_registration* %47, i32* %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %33, %27, %21
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @sas_get_pr_transport_id_len(%struct.se_portal_group*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32*) #1

declare dso_local i32 @fc_get_pr_transport_id_len(%struct.se_portal_group*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32*) #1

declare dso_local i32 @iscsi_get_pr_transport_id_len(%struct.se_portal_group*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
