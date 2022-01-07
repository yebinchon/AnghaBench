; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.uwb_dev_addr }
%struct.uwb_dev_addr = type { i32 }
%struct.TYPE_6__ = type { %struct.uwb_dev_addr }
%struct.uwb_dev = type { i32 }
%struct.uwb_ie_drp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rsv*, %struct.uwb_dev*, %struct.uwb_ie_drp*)* @uwb_rsv_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rsv_match(%struct.uwb_rsv* %0, %struct.uwb_dev* %1, %struct.uwb_ie_drp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rsv*, align 8
  %6 = alloca %struct.uwb_dev*, align 8
  %7 = alloca %struct.uwb_ie_drp*, align 8
  %8 = alloca %struct.uwb_dev_addr*, align 8
  %9 = alloca i32, align 4
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %5, align 8
  store %struct.uwb_dev* %1, %struct.uwb_dev** %6, align 8
  store %struct.uwb_ie_drp* %2, %struct.uwb_ie_drp** %7, align 8
  %10 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %7, align 8
  %11 = call i32 @uwb_ie_drp_stream_index(%struct.uwb_ie_drp* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %13 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

18:                                               ; preds = %3
  %19 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %20 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %52 [
    i32 128, label %23
    i32 129, label %30
  ]

23:                                               ; preds = %18
  %24 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %25 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %18
  %31 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %7, align 8
  %32 = call i32 @uwb_ie_drp_owner(%struct.uwb_ie_drp* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %36 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store %struct.uwb_dev_addr* %38, %struct.uwb_dev_addr** %8, align 8
  br label %45

39:                                               ; preds = %30
  %40 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %41 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.uwb_dev_addr* %44, %struct.uwb_dev_addr** %8, align 8
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.uwb_dev*, %struct.uwb_dev** %6, align 8
  %47 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %46, i32 0, i32 0
  %48 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %8, align 8
  %49 = call i32 @uwb_dev_addr_cmp(i32* %47, %struct.uwb_dev_addr* %48)
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %45, %23, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @uwb_ie_drp_stream_index(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_ie_drp_owner(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_dev_addr_cmp(i32*, %struct.uwb_dev_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
