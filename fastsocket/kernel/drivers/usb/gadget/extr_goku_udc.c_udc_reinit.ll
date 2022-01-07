; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_goku_udc.c_udc_reinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_goku_udc.c_udc_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goku_udc = type { %struct.goku_ep*, %struct.TYPE_5__, %struct.TYPE_4__*, i64, i32 }
%struct.goku_ep = type { i32, %struct.TYPE_6__, i32*, i32, %struct.goku_udc*, i32*, i32* }
%struct.TYPE_6__ = type { i8*, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32*, i32*, i32* }

@udc_reinit.names = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"ep0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ep1-bulk\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ep2-bulk\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ep3-bulk\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@EP0_DISCONNECT = common dso_local global i32 0, align 4
@goku_ep_ops = common dso_local global i32 0, align 4
@MAX_EP0_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goku_udc*)* @udc_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_reinit(%struct.goku_udc* %0) #0 {
  %2 = alloca %struct.goku_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.goku_ep*, align 8
  store %struct.goku_udc* %0, %struct.goku_udc** %2, align 8
  %5 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %6 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %10 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %9, i32 0, i32 0
  %11 = load %struct.goku_ep*, %struct.goku_ep** %10, align 8
  %12 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %11, i64 0
  %13 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %12, i32 0, i32 1
  %14 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %15 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %16, align 8
  %17 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %18 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %19 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @EP0_DISCONNECT, align 4
  %22 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %23 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %25 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %94, %1
  %27 = load i32, i32* %3, align 4
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %29, label %97

29:                                               ; preds = %26
  %30 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %31 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %30, i32 0, i32 0
  %32 = load %struct.goku_ep*, %struct.goku_ep** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %32, i64 %34
  store %struct.goku_ep* %35, %struct.goku_ep** %4, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %38 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* @udc_reinit.names, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %44 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %47 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %55 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %54, i32 0, i32 6
  store i32* %53, i32** %55, align 8
  %56 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %57 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %65 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %64, i32 0, i32 5
  store i32* %63, i32** %65, align 8
  %66 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %67 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %75 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %77 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  store i32* @goku_ep_ops, i32** %78, align 8
  %79 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %80 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %83 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @list_add_tail(i32* %81, i32* %84)
  %86 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %87 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %88 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %87, i32 0, i32 4
  store %struct.goku_udc* %86, %struct.goku_udc** %88, align 8
  %89 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %90 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %89, i32 0, i32 3
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  %92 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %93 = call i32 @ep_reset(i32* null, %struct.goku_ep* %92)
  br label %94

94:                                               ; preds = %29
  %95 = load i32, i32* %3, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %26

97:                                               ; preds = %26
  %98 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %99 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %98, i32 0, i32 0
  %100 = load %struct.goku_ep*, %struct.goku_ep** %99, align 8
  %101 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %100, i64 0
  %102 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %101, i32 0, i32 2
  store i32* null, i32** %102, align 8
  %103 = load i32, i32* @MAX_EP0_SIZE, align 4
  %104 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %105 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %104, i32 0, i32 0
  %106 = load %struct.goku_ep*, %struct.goku_ep** %105, align 8
  %107 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %106, i64 0
  %108 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store i32 %103, i32* %109, align 4
  %110 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %111 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %110, i32 0, i32 0
  %112 = load %struct.goku_ep*, %struct.goku_ep** %111, align 8
  %113 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %112, i64 0
  %114 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = call i32 @list_del_init(i32* %115)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ep_reset(i32*, %struct.goku_ep*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
