; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_struct_ep_qh_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_struct_ep_qh_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_udc = type { %struct.ep_queue_head* }
%struct.ep_queue_head = type { i32, i64, i32 }

@EP_QUEUE_HEAD_MAX_PKT_LEN_POS = common dso_local global i32 0, align 4
@EP_QUEUE_HEAD_IOS = common dso_local global i32 0, align 4
@EP_QUEUE_HEAD_MULT_POS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [20 x i8] c"error ep type is %d\00", align 1
@EP_QUEUE_HEAD_ZLT_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_udc*, i8, i8, i8, i32, i32, i8)* @struct_ep_qh_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @struct_ep_qh_setup(%struct.fsl_udc* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i32 %4, i32 %5, i8 zeroext %6) #0 {
  %8 = alloca %struct.fsl_udc*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca %struct.ep_queue_head*, align 8
  %16 = alloca i32, align 4
  store %struct.fsl_udc* %0, %struct.fsl_udc** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i8 %3, i8* %11, align 1
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8 %6, i8* %14, align 1
  %17 = load %struct.fsl_udc*, %struct.fsl_udc** %8, align 8
  %18 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %17, i32 0, i32 0
  %19 = load %struct.ep_queue_head*, %struct.ep_queue_head** %18, align 8
  %20 = load i8, i8* %9, align 1
  %21 = zext i8 %20 to i32
  %22 = mul nsw i32 2, %21
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ep_queue_head, %struct.ep_queue_head* %19, i64 %26
  store %struct.ep_queue_head* %27, %struct.ep_queue_head** %15, align 8
  store i32 0, i32* %16, align 4
  %28 = load i8, i8* %11, align 1
  %29 = zext i8 %28 to i32
  switch i32 %29, label %50 [
    i32 130, label %30
    i32 128, label %36
    i32 131, label %46
    i32 129, label %46
  ]

30:                                               ; preds = %7
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @EP_QUEUE_HEAD_MAX_PKT_LEN_POS, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @EP_QUEUE_HEAD_IOS, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %16, align 4
  br label %53

36:                                               ; preds = %7
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @EP_QUEUE_HEAD_MAX_PKT_LEN_POS, align 4
  %39 = shl i32 %37, %38
  %40 = load i8, i8* %14, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @EP_QUEUE_HEAD_MULT_POS, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %41, %43
  %45 = or i32 %39, %44
  store i32 %45, i32* %16, align 4
  br label %53

46:                                               ; preds = %7, %7
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @EP_QUEUE_HEAD_MAX_PKT_LEN_POS, align 4
  %49 = shl i32 %47, %48
  store i32 %49, i32* %16, align 4
  br label %53

50:                                               ; preds = %7
  %51 = load i8, i8* %11, align 1
  %52 = call i32 @VDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8 zeroext %51)
  br label %69

53:                                               ; preds = %46, %36, %30
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @EP_QUEUE_HEAD_ZLT_SEL, align 4
  %58 = load i32, i32* %16, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @cpu_to_le32(i32 %61)
  %63 = load %struct.ep_queue_head*, %struct.ep_queue_head** %15, align 8
  %64 = getelementptr inbounds %struct.ep_queue_head, %struct.ep_queue_head* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ep_queue_head*, %struct.ep_queue_head** %15, align 8
  %66 = getelementptr inbounds %struct.ep_queue_head, %struct.ep_queue_head* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.ep_queue_head*, %struct.ep_queue_head** %15, align 8
  %68 = getelementptr inbounds %struct.ep_queue_head, %struct.ep_queue_head* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %60, %50
  ret void
}

declare dso_local i32 @VDBG(i8*, i8 zeroext) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
