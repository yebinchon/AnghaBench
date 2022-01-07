; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_dquot_item.c_xfs_qm_dquot_logitem_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_dquot_item.c_xfs_qm_dquot_logitem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dquot = type { i64, i32, %struct.TYPE_3__, i32, %struct.xfs_dq_logitem }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_dq_logitem = type { %struct.TYPE_4__, %struct.xfs_dquot*, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32 }

@XFS_LI_DQUOT = common dso_local global i32 0, align 4
@xfs_dquot_item_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_qm_dquot_logitem_init(%struct.xfs_dquot* %0) #0 {
  %2 = alloca %struct.xfs_dquot*, align 8
  %3 = alloca %struct.xfs_dq_logitem*, align 8
  store %struct.xfs_dquot* %0, %struct.xfs_dquot** %2, align 8
  %4 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %4, i32 0, i32 4
  store %struct.xfs_dq_logitem* %5, %struct.xfs_dq_logitem** %3, align 8
  %6 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %7 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.xfs_dq_logitem*, %struct.xfs_dq_logitem** %3, align 8
  %10 = getelementptr inbounds %struct.xfs_dq_logitem, %struct.xfs_dq_logitem* %9, i32 0, i32 2
  %11 = load i32, i32* @XFS_LI_DQUOT, align 4
  %12 = call i32 @xfs_log_item_init(i32 %8, i32* %10, i32 %11, i32* @xfs_dquot_item_ops)
  %13 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %14 = load %struct.xfs_dq_logitem*, %struct.xfs_dq_logitem** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_dq_logitem, %struct.xfs_dq_logitem* %14, i32 0, i32 1
  store %struct.xfs_dquot* %13, %struct.xfs_dquot** %15, align 8
  %16 = load i32, i32* @XFS_LI_DQUOT, align 4
  %17 = load %struct.xfs_dq_logitem*, %struct.xfs_dq_logitem** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_dq_logitem, %struct.xfs_dq_logitem* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 8
  %20 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %21 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32_to_cpu(i32 %23)
  %25 = load %struct.xfs_dq_logitem*, %struct.xfs_dq_logitem** %3, align 8
  %26 = getelementptr inbounds %struct.xfs_dq_logitem, %struct.xfs_dq_logitem* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %29 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.xfs_dq_logitem*, %struct.xfs_dq_logitem** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_dq_logitem, %struct.xfs_dq_logitem* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.xfs_dq_logitem*, %struct.xfs_dq_logitem** %3, align 8
  %35 = getelementptr inbounds %struct.xfs_dq_logitem, %struct.xfs_dq_logitem* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %38 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.xfs_dq_logitem*, %struct.xfs_dq_logitem** %3, align 8
  %41 = getelementptr inbounds %struct.xfs_dq_logitem, %struct.xfs_dq_logitem* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  ret void
}

declare dso_local i32 @xfs_log_item_init(i32, i32*, i32, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
