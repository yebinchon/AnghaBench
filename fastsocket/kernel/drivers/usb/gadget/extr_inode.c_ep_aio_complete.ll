; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep_aio_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep_aio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64, i64, %struct.kiocb_priv*, %struct.kiocb* }
%struct.kiocb_priv = type { i64, %struct.kiocb_priv*, i32*, %struct.ep_data*, i32* }
%struct.ep_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kiocb = type { %struct.kiocb_priv* }

@.str = private unnamed_addr constant [20 x i8] c"%s fault %d len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @ep_aio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_aio_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.kiocb_priv*, align 8
  %7 = alloca %struct.ep_data*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %8 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %9 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %8, i32 0, i32 3
  %10 = load %struct.kiocb*, %struct.kiocb** %9, align 8
  store %struct.kiocb* %10, %struct.kiocb** %5, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 0
  %13 = load %struct.kiocb_priv*, %struct.kiocb_priv** %12, align 8
  store %struct.kiocb_priv* %13, %struct.kiocb_priv** %6, align 8
  %14 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %15 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %14, i32 0, i32 3
  %16 = load %struct.ep_data*, %struct.ep_data** %15, align 8
  store %struct.ep_data* %16, %struct.ep_data** %7, align 8
  %17 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %18 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %23 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %22, i32 0, i32 4
  store i32* null, i32** %23, align 8
  %24 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %25 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %24, i32 0, i32 3
  store %struct.ep_data* null, %struct.ep_data** %25, align 8
  %26 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %27 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  %31 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %32 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %30, %2
  %39 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %40 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %39, i32 0, i32 2
  %41 = load %struct.kiocb_priv*, %struct.kiocb_priv** %40, align 8
  %42 = call i32 @kfree(%struct.kiocb_priv* %41)
  %43 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %44 = call i32 @kfree(%struct.kiocb_priv* %43)
  %45 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %46 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %45, i32 0, i32 0
  store %struct.kiocb_priv* null, %struct.kiocb_priv** %46, align 8
  %47 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %48 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %49 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %38
  %53 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %54 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  br label %60

56:                                               ; preds = %38
  %57 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %58 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i64 [ %55, %52 ], [ %59, %56 ]
  %62 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %63 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @aio_complete(%struct.kiocb* %47, i64 %61, i64 %64)
  br label %101

66:                                               ; preds = %30
  %67 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %68 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 0, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %66
  %75 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %76 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %79 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %82 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %85 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @DBG(%struct.TYPE_2__* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %80, i64 %83, i64 %86)
  br label %88

88:                                               ; preds = %74, %66
  %89 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %90 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %89, i32 0, i32 2
  %91 = load %struct.kiocb_priv*, %struct.kiocb_priv** %90, align 8
  %92 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %93 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %92, i32 0, i32 1
  store %struct.kiocb_priv* %91, %struct.kiocb_priv** %93, align 8
  %94 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %95 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.kiocb_priv*, %struct.kiocb_priv** %6, align 8
  %98 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %100 = call i32 @kick_iocb(%struct.kiocb* %99)
  br label %101

101:                                              ; preds = %88, %60
  %102 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %103 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %108 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %109 = call i32 @usb_ep_free_request(%struct.usb_ep* %107, %struct.usb_request* %108)
  %110 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %111 = call i32 @put_ep(%struct.ep_data* %110)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.kiocb_priv*) #1

declare dso_local i32 @aio_complete(%struct.kiocb*, i64, i64) #1

declare dso_local i32 @DBG(%struct.TYPE_2__*, i8*, i32, i64, i64) #1

declare dso_local i32 @kick_iocb(%struct.kiocb*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_ep_free_request(%struct.usb_ep*, %struct.usb_request*) #1

declare dso_local i32 @put_ep(%struct.ep_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
