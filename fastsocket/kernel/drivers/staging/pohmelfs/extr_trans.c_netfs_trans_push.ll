; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_trans.c_netfs_trans_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_trans.c_netfs_trans_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfs_trans = type { i32, i32 }
%struct.netfs_state = type { i32 }

@NETFS_TRANS_SINGLE_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfs_trans*, %struct.netfs_state*)* @netfs_trans_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netfs_trans_push(%struct.netfs_trans* %0, %struct.netfs_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netfs_trans*, align 8
  %5 = alloca %struct.netfs_state*, align 8
  %6 = alloca i32, align 4
  store %struct.netfs_trans* %0, %struct.netfs_trans** %4, align 8
  store %struct.netfs_state* %1, %struct.netfs_state** %5, align 8
  %7 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %8 = load %struct.netfs_state*, %struct.netfs_state** %5, align 8
  %9 = call i32 @netfs_trans_push_dst(%struct.netfs_trans* %7, %struct.netfs_state* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %16 = load %struct.netfs_state*, %struct.netfs_state** %5, align 8
  %17 = call i32 @netfs_trans_send(%struct.netfs_trans* %15, %struct.netfs_state* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %34

21:                                               ; preds = %14
  %22 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %23 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NETFS_TRANS_SINGLE_DST, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.netfs_state*, %struct.netfs_state** %5, align 8
  %30 = getelementptr inbounds %struct.netfs_state, %struct.netfs_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pohmelfs_switch_active(i32 %31)
  br label %33

33:                                               ; preds = %28, %21
  store i32 0, i32* %3, align 4
  br label %42

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %37 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %39 = load %struct.netfs_state*, %struct.netfs_state** %5, align 8
  %40 = call i32 @netfs_trans_drop_last(%struct.netfs_trans* %38, %struct.netfs_state* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %34, %33, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @netfs_trans_push_dst(%struct.netfs_trans*, %struct.netfs_state*) #1

declare dso_local i32 @netfs_trans_send(%struct.netfs_trans*, %struct.netfs_state*) #1

declare dso_local i32 @pohmelfs_switch_active(i32) #1

declare dso_local i32 @netfs_trans_drop_last(%struct.netfs_trans*, %struct.netfs_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
