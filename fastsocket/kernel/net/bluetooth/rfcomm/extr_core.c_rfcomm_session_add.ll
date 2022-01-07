; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_session_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_session_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32, i32, i32, i32, %struct.socket*, i32, i32 }
%struct.socket = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"session %p sock %p\00", align 1
@rfcomm_session_timeout = common dso_local global i32 0, align 4
@RFCOMM_DEFAULT_MTU = common dso_local global i32 0, align 4
@disable_cfc = common dso_local global i64 0, align 8
@RFCOMM_CFC_DISABLED = common dso_local global i32 0, align 4
@RFCOMM_CFC_UNKNOWN = common dso_local global i32 0, align 4
@BT_LISTEN = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@session_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rfcomm_session* (%struct.socket*, i32)* @rfcomm_session_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rfcomm_session* @rfcomm_session_add(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.rfcomm_session*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfcomm_session*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rfcomm_session* @kzalloc(i32 32, i32 %7)
  store %struct.rfcomm_session* %8, %struct.rfcomm_session** %6, align 8
  %9 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %10 = icmp ne %struct.rfcomm_session* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.rfcomm_session* null, %struct.rfcomm_session** %3, align 8
  br label %60

12:                                               ; preds = %2
  %13 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %13, %struct.socket* %14)
  %16 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %17 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %16, i32 0, i32 6
  %18 = load i32, i32* @rfcomm_session_timeout, align 4
  %19 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %20 = ptrtoint %struct.rfcomm_session* %19 to i64
  %21 = call i32 @setup_timer(i32* %17, i32 %18, i64 %20)
  %22 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %23 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %22, i32 0, i32 5
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %27 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.socket*, %struct.socket** %4, align 8
  %29 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %30 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %29, i32 0, i32 4
  store %struct.socket* %28, %struct.socket** %30, align 8
  %31 = load i32, i32* @RFCOMM_DEFAULT_MTU, align 4
  %32 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %33 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* @disable_cfc, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %12
  %37 = load i32, i32* @RFCOMM_CFC_DISABLED, align 4
  br label %40

38:                                               ; preds = %12
  %39 = load i32, i32* @RFCOMM_CFC_UNKNOWN, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %43 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @BT_LISTEN, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load i32, i32* @THIS_MODULE, align 4
  %49 = call i32 @try_module_get(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %53 = call i32 @kfree(%struct.rfcomm_session* %52)
  store %struct.rfcomm_session* null, %struct.rfcomm_session** %3, align 8
  br label %60

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %57 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %56, i32 0, i32 1
  %58 = call i32 @list_add(i32* %57, i32* @session_list)
  %59 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  store %struct.rfcomm_session* %59, %struct.rfcomm_session** %3, align 8
  br label %60

60:                                               ; preds = %55, %51, %11
  %61 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  ret %struct.rfcomm_session* %61
}

declare dso_local %struct.rfcomm_session* @kzalloc(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, %struct.socket*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @kfree(%struct.rfcomm_session*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
