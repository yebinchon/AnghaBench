; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_generic_request_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_generic_request_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, %struct.TYPE_8__*, i32*, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c"-----[ Storage Engine Exception for cmd: %p ITT: 0x%08x CDB: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"-----[ i_state: %d t_state: %d sense_reason: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"-----[ CMD_T_ACTIVE: %d CMD_T_STOP: %d CMD_T_SENT: %d\0A\00", align 1
@CMD_T_ACTIVE = common dso_local global i32 0, align 4
@CMD_T_STOP = common dso_local global i32 0, align 4
@CMD_T_SENT = common dso_local global i32 0, align 4
@SAM_STAT_RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@ASCQ_2CH_PREVIOUS_RESERVATION_CONFLICT_STATUS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Unknown transport error for CDB 0x%02x: %d\0A\00", align 1
@TRANSPORT_COMPLETE_QF_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_generic_request_failure(%struct.se_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %7 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %10, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %13 = call i32 %11(%struct.se_cmd* %12)
  %14 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), %struct.se_cmd* %6, i32 %13, i32 %18)
  %20 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %23, align 8
  %25 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %26 = call i32 %24(%struct.se_cmd* %25)
  %27 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29, i32 %30)
  %32 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CMD_T_ACTIVE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CMD_T_STOP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CMD_T_SENT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %45, i32 %52)
  %54 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %55 = call i32 @transport_complete_task_attr(%struct.se_cmd* %54)
  %56 = load i32, i32* %4, align 4
  switch i32 %56, label %105 [
    i32 134, label %57
    i32 129, label %57
    i32 137, label %57
    i32 136, label %57
    i32 132, label %57
    i32 135, label %57
    i32 130, label %57
    i32 128, label %57
    i32 141, label %57
    i32 140, label %57
    i32 138, label %57
    i32 139, label %57
    i32 133, label %58
    i32 131, label %59
  ]

57:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %113

58:                                               ; preds = %2
  store i32 135, i32* %4, align 4
  br label %113

59:                                               ; preds = %2
  %60 = load i32, i32* @SAM_STAT_RESERVATION_CONFLICT, align 4
  %61 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %62 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  %63 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %63, i32 0, i32 6
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %59
  %68 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %69 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %68, i32 0, i32 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %77 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %76, i32 0, i32 6
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %82 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ASCQ_2CH_PREVIOUS_RESERVATION_CONFLICT_STATUS, align 4
  %85 = call i32 @core_scsi3_ua_allocate(i32 %80, i32 %83, i32 44, i32 %84)
  br label %86

86:                                               ; preds = %75, %67, %59
  %87 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %88 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %87, i32 0, i32 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %90, align 8
  %92 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %93 = call i32 %91(%struct.se_cmd* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %103, label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98, %86
  br label %136

104:                                              ; preds = %98
  br label %128

105:                                              ; preds = %2
  %106 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %107 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111)
  store i32 129, i32* %4, align 4
  br label %113

113:                                              ; preds = %105, %58, %57
  %114 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @transport_send_check_condition_and_sense(%struct.se_cmd* %114, i32 %115, i32 0)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %126, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121, %113
  br label %136

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %104
  %129 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %130 = call i32 @transport_lun_remove_cmd(%struct.se_cmd* %129)
  %131 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %132 = call i32 @transport_cmd_check_stop_to_fabric(%struct.se_cmd* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %128
  br label %145

136:                                              ; preds = %126, %103
  %137 = load i32, i32* @TRANSPORT_COMPLETE_QF_OK, align 4
  %138 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %139 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %141 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %142 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %141, i32 0, i32 2
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = call i32 @transport_handle_queue_full(%struct.se_cmd* %140, %struct.TYPE_8__* %143)
  br label %145

145:                                              ; preds = %136, %135
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @transport_complete_task_attr(%struct.se_cmd*) #1

declare dso_local i32 @core_scsi3_ua_allocate(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @transport_send_check_condition_and_sense(%struct.se_cmd*, i32, i32) #1

declare dso_local i32 @transport_lun_remove_cmd(%struct.se_cmd*) #1

declare dso_local i32 @transport_cmd_check_stop_to_fabric(%struct.se_cmd*) #1

declare dso_local i32 @transport_handle_queue_full(%struct.se_cmd*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
