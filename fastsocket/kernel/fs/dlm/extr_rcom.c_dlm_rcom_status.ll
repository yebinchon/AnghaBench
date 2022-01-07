; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_dlm_rcom_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_dlm_rcom_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dlm_ls = type { i32, %struct.dlm_rcom* }
%struct.dlm_rcom = type { i32, i32 }
%struct.dlm_mhandle = type { i32 }

@DLM_RCOM_STATUS = common dso_local global i32 0, align 4
@dlm_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@rcom_response = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"remote node %d not ready\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_rcom_status(%struct.dlm_ls* %0, i32 %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca %struct.dlm_mhandle*, align 8
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %10 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (...) @dlm_our_nodeid()
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %16 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %15, i32 0, i32 1
  %17 = load %struct.dlm_rcom*, %struct.dlm_rcom** %16, align 8
  store %struct.dlm_rcom* %17, %struct.dlm_rcom** %5, align 8
  %18 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %19 = call i32 @dlm_recover_status(%struct.dlm_ls* %18)
  %20 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %21 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DLM_RCOM_STATUS, align 4
  %26 = call i32 @create_rcom(%struct.dlm_ls* %23, i32 %24, i32 %25, i32 0, %struct.dlm_rcom** %5, %struct.dlm_mhandle** %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %73

30:                                               ; preds = %22
  %31 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %32 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %33 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %32, i32 0, i32 1
  %34 = call i32 @allow_sync_reply(%struct.dlm_ls* %31, i32* %33)
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %36 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %35, i32 0, i32 1
  %37 = load %struct.dlm_rcom*, %struct.dlm_rcom** %36, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 0), align 4
  %39 = call i32 @memset(%struct.dlm_rcom* %37, i32 0, i32 %38)
  %40 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %41 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %6, align 8
  %42 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %43 = call i32 @send_rcom(%struct.dlm_ls* %40, %struct.dlm_mhandle* %41, %struct.dlm_rcom* %42)
  %44 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %45 = call i32 @dlm_wait_function(%struct.dlm_ls* %44, i32* @rcom_response)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %47 = call i32 @disallow_sync_reply(%struct.dlm_ls* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  br label %73

51:                                               ; preds = %30
  %52 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %53 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %52, i32 0, i32 1
  %54 = load %struct.dlm_rcom*, %struct.dlm_rcom** %53, align 8
  store %struct.dlm_rcom* %54, %struct.dlm_rcom** %5, align 8
  %55 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %56 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ESRCH, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @log_debug(%struct.dlm_ls* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %66 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %72

67:                                               ; preds = %51
  %68 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %69 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @check_config(%struct.dlm_ls* %68, %struct.dlm_rcom* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %72, %50, %29, %14
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @dlm_recover_status(%struct.dlm_ls*) #1

declare dso_local i32 @create_rcom(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**) #1

declare dso_local i32 @allow_sync_reply(%struct.dlm_ls*, i32*) #1

declare dso_local i32 @memset(%struct.dlm_rcom*, i32, i32) #1

declare dso_local i32 @send_rcom(%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*) #1

declare dso_local i32 @dlm_wait_function(%struct.dlm_ls*, i32*) #1

declare dso_local i32 @disallow_sync_reply(%struct.dlm_ls*) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32) #1

declare dso_local i32 @check_config(%struct.dlm_ls*, %struct.dlm_rcom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
