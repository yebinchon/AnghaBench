; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_ep = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pxa25x_request = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_4__*, %struct.TYPE_5__*)*, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@DBG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"complete %s req %p stat %d len %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa25x_ep*, %struct.pxa25x_request*, i32)* @done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done(%struct.pxa25x_ep* %0, %struct.pxa25x_request* %1, i32 %2) #0 {
  %4 = alloca %struct.pxa25x_ep*, align 8
  %5 = alloca %struct.pxa25x_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pxa25x_ep* %0, %struct.pxa25x_ep** %4, align 8
  store %struct.pxa25x_request* %1, %struct.pxa25x_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %9 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %12 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %11, i32 0, i32 1
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %15 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EINPROGRESS, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %27 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %31 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ESHUTDOWN, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load i32, i32* @DBG_VERBOSE, align 4
  %44 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %45 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %49 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %52 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %56 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @DBG(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47, %struct.TYPE_5__* %49, i32 %50, i32 %54, i32 %58)
  br label %60

60:                                               ; preds = %42, %37, %34
  %61 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %62 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %64 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32 (%struct.TYPE_4__*, %struct.TYPE_5__*)*, i32 (%struct.TYPE_4__*, %struct.TYPE_5__*)** %65, align 8
  %67 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %68 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %67, i32 0, i32 1
  %69 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %70 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %69, i32 0, i32 0
  %71 = call i32 %66(%struct.TYPE_4__* %68, %struct.TYPE_5__* %70)
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %74 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @DBG(i32, i8*, i32, %struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
