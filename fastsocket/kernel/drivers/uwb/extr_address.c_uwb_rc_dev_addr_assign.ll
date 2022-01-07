; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_address.c_uwb_rc_dev_addr_assign.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_address.c_uwb_rc_dev_addr_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }
%struct.uwb_dev_addr = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rc_dev_addr_assign(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rc*, align 8
  %3 = alloca %struct.uwb_dev_addr, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %2, align 8
  br label %4

4:                                                ; preds = %24, %1
  %5 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %3, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @get_random_bytes(i32* %6, i32 8)
  br label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %3, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %3, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %22 = call i64 @__uwb_dev_addr_assigned(%struct.uwb_rc* %21, %struct.uwb_dev_addr* %3)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %20, %14, %8
  %25 = phi i1 [ true, %14 ], [ true, %8 ], [ %23, %20 ]
  br i1 %25, label %4, label %26

26:                                               ; preds = %24
  %27 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %28 = call i32 @uwb_rc_dev_addr_set(%struct.uwb_rc* %27, %struct.uwb_dev_addr* %3)
  ret i32 %28
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i64 @__uwb_dev_addr_assigned(%struct.uwb_rc*, %struct.uwb_dev_addr*) #1

declare dso_local i32 @uwb_rc_dev_addr_set(%struct.uwb_rc*, %struct.uwb_dev_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
