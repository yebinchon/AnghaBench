; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_get_int_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_get_int_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, %struct.carl9170_rsp* }
%struct.carl9170_rsp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@fw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CARL9170_INT_RQ_CACHES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.carl9170_rsp* ()* @get_int_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.carl9170_rsp* @get_int_buf() #0 {
  %1 = alloca %struct.carl9170_rsp*, align 8
  %2 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 2), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 0), align 8
  %4 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %2, i64 %3
  store %struct.carl9170_rsp* %4, %struct.carl9170_rsp** %1, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 0), align 8
  %6 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %1, align 8
  %7 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 %5, i64* %8, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 0), align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 0), align 8
  %11 = load i64, i64* @CARL9170_INT_RQ_CACHES, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 0), align 8
  %13 = urem i64 %12, %11
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 0), align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 1), align 8
  %15 = load i64, i64* @CARL9170_INT_RQ_CACHES, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 1), align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 1), align 8
  br label %20

20:                                               ; preds = %17, %0
  %21 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %1, align 8
  ret %struct.carl9170_rsp* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
