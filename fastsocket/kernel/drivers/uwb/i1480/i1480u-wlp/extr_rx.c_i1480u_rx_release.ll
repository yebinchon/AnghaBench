; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_rx.c_i1480u_rx_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_rx.c_i1480u_rx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480u = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@i1480u_RX_BUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i1480u_rx_release(%struct.i1480u* %0) #0 {
  %2 = alloca %struct.i1480u*, align 8
  %3 = alloca i32, align 4
  store %struct.i1480u* %0, %struct.i1480u** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %58, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @i1480u_RX_BUFS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %61

8:                                                ; preds = %4
  %9 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %10 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %8
  %19 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %20 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @dev_kfree_skb(i32* %26)
  br label %28

28:                                               ; preds = %18, %8
  %29 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %30 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %28
  %39 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %40 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @usb_kill_urb(i64 %46)
  %48 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %49 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @usb_free_urb(i64 %55)
  br label %57

57:                                               ; preds = %38, %28
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %4

61:                                               ; preds = %4
  %62 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %63 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %68 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @dev_kfree_skb(i32* %69)
  br label %71

71:                                               ; preds = %66, %61
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @usb_free_urb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
