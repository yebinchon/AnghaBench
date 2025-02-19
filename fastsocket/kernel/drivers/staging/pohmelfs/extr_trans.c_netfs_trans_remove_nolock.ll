; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_trans.c_netfs_trans_remove_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_trans.c_netfs_trans_remove_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfs_trans_dst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.netfs_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netfs_trans_remove_nolock(%struct.netfs_trans_dst* %0, %struct.netfs_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netfs_trans_dst*, align 8
  %5 = alloca %struct.netfs_state*, align 8
  store %struct.netfs_trans_dst* %0, %struct.netfs_trans_dst** %4, align 8
  store %struct.netfs_state* %1, %struct.netfs_state** %5, align 8
  %6 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %4, align 8
  %7 = icmp ne %struct.netfs_trans_dst* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %4, align 8
  %10 = getelementptr inbounds %struct.netfs_trans_dst, %struct.netfs_trans_dst* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %4, align 8
  %16 = getelementptr inbounds %struct.netfs_trans_dst, %struct.netfs_trans_dst* %15, i32 0, i32 0
  %17 = load %struct.netfs_state*, %struct.netfs_state** %5, align 8
  %18 = getelementptr inbounds %struct.netfs_state, %struct.netfs_state* %17, i32 0, i32 0
  %19 = call i32 @rb_erase(%struct.TYPE_2__* %16, i32* %18)
  %20 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %4, align 8
  %21 = getelementptr inbounds %struct.netfs_trans_dst, %struct.netfs_trans_dst* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %14
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @rb_erase(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
