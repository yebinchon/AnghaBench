; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_output_path_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_output_path_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i64 }
%struct.vfe_interrupt_status = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@ctrl = common dso_local global %struct.TYPE_5__* null, align 8
@VFE_STATE_IDLE = common dso_local global i32 0, align 4
@VFE_MSG_ID_SNAPSHOT_DONE = common dso_local global i32 0, align 4
@VFE_TEST_GEN_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_interrupt_status*)* @vfe_process_output_path_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_process_output_path_irq(%struct.vfe_interrupt_status* %0) #0 {
  %2 = alloca %struct.vfe_interrupt_status*, align 8
  store %struct.vfe_interrupt_status* %0, %struct.vfe_interrupt_status** %2, align 8
  %3 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %4 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %3, i32 0, i32 7
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %62

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %7
  %14 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %15 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @vfe_process_pingpong_irq(i32* %21, i32 %25)
  br label %27

27:                                               ; preds = %18, %13
  %28 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %29 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @vfe_process_pingpong_irq(i32* %35, i32 %39)
  br label %41

41:                                               ; preds = %32, %27
  %42 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %43 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = call i32 @vfe_process_frame_done_irq_multi_frag(%struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %46, %41
  br label %61

51:                                               ; preds = %7
  %52 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %53 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = call i32 @vfe_process_frame_done_irq_no_frag(%struct.TYPE_4__* %58)
  br label %60

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61, %1
  %63 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %64 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %122

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %111

73:                                               ; preds = %67
  %74 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %75 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @vfe_process_pingpong_irq(i32* %81, i32 %85)
  br label %87

87:                                               ; preds = %78, %73
  %88 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %89 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @vfe_process_pingpong_irq(i32* %95, i32 %99)
  br label %101

101:                                              ; preds = %92, %87
  %102 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %103 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = call i32 @vfe_process_frame_done_irq_multi_frag(%struct.TYPE_4__* %108)
  br label %110

110:                                              ; preds = %106, %101
  br label %121

111:                                              ; preds = %67
  %112 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %113 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = call i32 @vfe_process_frame_done_irq_no_frag(%struct.TYPE_4__* %118)
  br label %120

120:                                              ; preds = %116, %111
  br label %121

121:                                              ; preds = %120, %110
  br label %122

122:                                              ; preds = %121, %62
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %149

127:                                              ; preds = %122
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %127
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load i32, i32* @VFE_STATE_IDLE, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @VFE_MSG_ID_SNAPSHOT_DONE, align 4
  %144 = call i32 @vfe_send_msg_no_payload(i32 %143)
  %145 = load i32, i32* @VFE_TEST_GEN_STOP, align 4
  %146 = call i32 @vfe_prog_hw_testgen_cmd(i32 %145)
  %147 = call i32 (...) @vfe_pm_stop()
  br label %148

148:                                              ; preds = %139, %133, %127
  br label %149

149:                                              ; preds = %148, %122
  ret void
}

declare dso_local i32 @vfe_process_pingpong_irq(i32*, i32) #1

declare dso_local i32 @vfe_process_frame_done_irq_multi_frag(%struct.TYPE_4__*) #1

declare dso_local i32 @vfe_process_frame_done_irq_no_frag(%struct.TYPE_4__*) #1

declare dso_local i32 @vfe_send_msg_no_payload(i32) #1

declare dso_local i32 @vfe_prog_hw_testgen_cmd(i32) #1

declare dso_local i32 @vfe_pm_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
