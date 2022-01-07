; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_rndis.c_rndis_indicate_status_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_rndis.c_rndis_indicate_status_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_params = type { i64, i32, i32 (i32)* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i64 }

@rndis_per_dev_params = common dso_local global %struct.rndis_params* null, align 8
@RNDIS_UNINITIALIZED = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REMOTE_NDIS_INDICATE_STATUS_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rndis_indicate_status_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_indicate_status_msg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.rndis_params*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rndis_params*, %struct.rndis_params** @rndis_per_dev_params, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %9, i64 %11
  store %struct.rndis_params* %12, %struct.rndis_params** %8, align 8
  %13 = load %struct.rndis_params*, %struct.rndis_params** %8, align 8
  %14 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RNDIS_UNINITIALIZED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.TYPE_4__* @rndis_add_response(i32 %22, i32 40)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %6, align 8
  %34 = load i32, i32* @REMOTE_NDIS_INDICATE_STATUS_MSG, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = call i8* @cpu_to_le32(i32 20)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = call i8* @cpu_to_le32(i32 0)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = call i8* @cpu_to_le32(i32 0)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.rndis_params*, %struct.rndis_params** %8, align 8
  %52 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %51, i32 0, i32 2
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load %struct.rndis_params*, %struct.rndis_params** %8, align 8
  %55 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %53(i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %29, %26, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_4__* @rndis_add_response(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
