; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_log_cil.c_xlog_cil_free_logvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_log_cil.c_xlog_cil_free_logvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_log_vec = type { %struct.xfs_log_vec*, %struct.xfs_log_vec* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_log_vec*)* @xlog_cil_free_logvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlog_cil_free_logvec(%struct.xfs_log_vec* %0) #0 {
  %2 = alloca %struct.xfs_log_vec*, align 8
  %3 = alloca %struct.xfs_log_vec*, align 8
  %4 = alloca %struct.xfs_log_vec*, align 8
  store %struct.xfs_log_vec* %0, %struct.xfs_log_vec** %2, align 8
  %5 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %2, align 8
  store %struct.xfs_log_vec* %5, %struct.xfs_log_vec** %3, align 8
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %3, align 8
  %8 = icmp ne %struct.xfs_log_vec* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_log_vec, %struct.xfs_log_vec* %10, i32 0, i32 1
  %12 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %11, align 8
  store %struct.xfs_log_vec* %12, %struct.xfs_log_vec** %4, align 8
  %13 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %3, align 8
  %14 = getelementptr inbounds %struct.xfs_log_vec, %struct.xfs_log_vec* %13, i32 0, i32 0
  %15 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %14, align 8
  %16 = call i32 @kmem_free(%struct.xfs_log_vec* %15)
  %17 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %3, align 8
  %18 = call i32 @kmem_free(%struct.xfs_log_vec* %17)
  %19 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %4, align 8
  store %struct.xfs_log_vec* %19, %struct.xfs_log_vec** %3, align 8
  br label %6

20:                                               ; preds = %6
  ret void
}

declare dso_local i32 @kmem_free(%struct.xfs_log_vec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
