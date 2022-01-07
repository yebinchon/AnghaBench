; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_garp.c_garp_request_leave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_garp.c_garp_request_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.garp_port* }
%struct.garp_port = type { %struct.garp_applicant** }
%struct.garp_applicant = type { i32 }
%struct.garp_application = type { i64 }
%struct.garp_attr = type { i32 }

@GARP_EVENT_REQ_LEAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @garp_request_leave(%struct.net_device* %0, %struct.garp_application* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.garp_application*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.garp_port*, align 8
  %12 = alloca %struct.garp_applicant*, align 8
  %13 = alloca %struct.garp_attr*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.garp_application* %1, %struct.garp_application** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.garp_port*, %struct.garp_port** %15, align 8
  store %struct.garp_port* %16, %struct.garp_port** %11, align 8
  %17 = load %struct.garp_port*, %struct.garp_port** %11, align 8
  %18 = getelementptr inbounds %struct.garp_port, %struct.garp_port* %17, i32 0, i32 0
  %19 = load %struct.garp_applicant**, %struct.garp_applicant*** %18, align 8
  %20 = load %struct.garp_application*, %struct.garp_application** %7, align 8
  %21 = getelementptr inbounds %struct.garp_application, %struct.garp_application* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.garp_applicant*, %struct.garp_applicant** %19, i64 %22
  %24 = load %struct.garp_applicant*, %struct.garp_applicant** %23, align 8
  store %struct.garp_applicant* %24, %struct.garp_applicant** %12, align 8
  %25 = load %struct.garp_applicant*, %struct.garp_applicant** %12, align 8
  %26 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.garp_applicant*, %struct.garp_applicant** %12, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.garp_attr* @garp_attr_lookup(%struct.garp_applicant* %28, i8* %29, i32 %30, i32 %31)
  store %struct.garp_attr* %32, %struct.garp_attr** %13, align 8
  %33 = load %struct.garp_attr*, %struct.garp_attr** %13, align 8
  %34 = icmp ne %struct.garp_attr* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %5
  %36 = load %struct.garp_applicant*, %struct.garp_applicant** %12, align 8
  %37 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_bh(i32* %37)
  br label %47

39:                                               ; preds = %5
  %40 = load %struct.garp_applicant*, %struct.garp_applicant** %12, align 8
  %41 = load %struct.garp_attr*, %struct.garp_attr** %13, align 8
  %42 = load i32, i32* @GARP_EVENT_REQ_LEAVE, align 4
  %43 = call i32 @garp_attr_event(%struct.garp_applicant* %40, %struct.garp_attr* %41, i32 %42)
  %44 = load %struct.garp_applicant*, %struct.garp_applicant** %12, align 8
  %45 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_bh(i32* %45)
  br label %47

47:                                               ; preds = %39, %35
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.garp_attr* @garp_attr_lookup(%struct.garp_applicant*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @garp_attr_event(%struct.garp_applicant*, %struct.garp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
