; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_rndis.c_rndis_reset_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_rndis.c_rndis_reset_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_params = type { i32, i32 (i32)* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i64 }

@rndis_per_dev_params = common dso_local global %struct.rndis_params* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@REMOTE_NDIS_RESET_CMPLT = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @rndis_reset_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_reset_response(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.rndis_params*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load %struct.rndis_params*, %struct.rndis_params** @rndis_per_dev_params, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %9, i64 %11
  store %struct.rndis_params* %12, %struct.rndis_params** %8, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.TYPE_4__* @rndis_add_response(i32 %13, i32 32)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %6, align 8
  %25 = load i32, i32* @REMOTE_NDIS_RESET_CMPLT, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = call i8* @cpu_to_le32(i32 16)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = call i8* @cpu_to_le32(i32 1)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.rndis_params*, %struct.rndis_params** %8, align 8
  %40 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %39, i32 0, i32 1
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = load %struct.rndis_params*, %struct.rndis_params** %8, align 8
  %43 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %41(i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %20, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_4__* @rndis_add_response(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
