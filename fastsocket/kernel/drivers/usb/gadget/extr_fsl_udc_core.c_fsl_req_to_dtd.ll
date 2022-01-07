; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_fsl_req_to_dtd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_fsl_req_to_dtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_req = type { %struct.ep_td_struct*, i32, %struct.ep_td_struct* }
%struct.ep_td_struct = type { i8*, %struct.ep_td_struct* }

@ENOMEM = common dso_local global i32 0, align 4
@DTD_NEXT_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_req*)* @fsl_req_to_dtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_req_to_dtd(%struct.fsl_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ep_td_struct*, align 8
  %8 = alloca %struct.ep_td_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.fsl_req* %0, %struct.fsl_req** %3, align 8
  store i32 1, i32* %6, align 4
  store %struct.ep_td_struct* null, %struct.ep_td_struct** %7, align 8
  br label %10

10:                                               ; preds = %39, %1
  %11 = load %struct.fsl_req*, %struct.fsl_req** %3, align 8
  %12 = call %struct.ep_td_struct* @fsl_build_dtd(%struct.fsl_req* %11, i32* %4, i32* %9, i32* %5)
  store %struct.ep_td_struct* %12, %struct.ep_td_struct** %8, align 8
  %13 = load %struct.ep_td_struct*, %struct.ep_td_struct** %8, align 8
  %14 = icmp eq %struct.ep_td_struct* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %51

18:                                               ; preds = %10
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  %22 = load %struct.ep_td_struct*, %struct.ep_td_struct** %8, align 8
  %23 = load %struct.fsl_req*, %struct.fsl_req** %3, align 8
  %24 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %23, i32 0, i32 2
  store %struct.ep_td_struct* %22, %struct.ep_td_struct** %24, align 8
  br label %33

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = load %struct.ep_td_struct*, %struct.ep_td_struct** %7, align 8
  %29 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ep_td_struct*, %struct.ep_td_struct** %8, align 8
  %31 = load %struct.ep_td_struct*, %struct.ep_td_struct** %7, align 8
  %32 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %31, i32 0, i32 1
  store %struct.ep_td_struct* %30, %struct.ep_td_struct** %32, align 8
  br label %33

33:                                               ; preds = %25, %21
  %34 = load %struct.ep_td_struct*, %struct.ep_td_struct** %8, align 8
  store %struct.ep_td_struct* %34, %struct.ep_td_struct** %7, align 8
  %35 = load %struct.fsl_req*, %struct.fsl_req** %3, align 8
  %36 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %10, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @DTD_NEXT_TERMINATE, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.ep_td_struct*, %struct.ep_td_struct** %8, align 8
  %47 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ep_td_struct*, %struct.ep_td_struct** %8, align 8
  %49 = load %struct.fsl_req*, %struct.fsl_req** %3, align 8
  %50 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %49, i32 0, i32 0
  store %struct.ep_td_struct* %48, %struct.ep_td_struct** %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %43, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.ep_td_struct* @fsl_build_dtd(%struct.fsl_req*, i32*, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
