; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_req_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32 }
%struct.pxa27x_request = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 (i32*, %struct.TYPE_5__*)*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"complete req %p stat %d len %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_ep*, %struct.pxa27x_request*, i32)* @req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @req_done(%struct.pxa_ep* %0, %struct.pxa27x_request* %1, i32 %2) #0 {
  %4 = alloca %struct.pxa_ep*, align 8
  %5 = alloca %struct.pxa27x_request*, align 8
  %6 = alloca i32, align 4
  store %struct.pxa_ep* %0, %struct.pxa_ep** %4, align 8
  store %struct.pxa27x_request* %1, %struct.pxa27x_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %8 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %9 = call i32 @ep_del_request(%struct.pxa_ep* %7, %struct.pxa27x_request* %8)
  %10 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %11 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EINPROGRESS, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %23 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %27 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ESHUTDOWN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %40 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %41 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %44 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %48 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ep_dbg(%struct.pxa_ep* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %41, i32 %42, i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %38, %33, %30
  %53 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %54 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32 (i32*, %struct.TYPE_5__*)*, i32 (i32*, %struct.TYPE_5__*)** %55, align 8
  %57 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %58 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %62 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %61, i32 0, i32 0
  %63 = call i32 %56(i32* %60, %struct.TYPE_5__* %62)
  ret void
}

declare dso_local i32 @ep_del_request(%struct.pxa_ep*, %struct.pxa27x_request*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ep_dbg(%struct.pxa_ep*, i8*, %struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
