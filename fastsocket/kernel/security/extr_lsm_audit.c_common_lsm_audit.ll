; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_lsm_audit.c_common_lsm_audit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_lsm_audit.c_common_lsm_audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.common_audit_data = type { i32 (%struct.audit_buffer*, %struct.common_audit_data*)*, i32 (%struct.audit_buffer.0*, %struct.common_audit_data*)* }
%struct.audit_buffer = type opaque
%struct.audit_buffer.0 = type opaque
%struct.audit_buffer.1 = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AUDIT_AVC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @common_lsm_audit(%struct.common_audit_data* %0) #0 {
  %2 = alloca %struct.common_audit_data*, align 8
  %3 = alloca %struct.audit_buffer.1*, align 8
  store %struct.common_audit_data* %0, %struct.common_audit_data** %2, align 8
  %4 = load %struct.common_audit_data*, %struct.common_audit_data** %2, align 8
  %5 = icmp eq %struct.common_audit_data* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %49

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = load i32, i32* @AUDIT_AVC, align 4
  %13 = call %struct.audit_buffer.1* @audit_log_start(i32 %10, i32 %11, i32 %12)
  store %struct.audit_buffer.1* %13, %struct.audit_buffer.1** %3, align 8
  %14 = load %struct.audit_buffer.1*, %struct.audit_buffer.1** %3, align 8
  %15 = icmp eq %struct.audit_buffer.1* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %49

17:                                               ; preds = %7
  %18 = load %struct.common_audit_data*, %struct.common_audit_data** %2, align 8
  %19 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %18, i32 0, i32 1
  %20 = load i32 (%struct.audit_buffer.0*, %struct.common_audit_data*)*, i32 (%struct.audit_buffer.0*, %struct.common_audit_data*)** %19, align 8
  %21 = icmp ne i32 (%struct.audit_buffer.0*, %struct.common_audit_data*)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.common_audit_data*, %struct.common_audit_data** %2, align 8
  %24 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %23, i32 0, i32 1
  %25 = load i32 (%struct.audit_buffer.0*, %struct.common_audit_data*)*, i32 (%struct.audit_buffer.0*, %struct.common_audit_data*)** %24, align 8
  %26 = load %struct.audit_buffer.1*, %struct.audit_buffer.1** %3, align 8
  %27 = bitcast %struct.audit_buffer.1* %26 to %struct.audit_buffer.0*
  %28 = load %struct.common_audit_data*, %struct.common_audit_data** %2, align 8
  %29 = call i32 %25(%struct.audit_buffer.0* %27, %struct.common_audit_data* %28)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.audit_buffer.1*, %struct.audit_buffer.1** %3, align 8
  %32 = load %struct.common_audit_data*, %struct.common_audit_data** %2, align 8
  %33 = call i32 @dump_common_audit_data(%struct.audit_buffer.1* %31, %struct.common_audit_data* %32)
  %34 = load %struct.common_audit_data*, %struct.common_audit_data** %2, align 8
  %35 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %34, i32 0, i32 0
  %36 = load i32 (%struct.audit_buffer*, %struct.common_audit_data*)*, i32 (%struct.audit_buffer*, %struct.common_audit_data*)** %35, align 8
  %37 = icmp ne i32 (%struct.audit_buffer*, %struct.common_audit_data*)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.common_audit_data*, %struct.common_audit_data** %2, align 8
  %40 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %39, i32 0, i32 0
  %41 = load i32 (%struct.audit_buffer*, %struct.common_audit_data*)*, i32 (%struct.audit_buffer*, %struct.common_audit_data*)** %40, align 8
  %42 = load %struct.audit_buffer.1*, %struct.audit_buffer.1** %3, align 8
  %43 = bitcast %struct.audit_buffer.1* %42 to %struct.audit_buffer*
  %44 = load %struct.common_audit_data*, %struct.common_audit_data** %2, align 8
  %45 = call i32 %41(%struct.audit_buffer* %43, %struct.common_audit_data* %44)
  br label %46

46:                                               ; preds = %38, %30
  %47 = load %struct.audit_buffer.1*, %struct.audit_buffer.1** %3, align 8
  %48 = call i32 @audit_log_end(%struct.audit_buffer.1* %47)
  br label %49

49:                                               ; preds = %46, %16, %6
  ret void
}

declare dso_local %struct.audit_buffer.1* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @dump_common_audit_data(%struct.audit_buffer.1*, %struct.common_audit_data*) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
