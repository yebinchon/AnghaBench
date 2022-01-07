; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_capi.c_cmtp_application_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_capi.c_cmtp_application_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_application = type { i32, i32, i32 }
%struct.cmtp_session = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"session %p application %p appl %d\00", align 1
@BT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmtp_application* (%struct.cmtp_session*, i32)* @cmtp_application_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmtp_application* @cmtp_application_add(%struct.cmtp_session* %0, i32 %1) #0 {
  %3 = alloca %struct.cmtp_application*, align 8
  %4 = alloca %struct.cmtp_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmtp_application*, align 8
  store %struct.cmtp_session* %0, %struct.cmtp_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cmtp_application* @kzalloc(i32 12, i32 %7)
  store %struct.cmtp_application* %8, %struct.cmtp_application** %6, align 8
  %9 = load %struct.cmtp_session*, %struct.cmtp_session** %4, align 8
  %10 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %9, %struct.cmtp_application* %10, i32 %11)
  %13 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %14 = icmp ne %struct.cmtp_application* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.cmtp_application* null, %struct.cmtp_application** %3, align 8
  br label %29

16:                                               ; preds = %2
  %17 = load i32, i32* @BT_OPEN, align 4
  %18 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %19 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %22 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %24 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %23, i32 0, i32 0
  %25 = load %struct.cmtp_session*, %struct.cmtp_session** %4, align 8
  %26 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %25, i32 0, i32 0
  %27 = call i32 @list_add_tail(i32* %24, i32* %26)
  %28 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  store %struct.cmtp_application* %28, %struct.cmtp_application** %3, align 8
  br label %29

29:                                               ; preds = %16, %15
  %30 = load %struct.cmtp_application*, %struct.cmtp_application** %3, align 8
  ret %struct.cmtp_application* %30
}

declare dso_local %struct.cmtp_application* @kzalloc(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.cmtp_session*, %struct.cmtp_application*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
