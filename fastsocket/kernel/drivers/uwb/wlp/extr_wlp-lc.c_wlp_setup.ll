; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wlp-lc.c_wlp_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wlp-lc.c_wlp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_6__, %struct.uwb_rc*, %struct.TYPE_5__, i32, %struct.net_device*, i32*, i32*, i32*, i32* }
%struct.TYPE_6__ = type { %struct.wlp*, i32 }
%struct.TYPE_5__ = type { i32, %struct.uwb_rc* }
%struct.uwb_rc = type { i32 }
%struct.net_device = type { i32 }

@wlp_uwb_notifs_cb = common dso_local global i32 0, align 4
@wlp_channel_changed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_setup(%struct.wlp* %0, %struct.uwb_rc* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store %struct.uwb_rc* %1, %struct.uwb_rc** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %8 = load %struct.wlp*, %struct.wlp** %4, align 8
  %9 = getelementptr inbounds %struct.wlp, %struct.wlp* %8, i32 0, i32 8
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.wlp*, %struct.wlp** %4, align 8
  %15 = getelementptr inbounds %struct.wlp, %struct.wlp* %14, i32 0, i32 7
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.wlp*, %struct.wlp** %4, align 8
  %21 = getelementptr inbounds %struct.wlp, %struct.wlp* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.wlp*, %struct.wlp** %4, align 8
  %27 = getelementptr inbounds %struct.wlp, %struct.wlp* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %33 = load %struct.wlp*, %struct.wlp** %4, align 8
  %34 = getelementptr inbounds %struct.wlp, %struct.wlp* %33, i32 0, i32 1
  store %struct.uwb_rc* %32, %struct.uwb_rc** %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load %struct.wlp*, %struct.wlp** %4, align 8
  %37 = getelementptr inbounds %struct.wlp, %struct.wlp* %36, i32 0, i32 4
  store %struct.net_device* %35, %struct.net_device** %37, align 8
  %38 = load %struct.wlp*, %struct.wlp** %4, align 8
  %39 = getelementptr inbounds %struct.wlp, %struct.wlp* %38, i32 0, i32 3
  %40 = call i32 @wlp_eda_init(i32* %39)
  %41 = load i32, i32* @wlp_uwb_notifs_cb, align 4
  %42 = load %struct.wlp*, %struct.wlp** %4, align 8
  %43 = getelementptr inbounds %struct.wlp, %struct.wlp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load %struct.wlp*, %struct.wlp** %4, align 8
  %46 = load %struct.wlp*, %struct.wlp** %4, align 8
  %47 = getelementptr inbounds %struct.wlp, %struct.wlp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store %struct.wlp* %45, %struct.wlp** %48, align 8
  %49 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %50 = load %struct.wlp*, %struct.wlp** %4, align 8
  %51 = getelementptr inbounds %struct.wlp, %struct.wlp* %50, i32 0, i32 0
  %52 = call i32 @uwb_notifs_register(%struct.uwb_rc* %49, %struct.TYPE_6__* %51)
  %53 = load %struct.wlp*, %struct.wlp** %4, align 8
  %54 = getelementptr inbounds %struct.wlp, %struct.wlp* %53, i32 0, i32 2
  %55 = call i32 @uwb_pal_init(%struct.TYPE_5__* %54)
  %56 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %57 = load %struct.wlp*, %struct.wlp** %4, align 8
  %58 = getelementptr inbounds %struct.wlp, %struct.wlp* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store %struct.uwb_rc* %56, %struct.uwb_rc** %59, align 8
  %60 = load i32, i32* @wlp_channel_changed, align 4
  %61 = load %struct.wlp*, %struct.wlp** %4, align 8
  %62 = getelementptr inbounds %struct.wlp, %struct.wlp* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.wlp*, %struct.wlp** %4, align 8
  %65 = getelementptr inbounds %struct.wlp, %struct.wlp* %64, i32 0, i32 2
  %66 = call i32 @uwb_pal_register(%struct.TYPE_5__* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %3
  %70 = load %struct.wlp*, %struct.wlp** %4, align 8
  %71 = getelementptr inbounds %struct.wlp, %struct.wlp* %70, i32 0, i32 1
  %72 = load %struct.uwb_rc*, %struct.uwb_rc** %71, align 8
  %73 = load %struct.wlp*, %struct.wlp** %4, align 8
  %74 = getelementptr inbounds %struct.wlp, %struct.wlp* %73, i32 0, i32 0
  %75 = call i32 @uwb_notifs_deregister(%struct.uwb_rc* %72, %struct.TYPE_6__* %74)
  br label %76

76:                                               ; preds = %69, %3
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wlp_eda_init(i32*) #1

declare dso_local i32 @uwb_notifs_register(%struct.uwb_rc*, %struct.TYPE_6__*) #1

declare dso_local i32 @uwb_pal_init(%struct.TYPE_5__*) #1

declare dso_local i32 @uwb_pal_register(%struct.TYPE_5__*) #1

declare dso_local i32 @uwb_notifs_deregister(%struct.uwb_rc*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
