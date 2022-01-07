; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tmr.c_core_tmr_lun_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tmr.c_core_tmr_lun_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32, %struct.TYPE_10__*, i32, i32, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.se_tmr_req = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.se_portal_group*, %struct.se_node_acl* }
%struct.se_portal_group = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* (...)* }
%struct.se_node_acl = type { i32 }
%struct.list_head = type { i32 }
%struct.se_cmd = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"LUN_RESET: TMR caller fabric: %s initiator port %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"LUN_RESET: %s starting for [%s], tas: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Preempt\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"TMR\00", align 1
@DRF_SPC2_RESERVATIONS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"LUN_RESET: SCSI-2 Released reservation\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"LUN_RESET: %s for [%s] Complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_tmr_lun_reset(%struct.se_device* %0, %struct.se_tmr_req* %1, %struct.list_head* %2, %struct.se_cmd* %3) #0 {
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.se_tmr_req*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.se_cmd*, align 8
  %9 = alloca %struct.se_node_acl*, align 8
  %10 = alloca %struct.se_portal_group*, align 8
  %11 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store %struct.se_tmr_req* %1, %struct.se_tmr_req** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store %struct.se_cmd* %3, %struct.se_cmd** %8, align 8
  store %struct.se_node_acl* null, %struct.se_node_acl** %9, align 8
  store %struct.se_portal_group* null, %struct.se_portal_group** %10, align 8
  %12 = load %struct.se_device*, %struct.se_device** %5, align 8
  %13 = getelementptr inbounds %struct.se_device, %struct.se_device* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %11, align 4
  %16 = load %struct.se_tmr_req*, %struct.se_tmr_req** %6, align 8
  %17 = icmp ne %struct.se_tmr_req* %16, null
  br i1 %17, label %18, label %62

18:                                               ; preds = %4
  %19 = load %struct.se_tmr_req*, %struct.se_tmr_req** %6, align 8
  %20 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %62

23:                                               ; preds = %18
  %24 = load %struct.se_tmr_req*, %struct.se_tmr_req** %6, align 8
  %25 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %23
  %31 = load %struct.se_tmr_req*, %struct.se_tmr_req** %6, align 8
  %32 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load %struct.se_node_acl*, %struct.se_node_acl** %36, align 8
  store %struct.se_node_acl* %37, %struct.se_node_acl** %9, align 8
  %38 = load %struct.se_tmr_req*, %struct.se_tmr_req** %6, align 8
  %39 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.se_portal_group*, %struct.se_portal_group** %43, align 8
  store %struct.se_portal_group* %44, %struct.se_portal_group** %10, align 8
  %45 = load %struct.se_node_acl*, %struct.se_node_acl** %9, align 8
  %46 = icmp ne %struct.se_node_acl* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %30
  %48 = load %struct.se_portal_group*, %struct.se_portal_group** %10, align 8
  %49 = icmp ne %struct.se_portal_group* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.se_portal_group*, %struct.se_portal_group** %10, align 8
  %52 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i8* (...)*, i8* (...)** %54, align 8
  %56 = call i8* (...) %55()
  %57 = load %struct.se_node_acl*, %struct.se_node_acl** %9, align 8
  %58 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %59)
  br label %61

61:                                               ; preds = %50, %47, %30
  br label %62

62:                                               ; preds = %61, %23, %18, %4
  %63 = load %struct.list_head*, %struct.list_head** %7, align 8
  %64 = icmp ne %struct.list_head* %63, null
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %67 = load %struct.se_device*, %struct.se_device** %5, align 8
  %68 = getelementptr inbounds %struct.se_device, %struct.se_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 %71, i32 %72)
  %74 = load %struct.se_device*, %struct.se_device** %5, align 8
  %75 = load %struct.se_tmr_req*, %struct.se_tmr_req** %6, align 8
  %76 = load %struct.list_head*, %struct.list_head** %7, align 8
  %77 = call i32 @core_tmr_drain_tmr_list(%struct.se_device* %74, %struct.se_tmr_req* %75, %struct.list_head* %76)
  %78 = load %struct.se_device*, %struct.se_device** %5, align 8
  %79 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %80 = load %struct.se_node_acl*, %struct.se_node_acl** %9, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.list_head*, %struct.list_head** %7, align 8
  %83 = call i32 @core_tmr_drain_state_list(%struct.se_device* %78, %struct.se_cmd* %79, %struct.se_node_acl* %80, i32 %81, %struct.list_head* %82)
  %84 = load %struct.list_head*, %struct.list_head** %7, align 8
  %85 = icmp ne %struct.list_head* %84, null
  br i1 %85, label %109, label %86

86:                                               ; preds = %62
  %87 = load %struct.se_device*, %struct.se_device** %5, align 8
  %88 = getelementptr inbounds %struct.se_device, %struct.se_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %86
  %94 = load %struct.se_device*, %struct.se_device** %5, align 8
  %95 = getelementptr inbounds %struct.se_device, %struct.se_device* %94, i32 0, i32 4
  %96 = call i32 @spin_lock(i32* %95)
  %97 = load %struct.se_device*, %struct.se_device** %5, align 8
  %98 = getelementptr inbounds %struct.se_device, %struct.se_device* %97, i32 0, i32 5
  store i32* null, i32** %98, align 8
  %99 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.se_device*, %struct.se_device** %5, align 8
  %102 = getelementptr inbounds %struct.se_device, %struct.se_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.se_device*, %struct.se_device** %5, align 8
  %106 = getelementptr inbounds %struct.se_device, %struct.se_device* %105, i32 0, i32 4
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %109

109:                                              ; preds = %93, %86, %62
  %110 = load %struct.se_device*, %struct.se_device** %5, align 8
  %111 = getelementptr inbounds %struct.se_device, %struct.se_device* %110, i32 0, i32 2
  %112 = call i32 @spin_lock_irq(i32* %111)
  %113 = load %struct.se_device*, %struct.se_device** %5, align 8
  %114 = getelementptr inbounds %struct.se_device, %struct.se_device* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.se_device*, %struct.se_device** %5, align 8
  %118 = getelementptr inbounds %struct.se_device, %struct.se_device* %117, i32 0, i32 2
  %119 = call i32 @spin_unlock_irq(i32* %118)
  %120 = load %struct.list_head*, %struct.list_head** %7, align 8
  %121 = icmp ne %struct.list_head* %120, null
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %124 = load %struct.se_device*, %struct.se_device** %5, align 8
  %125 = getelementptr inbounds %struct.se_device, %struct.se_device* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %123, i32 %128)
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @core_tmr_drain_tmr_list(%struct.se_device*, %struct.se_tmr_req*, %struct.list_head*) #1

declare dso_local i32 @core_tmr_drain_state_list(%struct.se_device*, %struct.se_cmd*, %struct.se_node_acl*, i32, %struct.list_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
