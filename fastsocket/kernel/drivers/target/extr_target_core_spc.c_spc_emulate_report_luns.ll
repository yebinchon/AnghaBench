; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_report_luns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_report_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.se_session* }
%struct.se_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.se_dev_entry** }
%struct.se_dev_entry = type { i32, i32 }
%struct.scsi_lun = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"REPORT LUNS allocation length %u too small\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@TRANSPORT_MAX_LUNS_PER_TPG = common dso_local global i64 0, align 8
@TRANSPORT_LUNFLAGS_INITIATOR_ACCESS = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spc_emulate_report_luns(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_dev_entry*, align 8
  %5 = alloca %struct.se_session*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 1
  %12 = load %struct.se_session*, %struct.se_session** %11, align 8
  store %struct.se_session* %12, %struct.se_session** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 8, i64* %8, align 8
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %22, i32* %2, align 4
  br label %127

23:                                               ; preds = %1
  %24 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %25 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %29, i32* %2, align 4
  br label %127

30:                                               ; preds = %23
  %31 = load %struct.se_session*, %struct.se_session** %5, align 8
  %32 = icmp ne %struct.se_session* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = bitcast i8* %36 to %struct.scsi_lun*
  %38 = call i32 @int_to_scsilun(i32 0, %struct.scsi_lun* %37)
  store i64 1, i64* %7, align 8
  br label %96

39:                                               ; preds = %30
  %40 = load %struct.se_session*, %struct.se_session** %5, align 8
  %41 = getelementptr inbounds %struct.se_session, %struct.se_session* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_irq(i32* %43)
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %87, %39
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @TRANSPORT_MAX_LUNS_PER_TPG, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %45
  %50 = load %struct.se_session*, %struct.se_session** %5, align 8
  %51 = getelementptr inbounds %struct.se_session, %struct.se_session* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %54, i64 %55
  %57 = load %struct.se_dev_entry*, %struct.se_dev_entry** %56, align 8
  store %struct.se_dev_entry* %57, %struct.se_dev_entry** %4, align 8
  %58 = load %struct.se_dev_entry*, %struct.se_dev_entry** %4, align 8
  %59 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TRANSPORT_LUNFLAGS_INITIATOR_ACCESS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %49
  br label %87

65:                                               ; preds = %49
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 8
  %70 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %71 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ugt i64 %69, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %87

76:                                               ; preds = %65
  %77 = load %struct.se_dev_entry*, %struct.se_dev_entry** %4, align 8
  %78 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = bitcast i8* %82 to %struct.scsi_lun*
  %84 = call i32 @int_to_scsilun(i32 %79, %struct.scsi_lun* %83)
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 8
  store i64 %86, i64* %8, align 8
  br label %87

87:                                               ; preds = %76, %75, %64
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %9, align 8
  br label %45

90:                                               ; preds = %45
  %91 = load %struct.se_session*, %struct.se_session** %5, align 8
  %92 = getelementptr inbounds %struct.se_session, %struct.se_session* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock_irq(i32* %94)
  br label %96

96:                                               ; preds = %90, %33
  %97 = load i64, i64* %7, align 8
  %98 = mul i64 %97, 8
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = lshr i64 %99, 24
  %101 = and i64 %100, 255
  %102 = trunc i64 %101 to i8
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  store i8 %102, i8* %104, align 1
  %105 = load i64, i64* %7, align 8
  %106 = lshr i64 %105, 16
  %107 = and i64 %106, 255
  %108 = trunc i64 %107 to i8
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 %108, i8* %110, align 1
  %111 = load i64, i64* %7, align 8
  %112 = lshr i64 %111, 8
  %113 = and i64 %112, 255
  %114 = trunc i64 %113 to i8
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  store i8 %114, i8* %116, align 1
  %117 = load i64, i64* %7, align 8
  %118 = and i64 %117, 255
  %119 = trunc i64 %118 to i8
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 3
  store i8 %119, i8* %121, align 1
  %122 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %123 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %122)
  %124 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %125 = load i32, i32* @GOOD, align 4
  %126 = call i32 @target_complete_cmd(%struct.se_cmd* %124, i32 %125)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %96, %28, %17
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
