; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_drop_nexus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_drop_nexus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm_loop_tpg = type { %struct.tcm_loop_hba*, i32 }
%struct.tcm_loop_hba = type { %struct.tcm_loop_nexus* }
%struct.tcm_loop_nexus = type { %struct.se_session* }
%struct.se_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Unable to remove TCM_Loop I_T Nexus with active TPG port count: %d\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"TCM_Loop_ConfigFS: Removing I_T Nexus to emulated %s Initiator Port: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcm_loop_tpg*)* @tcm_loop_drop_nexus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_loop_drop_nexus(%struct.tcm_loop_tpg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcm_loop_tpg*, align 8
  %4 = alloca %struct.se_session*, align 8
  %5 = alloca %struct.tcm_loop_nexus*, align 8
  %6 = alloca %struct.tcm_loop_hba*, align 8
  store %struct.tcm_loop_tpg* %0, %struct.tcm_loop_tpg** %3, align 8
  %7 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %3, align 8
  %8 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %7, i32 0, i32 0
  %9 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  store %struct.tcm_loop_hba* %9, %struct.tcm_loop_hba** %6, align 8
  %10 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %3, align 8
  %11 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %10, i32 0, i32 0
  %12 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %11, align 8
  %13 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %12, i32 0, i32 0
  %14 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %13, align 8
  store %struct.tcm_loop_nexus* %14, %struct.tcm_loop_nexus** %5, align 8
  %15 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %5, align 8
  %16 = icmp ne %struct.tcm_loop_nexus* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %62

20:                                               ; preds = %1
  %21 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %5, align 8
  %22 = getelementptr inbounds %struct.tcm_loop_nexus, %struct.tcm_loop_nexus* %21, i32 0, i32 0
  %23 = load %struct.se_session*, %struct.se_session** %22, align 8
  store %struct.se_session* %23, %struct.se_session** %4, align 8
  %24 = load %struct.se_session*, %struct.se_session** %4, align 8
  %25 = icmp ne %struct.se_session* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %62

29:                                               ; preds = %20
  %30 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %3, align 8
  %31 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %30, i32 0, i32 1
  %32 = call i64 @atomic_read(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %3, align 8
  %36 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %35, i32 0, i32 1
  %37 = call i64 @atomic_read(i32* %36)
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %62

41:                                               ; preds = %29
  %42 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %6, align 8
  %43 = call i32 @tcm_loop_dump_proto_id(%struct.tcm_loop_hba* %42)
  %44 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %5, align 8
  %45 = getelementptr inbounds %struct.tcm_loop_nexus, %struct.tcm_loop_nexus* %44, i32 0, i32 0
  %46 = load %struct.se_session*, %struct.se_session** %45, align 8
  %47 = getelementptr inbounds %struct.se_session, %struct.se_session* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %50)
  %52 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %5, align 8
  %53 = getelementptr inbounds %struct.tcm_loop_nexus, %struct.tcm_loop_nexus* %52, i32 0, i32 0
  %54 = load %struct.se_session*, %struct.se_session** %53, align 8
  %55 = call i32 @transport_deregister_session(%struct.se_session* %54)
  %56 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %3, align 8
  %57 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %56, i32 0, i32 0
  %58 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %57, align 8
  %59 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %58, i32 0, i32 0
  store %struct.tcm_loop_nexus* null, %struct.tcm_loop_nexus** %59, align 8
  %60 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %5, align 8
  %61 = call i32 @kfree(%struct.tcm_loop_nexus* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %41, %34, %26, %17
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @tcm_loop_dump_proto_id(%struct.tcm_loop_hba*) #1

declare dso_local i32 @transport_deregister_session(%struct.se_session*) #1

declare dso_local i32 @kfree(%struct.tcm_loop_nexus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
