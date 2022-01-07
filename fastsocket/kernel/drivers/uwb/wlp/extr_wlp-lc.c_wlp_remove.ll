; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wlp-lc.c_wlp_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wlp-lc.c_wlp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32*, i32, i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlp_remove(%struct.wlp* %0) #0 {
  %2 = alloca %struct.wlp*, align 8
  store %struct.wlp* %0, %struct.wlp** %2, align 8
  %3 = load %struct.wlp*, %struct.wlp** %2, align 8
  %4 = call i32 @wlp_neighbors_release(%struct.wlp* %3)
  %5 = load %struct.wlp*, %struct.wlp** %2, align 8
  %6 = getelementptr inbounds %struct.wlp, %struct.wlp* %5, i32 0, i32 5
  %7 = call i32 @uwb_pal_unregister(i32* %6)
  %8 = load %struct.wlp*, %struct.wlp** %2, align 8
  %9 = getelementptr inbounds %struct.wlp, %struct.wlp* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.wlp*, %struct.wlp** %2, align 8
  %12 = getelementptr inbounds %struct.wlp, %struct.wlp* %11, i32 0, i32 4
  %13 = call i32 @uwb_notifs_deregister(i32* %10, i32* %12)
  %14 = load %struct.wlp*, %struct.wlp** %2, align 8
  %15 = getelementptr inbounds %struct.wlp, %struct.wlp* %14, i32 0, i32 3
  %16 = call i32 @wlp_eda_release(i32* %15)
  %17 = load %struct.wlp*, %struct.wlp** %2, align 8
  %18 = getelementptr inbounds %struct.wlp, %struct.wlp* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.wlp*, %struct.wlp** %2, align 8
  %21 = getelementptr inbounds %struct.wlp, %struct.wlp* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.wlp*, %struct.wlp** %2, align 8
  %26 = getelementptr inbounds %struct.wlp, %struct.wlp* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kfree(i32* %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.wlp*, %struct.wlp** %2, align 8
  %31 = getelementptr inbounds %struct.wlp, %struct.wlp* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.wlp*, %struct.wlp** %2, align 8
  %34 = getelementptr inbounds %struct.wlp, %struct.wlp* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  ret void
}

declare dso_local i32 @wlp_neighbors_release(%struct.wlp*) #1

declare dso_local i32 @uwb_pal_unregister(i32*) #1

declare dso_local i32 @uwb_notifs_deregister(i32*, i32*) #1

declare dso_local i32 @wlp_eda_release(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
