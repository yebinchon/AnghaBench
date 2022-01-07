; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_acm.c_acm_complete_set_line_coding.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_acm.c_acm_complete_set_line_coding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.f_acm* }
%struct.f_acm = type { %struct.usb_cdc_line_coding, i32, %struct.TYPE_6__ }
%struct.usb_cdc_line_coding = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.usb_request = type { i32, i32, %struct.usb_cdc_line_coding* }

@.str = private unnamed_addr constant [32 x i8] c"acm ttyGS%d completion, err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"acm ttyGS%d short resp, len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @acm_complete_set_line_coding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_complete_set_line_coding(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.f_acm*, align 8
  %6 = alloca %struct.usb_composite_dev*, align 8
  %7 = alloca %struct.usb_cdc_line_coding*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %8 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %9 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %8, i32 0, i32 0
  %10 = load %struct.f_acm*, %struct.f_acm** %9, align 8
  store %struct.f_acm* %10, %struct.f_acm** %5, align 8
  %11 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %12 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %16, align 8
  store %struct.usb_composite_dev* %17, %struct.usb_composite_dev** %6, align 8
  %18 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %19 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %24 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %25 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %28 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DBG(%struct.usb_composite_dev* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  br label %57

31:                                               ; preds = %2
  %32 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %33 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 4
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %39 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %40 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %43 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DBG(%struct.usb_composite_dev* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %47 = call i32 @usb_ep_set_halt(%struct.usb_ep* %46)
  br label %57

48:                                               ; preds = %31
  %49 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %50 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %49, i32 0, i32 2
  %51 = load %struct.usb_cdc_line_coding*, %struct.usb_cdc_line_coding** %50, align 8
  store %struct.usb_cdc_line_coding* %51, %struct.usb_cdc_line_coding** %7, align 8
  %52 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %53 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %52, i32 0, i32 0
  %54 = load %struct.usb_cdc_line_coding*, %struct.usb_cdc_line_coding** %7, align 8
  %55 = bitcast %struct.usb_cdc_line_coding* %53 to i8*
  %56 = bitcast %struct.usb_cdc_line_coding* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 4 %56, i64 4, i1 false)
  br label %57

57:                                               ; preds = %22, %48, %37
  ret void
}

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32, i32) #1

declare dso_local i32 @usb_ep_set_halt(%struct.usb_ep*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
