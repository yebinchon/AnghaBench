; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_gadget.c_musb_ep_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_gadget.c_musb_ep_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32 }
%struct.musb_request = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"<== %s request %p len %u on hw_ep%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"TX/IN\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"RX/OUT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, %struct.musb_request*)* @musb_ep_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_ep_restart(%struct.musb* %0, %struct.musb_request* %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca %struct.musb_request*, align 8
  store %struct.musb* %0, %struct.musb** %3, align 8
  store %struct.musb_request* %1, %struct.musb_request** %4, align 8
  %5 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %6 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %11 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %12 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %11, i32 0, i32 2
  %13 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %14 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %18 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %10, %struct.TYPE_2__* %12, i32 %16, i32 %19)
  %21 = load %struct.musb*, %struct.musb** %3, align 8
  %22 = getelementptr inbounds %struct.musb, %struct.musb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %25 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @musb_ep_select(i32 %23, i32 %26)
  %28 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %29 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.musb*, %struct.musb** %3, align 8
  %34 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %35 = call i32 @txstate(%struct.musb* %33, %struct.musb_request* %34)
  br label %40

36:                                               ; preds = %2
  %37 = load %struct.musb*, %struct.musb** %3, align 8
  %38 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %39 = call i32 @rxstate(%struct.musb* %37, %struct.musb_request* %38)
  br label %40

40:                                               ; preds = %36, %32
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i8*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @musb_ep_select(i32, i32) #1

declare dso_local i32 @txstate(%struct.musb*, %struct.musb_request*) #1

declare dso_local i32 @rxstate(%struct.musb*, %struct.musb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
