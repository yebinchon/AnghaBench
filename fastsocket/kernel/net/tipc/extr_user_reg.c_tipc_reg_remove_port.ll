; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_user_reg.c_tipc_reg_remove_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_user_reg.c_tipc_reg_remove_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_port = type { i64, i32 }

@MAX_USERID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@users = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@reg_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_reg_remove_port(%struct.user_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.user_port*, align 8
  store %struct.user_port* %0, %struct.user_port** %3, align 8
  %4 = load %struct.user_port*, %struct.user_port** %3, align 8
  %5 = getelementptr inbounds %struct.user_port, %struct.user_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.user_port*, %struct.user_port** %3, align 8
  %11 = getelementptr inbounds %struct.user_port, %struct.user_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_USERID, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %30

18:                                               ; preds = %9
  %19 = load i32, i32* @users, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @ENOPROTOOPT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %18
  %25 = call i32 @spin_lock_bh(i32* @reg_lock)
  %26 = load %struct.user_port*, %struct.user_port** %3, align 8
  %27 = getelementptr inbounds %struct.user_port, %struct.user_port* %26, i32 0, i32 1
  %28 = call i32 @list_del_init(i32* %27)
  %29 = call i32 @spin_unlock_bh(i32* @reg_lock)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %21, %15, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
