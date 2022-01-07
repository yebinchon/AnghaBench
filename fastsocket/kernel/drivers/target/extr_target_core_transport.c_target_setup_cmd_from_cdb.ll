; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_setup_cmd_from_cdb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_setup_cmd_from_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.TYPE_8__*, i32, i32, i32, i32*, i32*, %struct.se_device* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.se_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.se_cmd*)* }

@SCSI_MAX_VARLEN_CDB_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [83 x i8] c"Received SCSI CDB with command_size: %d that exceeds SCSI_MAX_VARLEN_CDB_SIZE: %d\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Unable to allocate cmd->t_task_cdb %u > sizeof(cmd->__t_task_cdb): %lu ops\0A\00", align 1
@TCM_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@SAM_STAT_RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@SCF_SUPPORTED_SAM_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @target_setup_cmd_from_cdb(%struct.se_cmd* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %9, i32 0, i32 6
  %11 = load %struct.se_device*, %struct.se_device** %10, align 8
  store %struct.se_device* %11, %struct.se_device** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @scsi_command_size(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @SCSI_MAX_VARLEN_CDB_SIZE, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @scsi_command_size(i8* %18)
  %20 = load i64, i64* @SCSI_MAX_VARLEN_CDB_SIZE, align 8
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %20)
  %22 = load i64, i64* @TCM_INVALID_CDB_FIELD, align 8
  store i64 %22, i64* %3, align 8
  br label %143

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @scsi_command_size(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %26, 8
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @scsi_command_size(i8* %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kzalloc(i32 %30, i32 %31)
  %33 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %33, i32 0, i32 4
  store i32* %32, i32** %34, align 8
  %35 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @scsi_command_size(i8* %40)
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %41, i64 8)
  %43 = load i64, i64* @TCM_OUT_OF_RESOURCES, align 8
  store i64 %43, i64* %3, align 8
  br label %143

44:                                               ; preds = %28
  br label %52

45:                                               ; preds = %23
  %46 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 4
  store i32* %49, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %44
  %53 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @scsi_command_size(i8* %57)
  %59 = call i32 @memcpy(i32* %55, i8* %56, i32 %58)
  %60 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %61 = call i64 @target_scsi3_ua_check(%struct.se_cmd* %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i64, i64* %8, align 8
  store i64 %65, i64* %3, align 8
  br label %143

66:                                               ; preds = %52
  %67 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %68 = call i64 @target_alua_state_check(%struct.se_cmd* %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %3, align 8
  br label %143

73:                                               ; preds = %66
  %74 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %75 = call i64 @target_check_reservation(%struct.se_cmd* %74)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @SAM_STAT_RESERVATION_CONFLICT, align 4
  %80 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* %3, align 8
  br label %143

83:                                               ; preds = %73
  %84 = load %struct.se_device*, %struct.se_device** %6, align 8
  %85 = getelementptr inbounds %struct.se_device, %struct.se_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64 (%struct.se_cmd*)*, i64 (%struct.se_cmd*)** %87, align 8
  %89 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %90 = call i64 %88(%struct.se_cmd* %89)
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %8, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i64, i64* %8, align 8
  store i64 %94, i64* %3, align 8
  br label %143

95:                                               ; preds = %83
  %96 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %97 = call i64 @transport_check_alloc_task_attr(%struct.se_cmd* %96)
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %8, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i64, i64* %8, align 8
  store i64 %101, i64* %3, align 8
  br label %143

102:                                              ; preds = %95
  %103 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %104 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %103, i32 0, i32 1
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @spin_lock_irqsave(i32* %104, i64 %105)
  %107 = load i32, i32* @SCF_SUPPORTED_SAM_OPCODE, align 4
  %108 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %109 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %113 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %112, i32 0, i32 1
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %117 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = call i32 @spin_lock(i32* %119)
  %121 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %122 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = icmp ne %struct.TYPE_7__* %125, null
  br i1 %126, label %127, label %137

127:                                              ; preds = %102
  %128 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %129 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %127, %102
  %138 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %139 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %138, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock(i32* %141)
  store i64 0, i64* %3, align 8
  br label %143

143:                                              ; preds = %137, %100, %93, %78, %71, %64, %39, %17
  %144 = load i64, i64* %3, align 8
  ret i64 %144
}

declare dso_local i32 @scsi_command_size(i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i64 @target_scsi3_ua_check(%struct.se_cmd*) #1

declare dso_local i64 @target_alua_state_check(%struct.se_cmd*) #1

declare dso_local i64 @target_check_reservation(%struct.se_cmd*) #1

declare dso_local i64 @transport_check_alloc_task_attr(%struct.se_cmd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
