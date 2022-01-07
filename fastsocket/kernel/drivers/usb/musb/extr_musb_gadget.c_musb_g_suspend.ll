; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_gadget.c_musb_g_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_gadget.c_musb_g_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.TYPE_3__ = type { i32 }

@MUSB_DEVCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"devctl %02x\0A\00", align 1
@MUSB_DEVCTL_VBUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"unhandled SUSPEND transition (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musb_g_suspend(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %2, align 8
  %4 = load %struct.musb*, %struct.musb** %2, align 8
  %5 = getelementptr inbounds %struct.musb, %struct.musb* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MUSB_DEVCTL, align 4
  %8 = call i32 @musb_readb(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.musb*, %struct.musb** %2, align 8
  %12 = getelementptr inbounds %struct.musb, %struct.musb* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %58 [
    i32 129, label %16
    i32 128, label %28
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MUSB_DEVCTL_VBUS, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @MUSB_DEVCTL_VBUS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.musb*, %struct.musb** %2, align 8
  %24 = getelementptr inbounds %struct.musb, %struct.musb* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 128, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %16
  br label %62

28:                                               ; preds = %1
  %29 = load %struct.musb*, %struct.musb** %2, align 8
  %30 = getelementptr inbounds %struct.musb, %struct.musb* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.musb*, %struct.musb** %2, align 8
  %32 = getelementptr inbounds %struct.musb, %struct.musb* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %28
  %36 = load %struct.musb*, %struct.musb** %2, align 8
  %37 = getelementptr inbounds %struct.musb, %struct.musb* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (i32*)*, i32 (i32*)** %39, align 8
  %41 = icmp ne i32 (i32*)* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load %struct.musb*, %struct.musb** %2, align 8
  %44 = getelementptr inbounds %struct.musb, %struct.musb* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.musb*, %struct.musb** %2, align 8
  %47 = getelementptr inbounds %struct.musb, %struct.musb* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (i32*)*, i32 (i32*)** %49, align 8
  %51 = load %struct.musb*, %struct.musb** %2, align 8
  %52 = getelementptr inbounds %struct.musb, %struct.musb* %51, i32 0, i32 2
  %53 = call i32 %50(i32* %52)
  %54 = load %struct.musb*, %struct.musb** %2, align 8
  %55 = getelementptr inbounds %struct.musb, %struct.musb* %54, i32 0, i32 1
  %56 = call i32 @spin_lock(i32* %55)
  br label %57

57:                                               ; preds = %42, %35, %28
  br label %62

58:                                               ; preds = %1
  %59 = load %struct.musb*, %struct.musb** %2, align 8
  %60 = call i32 @otg_state_string(%struct.musb* %59)
  %61 = call i32 @WARNING(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %57, %27
  ret void
}

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARNING(i8*, i32) #1

declare dso_local i32 @otg_state_string(%struct.musb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
