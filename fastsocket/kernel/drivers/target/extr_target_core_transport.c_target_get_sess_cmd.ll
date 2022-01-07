; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_get_sess_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_get_sess_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { i32, i32, i64 }
%struct.se_cmd = type { i32, i32, i32, i32 }

@SCF_ACK_KREF = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_session*, %struct.se_cmd*, i32)* @target_get_sess_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_get_sess_cmd(%struct.se_session* %0, %struct.se_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.se_session*, align 8
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.se_session* %0, %struct.se_session** %4, align 8
  store %struct.se_cmd* %1, %struct.se_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %9, i32 0, i32 3
  %11 = call i32 @kref_init(i32* %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 3
  %17 = call i32 @kref_get(i32* %16)
  %18 = load i32, i32* @SCF_ACK_KREF, align 4
  %19 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %14, %3
  %24 = load %struct.se_session*, %struct.se_session** %4, align 8
  %25 = getelementptr inbounds %struct.se_session, %struct.se_session* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.se_session*, %struct.se_session** %4, align 8
  %29 = getelementptr inbounds %struct.se_session, %struct.se_session* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @ESHUTDOWN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %43

35:                                               ; preds = %23
  %36 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %36, i32 0, i32 1
  %38 = load %struct.se_session*, %struct.se_session** %4, align 8
  %39 = getelementptr inbounds %struct.se_session, %struct.se_session* %38, i32 0, i32 1
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  %41 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %35, %32
  %44 = load %struct.se_session*, %struct.se_session** %4, align 8
  %45 = getelementptr inbounds %struct.se_session, %struct.se_session* %44, i32 0, i32 0
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
