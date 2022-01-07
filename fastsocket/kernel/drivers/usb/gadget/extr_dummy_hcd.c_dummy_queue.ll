; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32 (%struct.usb_ep.0*, %struct.usb_request*)*, i32, i64, i64, %struct.dummy*, i32 }
%struct.usb_ep.0 = type opaque
%struct.dummy = type { i32, i32, %struct.dummy_request, i32 }
%struct.dummy_request = type { i32, %struct.usb_request }
%struct.dummy_ep = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ep0name = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@FIFO_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @dummy_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dummy_ep*, align 8
  %9 = alloca %struct.dummy_request*, align 8
  %10 = alloca %struct.dummy*, align 8
  %11 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %13 = call %struct.dummy_request* @usb_request_to_dummy_request(%struct.usb_request* %12)
  store %struct.dummy_request* %13, %struct.dummy_request** %9, align 8
  %14 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %15 = icmp ne %struct.usb_request* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %18 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %17, i32 0, i32 0
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %23 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %22, i32 0, i32 0
  %24 = load i32 (%struct.usb_ep.0*, %struct.usb_request*)*, i32 (%struct.usb_ep.0*, %struct.usb_request*)** %23, align 8
  %25 = icmp ne i32 (%struct.usb_ep.0*, %struct.usb_request*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %16, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %170

29:                                               ; preds = %21
  %30 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %31 = call %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep* %30)
  store %struct.dummy_ep* %31, %struct.dummy_ep** %8, align 8
  %32 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %33 = icmp ne %struct.usb_ep* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %36 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %41 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ep0name, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %29
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %170

48:                                               ; preds = %39, %34
  %49 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %50 = call %struct.dummy* @ep_to_dummy(%struct.dummy_ep* %49)
  store %struct.dummy* %50, %struct.dummy** %10, align 8
  %51 = load %struct.dummy*, %struct.dummy** %10, align 8
  %52 = getelementptr inbounds %struct.dummy, %struct.dummy* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.dummy*, %struct.dummy** %10, align 8
  %57 = call i32 @is_enabled(%struct.dummy* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55, %48
  %60 = load i32, i32* @ESHUTDOWN, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %170

62:                                               ; preds = %55
  %63 = load i32, i32* @EINPROGRESS, align 4
  %64 = sub nsw i32 0, %63
  %65 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %66 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %68 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.dummy*, %struct.dummy** %10, align 8
  %70 = getelementptr inbounds %struct.dummy, %struct.dummy* %69, i32 0, i32 0
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %74 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = icmp ne %struct.TYPE_2__* %75, null
  br i1 %76, label %77, label %159

77:                                               ; preds = %62
  %78 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %79 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @USB_DIR_IN, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %159

86:                                               ; preds = %77
  %87 = load %struct.dummy*, %struct.dummy** %10, align 8
  %88 = getelementptr inbounds %struct.dummy, %struct.dummy* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %88, i32 0, i32 0
  %90 = call i64 @list_empty(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %159

92:                                               ; preds = %86
  %93 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %94 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %93, i32 0, i32 0
  %95 = call i64 @list_empty(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %159

97:                                               ; preds = %92
  %98 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %99 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @FIFO_SIZE, align 8
  %102 = icmp sle i64 %100, %101
  br i1 %102, label %103, label %159

103:                                              ; preds = %97
  %104 = load %struct.dummy*, %struct.dummy** %10, align 8
  %105 = getelementptr inbounds %struct.dummy, %struct.dummy* %104, i32 0, i32 2
  store %struct.dummy_request* %105, %struct.dummy_request** %9, align 8
  %106 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %107 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %106, i32 0, i32 1
  %108 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %109 = bitcast %struct.usb_request* %107 to i8*
  %110 = bitcast %struct.usb_request* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 48, i1 false)
  %111 = load %struct.dummy*, %struct.dummy** %10, align 8
  %112 = getelementptr inbounds %struct.dummy, %struct.dummy* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %115 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %115, i32 0, i32 5
  store i32 %113, i32* %116, align 8
  %117 = load %struct.dummy*, %struct.dummy** %10, align 8
  %118 = getelementptr inbounds %struct.dummy, %struct.dummy* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %121 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %124 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @memcpy(i32 %119, i32 %122, i64 %125)
  %127 = load %struct.dummy*, %struct.dummy** %10, align 8
  %128 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %129 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %129, i32 0, i32 4
  store %struct.dummy* %127, %struct.dummy** %130, align 8
  %131 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %132 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %132, i32 0, i32 0
  store i32 (%struct.usb_ep.0*, %struct.usb_request*)* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*)* @fifo_complete to i32 (%struct.usb_ep.0*, %struct.usb_request*)*), i32 (%struct.usb_ep.0*, %struct.usb_request*)** %133, align 8
  %134 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %135 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %134, i32 0, i32 0
  %136 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %137 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %136, i32 0, i32 0
  %138 = call i32 @list_add_tail(i32* %135, i32* %137)
  %139 = load %struct.dummy*, %struct.dummy** %10, align 8
  %140 = getelementptr inbounds %struct.dummy, %struct.dummy* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %143 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %146 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %145, i32 0, i32 3
  store i64 %144, i64* %146, align 8
  %147 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %148 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %147, i32 0, i32 1
  store i32 0, i32* %148, align 8
  %149 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %150 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %149, i32 0, i32 0
  %151 = load i32 (%struct.usb_ep.0*, %struct.usb_request*)*, i32 (%struct.usb_ep.0*, %struct.usb_request*)** %150, align 8
  %152 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %153 = bitcast %struct.usb_ep* %152 to %struct.usb_ep.0*
  %154 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %155 = call i32 %151(%struct.usb_ep.0* %153, %struct.usb_request* %154)
  %156 = load %struct.dummy*, %struct.dummy** %10, align 8
  %157 = getelementptr inbounds %struct.dummy, %struct.dummy* %156, i32 0, i32 0
  %158 = call i32 @spin_lock(i32* %157)
  br label %165

159:                                              ; preds = %97, %92, %86, %77, %62
  %160 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %161 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %160, i32 0, i32 0
  %162 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %163 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %162, i32 0, i32 0
  %164 = call i32 @list_add_tail(i32* %161, i32* %163)
  br label %165

165:                                              ; preds = %159, %103
  %166 = load %struct.dummy*, %struct.dummy** %10, align 8
  %167 = getelementptr inbounds %struct.dummy, %struct.dummy* %166, i32 0, i32 0
  %168 = load i64, i64* %11, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %165, %59, %45, %26
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.dummy_request* @usb_request_to_dummy_request(%struct.usb_request*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep*) #1

declare dso_local %struct.dummy* @ep_to_dummy(%struct.dummy_ep*) #1

declare dso_local i32 @is_enabled(%struct.dummy*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @fifo_complete(%struct.usb_ep*, %struct.usb_request*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
