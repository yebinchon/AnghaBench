; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_user_reg.c_tipc_reg_add_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_user_reg.c_tipc_reg_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_user = type { i32 }
%struct.user_port = type { i64, i32 }

@MAX_USERID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tipc_mode = common dso_local global i64 0, align 8
@TIPC_NOT_RUNNING = common dso_local global i64 0, align 8
@users = common dso_local global %struct.tipc_user* null, align 8
@ENOPROTOOPT = common dso_local global i32 0, align 4
@reg_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_reg_add_port(%struct.user_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.user_port*, align 8
  %4 = alloca %struct.tipc_user*, align 8
  store %struct.user_port* %0, %struct.user_port** %3, align 8
  %5 = load %struct.user_port*, %struct.user_port** %3, align 8
  %6 = getelementptr inbounds %struct.user_port, %struct.user_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.user_port*, %struct.user_port** %3, align 8
  %12 = getelementptr inbounds %struct.user_port, %struct.user_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX_USERID, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %10
  %20 = load i64, i64* @tipc_mode, align 8
  %21 = load i64, i64* @TIPC_NOT_RUNNING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load %struct.tipc_user*, %struct.tipc_user** @users, align 8
  %25 = icmp ne %struct.tipc_user* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* @ENOPROTOOPT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %42

29:                                               ; preds = %23
  %30 = call i32 @spin_lock_bh(i32* @reg_lock)
  %31 = load %struct.tipc_user*, %struct.tipc_user** @users, align 8
  %32 = load %struct.user_port*, %struct.user_port** %3, align 8
  %33 = getelementptr inbounds %struct.user_port, %struct.user_port* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.tipc_user, %struct.tipc_user* %31, i64 %34
  store %struct.tipc_user* %35, %struct.tipc_user** %4, align 8
  %36 = load %struct.user_port*, %struct.user_port** %3, align 8
  %37 = getelementptr inbounds %struct.user_port, %struct.user_port* %36, i32 0, i32 1
  %38 = load %struct.tipc_user*, %struct.tipc_user** %4, align 8
  %39 = getelementptr inbounds %struct.tipc_user, %struct.tipc_user* %38, i32 0, i32 0
  %40 = call i32 @list_add(i32* %37, i32* %39)
  %41 = call i32 @spin_unlock_bh(i32* @reg_lock)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %29, %26, %16, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
