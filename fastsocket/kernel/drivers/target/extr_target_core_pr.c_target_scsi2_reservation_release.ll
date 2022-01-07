; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_target_scsi2_reservation_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_target_scsi2_reservation_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.se_session*, %struct.se_device* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.se_session = type { i64, %struct.TYPE_8__*, %struct.se_portal_group* }
%struct.TYPE_8__ = type { i32 }
%struct.se_portal_group = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (...)* }
%struct.se_device = type { i64, i32, i32, %struct.TYPE_8__* }

@TCM_RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@DRF_SPC2_RESERVATIONS = common dso_local global i32 0, align 4
@DRF_SPC2_RESERVATIONS_WITH_ISID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"SCSI-2 Released reservation for %s LUN: %u -> MAPPED LUN: %u for %s\0A\00", align 1
@GOOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_scsi2_reservation_release(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.se_session*, align 8
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 3
  %10 = load %struct.se_device*, %struct.se_device** %9, align 8
  store %struct.se_device* %10, %struct.se_device** %4, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 2
  %13 = load %struct.se_session*, %struct.se_session** %12, align 8
  store %struct.se_session* %13, %struct.se_session** %5, align 8
  %14 = load %struct.se_session*, %struct.se_session** %5, align 8
  %15 = icmp ne %struct.se_session* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.se_session*, %struct.se_session** %5, align 8
  %18 = getelementptr inbounds %struct.se_session, %struct.se_session* %17, i32 0, i32 2
  %19 = load %struct.se_portal_group*, %struct.se_portal_group** %18, align 8
  %20 = icmp ne %struct.se_portal_group* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  br label %117

22:                                               ; preds = %16
  %23 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %24 = call i32 @target_check_scsi2_reservation_conflict(%struct.se_cmd* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %117

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @TCM_RESERVATION_CONFLICT, align 4
  store i32 %32, i32* %2, align 4
  br label %121

33:                                               ; preds = %28
  %34 = load %struct.se_device*, %struct.se_device** %4, align 8
  %35 = getelementptr inbounds %struct.se_device, %struct.se_device* %34, i32 0, i32 2
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.se_device*, %struct.se_device** %4, align 8
  %38 = getelementptr inbounds %struct.se_device, %struct.se_device* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.se_session*, %struct.se_session** %5, align 8
  %43 = icmp ne %struct.se_session* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %33
  br label %113

45:                                               ; preds = %41
  %46 = load %struct.se_device*, %struct.se_device** %4, align 8
  %47 = getelementptr inbounds %struct.se_device, %struct.se_device* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load %struct.se_session*, %struct.se_session** %5, align 8
  %50 = getelementptr inbounds %struct.se_session, %struct.se_session* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = icmp ne %struct.TYPE_8__* %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %113

54:                                               ; preds = %45
  %55 = load %struct.se_device*, %struct.se_device** %4, align 8
  %56 = getelementptr inbounds %struct.se_device, %struct.se_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.se_session*, %struct.se_session** %5, align 8
  %59 = getelementptr inbounds %struct.se_session, %struct.se_session* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %113

63:                                               ; preds = %54
  %64 = load %struct.se_device*, %struct.se_device** %4, align 8
  %65 = getelementptr inbounds %struct.se_device, %struct.se_device* %64, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %65, align 8
  %66 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.se_device*, %struct.se_device** %4, align 8
  %69 = getelementptr inbounds %struct.se_device, %struct.se_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.se_device*, %struct.se_device** %4, align 8
  %73 = getelementptr inbounds %struct.se_device, %struct.se_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DRF_SPC2_RESERVATIONS_WITH_ISID, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %63
  %79 = load %struct.se_device*, %struct.se_device** %4, align 8
  %80 = getelementptr inbounds %struct.se_device, %struct.se_device* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @DRF_SPC2_RESERVATIONS_WITH_ISID, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.se_device*, %struct.se_device** %4, align 8
  %84 = getelementptr inbounds %struct.se_device, %struct.se_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %78, %63
  %88 = load %struct.se_session*, %struct.se_session** %5, align 8
  %89 = getelementptr inbounds %struct.se_session, %struct.se_session* %88, i32 0, i32 2
  %90 = load %struct.se_portal_group*, %struct.se_portal_group** %89, align 8
  store %struct.se_portal_group* %90, %struct.se_portal_group** %6, align 8
  %91 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %92 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32 (...)*, i32 (...)** %94, align 8
  %96 = call i32 (...) %95()
  %97 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %98 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %103 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.se_session*, %struct.se_session** %5, align 8
  %108 = getelementptr inbounds %struct.se_session, %struct.se_session* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pr_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %101, i32 %106, i32 %111)
  br label %113

113:                                              ; preds = %87, %62, %53, %44
  %114 = load %struct.se_device*, %struct.se_device** %4, align 8
  %115 = getelementptr inbounds %struct.se_device, %struct.se_device* %114, i32 0, i32 2
  %116 = call i32 @spin_unlock(i32* %115)
  br label %117

117:                                              ; preds = %113, %27, %21
  %118 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %119 = load i32, i32* @GOOD, align 4
  %120 = call i32 @target_complete_cmd(%struct.se_cmd* %118, i32 %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %31
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @target_check_scsi2_reservation_conflict(%struct.se_cmd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
