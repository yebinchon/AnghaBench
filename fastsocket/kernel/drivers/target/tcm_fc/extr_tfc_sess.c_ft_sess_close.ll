; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_sess.c_ft_sess_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_sess.c_ft_sess_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { %struct.ft_sess* }
%struct.ft_sess = type { i32 }

@ft_lport_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"port_id %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ft_sess_close(%struct.se_session* %0) #0 {
  %2 = alloca %struct.se_session*, align 8
  %3 = alloca %struct.ft_sess*, align 8
  %4 = alloca i32, align 4
  store %struct.se_session* %0, %struct.se_session** %2, align 8
  %5 = load %struct.se_session*, %struct.se_session** %2, align 8
  %6 = getelementptr inbounds %struct.se_session, %struct.se_session* %5, i32 0, i32 0
  %7 = load %struct.ft_sess*, %struct.ft_sess** %6, align 8
  store %struct.ft_sess* %7, %struct.ft_sess** %3, align 8
  %8 = call i32 @mutex_lock(i32* @ft_lport_lock)
  %9 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %10 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @mutex_unlock(i32* @ft_lport_lock)
  br label %27

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %20 = call i32 @ft_sess_unhash(%struct.ft_sess* %19)
  %21 = call i32 @mutex_unlock(i32* @ft_lport_lock)
  %22 = load %struct.se_session*, %struct.se_session** %2, align 8
  %23 = call i32 @transport_deregister_session_configfs(%struct.se_session* %22)
  %24 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %25 = call i32 @ft_sess_put(%struct.ft_sess* %24)
  %26 = call i32 (...) @synchronize_rcu()
  br label %27

27:                                               ; preds = %16, %14
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @ft_sess_unhash(%struct.ft_sess*) #1

declare dso_local i32 @transport_deregister_session_configfs(%struct.se_session*) #1

declare dso_local i32 @ft_sess_put(%struct.ft_sess*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
