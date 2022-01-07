; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_send_finalize_reco_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_send_finalize_reco_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_finalize_reco = type { i32, i32, i32 }
%struct.dlm_node_iter = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"finishing recovery for node %s:%u, stage %d\0A\00", align 1
@DLM_FINALIZE_STAGE2 = common dso_local global i32 0, align 4
@DLM_FINALIZE_RECO_MSG = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"node %u went down after this node finished recovery.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*)* @dlm_send_finalize_reco_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_finalize_reco_message(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_finalize_reco, align 4
  %5 = alloca %struct.dlm_node_iter, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %10 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %13 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %16)
  %18 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %19 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %18, i32 0, i32 3
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %22 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dlm_node_iter_init(i32 %23, %struct.dlm_node_iter* %5)
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %26 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %25, i32 0, i32 3
  %27 = call i32 @spin_unlock(i32* %26)
  br label %28

28:                                               ; preds = %86, %1
  %29 = call i32 @memset(%struct.dlm_finalize_reco* %4, i32 0, i32 12)
  %30 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %31 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %4, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %35 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %4, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load i32, i32* @DLM_FINALIZE_STAGE2, align 4
  %43 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %28
  br label %47

47:                                               ; preds = %82, %77, %56, %46
  %48 = call i32 @dlm_node_iter_next(%struct.dlm_node_iter* %5)
  store i32 %48, i32* %6, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %53 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %47

57:                                               ; preds = %50
  %58 = load i32, i32* @DLM_FINALIZE_RECO_MSG, align 4
  %59 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %60 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @o2net_send_message(i32 %58, i32 %61, %struct.dlm_finalize_reco* %4, i32 12, i32 %62, i32* %7)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %57
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i64 @dlm_is_host_down(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @ML_ERROR, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i32, i8*, i32, ...) @mlog(i32 %78, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32 0, i32* %3, align 4
  br label %47

81:                                               ; preds = %71
  br label %83

82:                                               ; preds = %68
  br label %47

83:                                               ; preds = %81, %47
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %5, i32 0, i32 0
  store i32 -1, i32* %87, align 4
  store i32 2, i32* %8, align 4
  br label %28

88:                                               ; preds = %83
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_node_iter_init(i32, %struct.dlm_node_iter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memset(%struct.dlm_finalize_reco*, i32, i32) #1

declare dso_local i32 @dlm_node_iter_next(%struct.dlm_node_iter*) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_finalize_reco*, i32, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @dlm_is_host_down(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
