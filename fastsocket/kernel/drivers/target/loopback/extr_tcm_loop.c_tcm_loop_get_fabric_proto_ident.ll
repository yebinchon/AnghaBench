; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_get_fabric_proto_ident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_get_fabric_proto_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { %struct.tcm_loop_tpg* }
%struct.tcm_loop_tpg = type { %struct.tcm_loop_hba* }
%struct.tcm_loop_hba = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Unknown tl_proto_id: 0x%02x, using SAS emulation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_portal_group*)* @tcm_loop_get_fabric_proto_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_loop_get_fabric_proto_ident(%struct.se_portal_group* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca %struct.tcm_loop_tpg*, align 8
  %5 = alloca %struct.tcm_loop_hba*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %3, align 8
  %6 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %7 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %6, i32 0, i32 0
  %8 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %7, align 8
  store %struct.tcm_loop_tpg* %8, %struct.tcm_loop_tpg** %4, align 8
  %9 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %4, align 8
  %10 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %9, i32 0, i32 0
  %11 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %10, align 8
  store %struct.tcm_loop_hba* %11, %struct.tcm_loop_hba** %5, align 8
  %12 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %5, align 8
  %13 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %24 [
    i32 128, label %15
    i32 130, label %18
    i32 129, label %21
  ]

15:                                               ; preds = %1
  %16 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %17 = call i32 @sas_get_fabric_proto_ident(%struct.se_portal_group* %16)
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %20 = call i32 @fc_get_fabric_proto_ident(%struct.se_portal_group* %19)
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %23 = call i32 @iscsi_get_fabric_proto_ident(%struct.se_portal_group* %22)
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %5, align 8
  %26 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24
  %30 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %31 = call i32 @sas_get_fabric_proto_ident(%struct.se_portal_group* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %21, %18, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @sas_get_fabric_proto_ident(%struct.se_portal_group*) #1

declare dso_local i32 @fc_get_fabric_proto_ident(%struct.se_portal_group*) #1

declare dso_local i32 @iscsi_get_fabric_proto_ident(%struct.se_portal_group*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
