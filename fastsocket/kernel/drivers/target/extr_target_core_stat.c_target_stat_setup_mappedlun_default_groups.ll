; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_stat.c_target_stat_setup_mappedlun_default_groups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_stat.c_target_stat_setup_mappedlun_default_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun_acl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.config_group }
%struct.config_group = type { i32** }

@.str = private unnamed_addr constant [15 x i8] c"scsi_auth_intr\00", align 1
@target_stat_scsi_auth_intr_cit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"scsi_att_intr_port\00", align 1
@target_stat_scsi_att_intr_port_cit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_stat_setup_mappedlun_default_groups(%struct.se_lun_acl* %0) #0 {
  %2 = alloca %struct.se_lun_acl*, align 8
  %3 = alloca %struct.config_group*, align 8
  store %struct.se_lun_acl* %0, %struct.se_lun_acl** %2, align 8
  %4 = load %struct.se_lun_acl*, %struct.se_lun_acl** %2, align 8
  %5 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  store %struct.config_group* %6, %struct.config_group** %3, align 8
  %7 = load %struct.se_lun_acl*, %struct.se_lun_acl** %2, align 8
  %8 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i32 @config_group_init_type_name(i32* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* @target_stat_scsi_auth_intr_cit)
  %11 = load %struct.se_lun_acl*, %struct.se_lun_acl** %2, align 8
  %12 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @config_group_init_type_name(i32* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* @target_stat_scsi_att_intr_port_cit)
  %15 = load %struct.se_lun_acl*, %struct.se_lun_acl** %2, align 8
  %16 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.config_group*, %struct.config_group** %3, align 8
  %19 = getelementptr inbounds %struct.config_group, %struct.config_group* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  store i32* %17, i32** %21, align 8
  %22 = load %struct.se_lun_acl*, %struct.se_lun_acl** %2, align 8
  %23 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.config_group*, %struct.config_group** %3, align 8
  %26 = getelementptr inbounds %struct.config_group, %struct.config_group* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  store i32* %24, i32** %28, align 8
  %29 = load %struct.config_group*, %struct.config_group** %3, align 8
  %30 = getelementptr inbounds %struct.config_group, %struct.config_group* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 2
  store i32* null, i32** %32, align 8
  ret void
}

declare dso_local i32 @config_group_init_type_name(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
