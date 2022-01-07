; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_init_recovery_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_init_recovery_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_reco_node_data = type { i32, i32, i32 }

@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DLM_RECO_NODE_DATA_INIT = common dso_local global i32 0, align 4
@dlm_reco_state_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, i32)* @dlm_init_recovery_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_init_recovery_area(%struct.dlm_ctxt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_reco_node_data*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %9 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %16 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memcpy(i32 %14, i32 %17, i32 4)
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %20 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  br label %22

22:                                               ; preds = %2, %50
  %23 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %24 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @O2NM_MAX_NODES, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @find_next_bit(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @O2NM_MAX_NODES, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %67

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i32, i32* @GFP_NOFS, align 4
  %41 = call %struct.dlm_reco_node_data* @kzalloc(i32 12, i32 %40)
  store %struct.dlm_reco_node_data* %41, %struct.dlm_reco_node_data** %7, align 8
  %42 = load %struct.dlm_reco_node_data*, %struct.dlm_reco_node_data** %7, align 8
  %43 = icmp ne %struct.dlm_reco_node_data* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %34
  %45 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dlm_destroy_recovery_area(%struct.dlm_ctxt* %45, i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %68

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.dlm_reco_node_data*, %struct.dlm_reco_node_data** %7, align 8
  %53 = getelementptr inbounds %struct.dlm_reco_node_data, %struct.dlm_reco_node_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @DLM_RECO_NODE_DATA_INIT, align 4
  %55 = load %struct.dlm_reco_node_data*, %struct.dlm_reco_node_data** %7, align 8
  %56 = getelementptr inbounds %struct.dlm_reco_node_data, %struct.dlm_reco_node_data* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = call i32 @spin_lock(i32* @dlm_reco_state_lock)
  %58 = load %struct.dlm_reco_node_data*, %struct.dlm_reco_node_data** %7, align 8
  %59 = getelementptr inbounds %struct.dlm_reco_node_data, %struct.dlm_reco_node_data* %58, i32 0, i32 1
  %60 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %61 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @list_add_tail(i32* %59, i32* %62)
  %64 = call i32 @spin_unlock(i32* @dlm_reco_state_lock)
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %22

67:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.dlm_reco_node_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dlm_destroy_recovery_area(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
