; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_txframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_txframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@HOSTWEP_PRIVACYINVOKED = common dso_local global i32 0, align 4
@HOSTWEP_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.sk_buff*, %struct.TYPE_9__*, i32*)* @prism2sta_txframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2sta_txframe(%struct.TYPE_8__* %0, %struct.sk_buff* %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HOSTWEP_PRIVACYINVOKED, align 4
  %19 = load i32, i32* @HOSTWEP_ENCRYPT, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load i32, i32* @HOSTWEP_PRIVACYINVOKED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = call i32 @WLAN_SET_FC_ISWEP(i32 1)
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %24, %4
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @hfa384x_drvr_txframe(i32* %33, %struct.sk_buff* %34, %struct.TYPE_9__* %35, i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  ret i32 %38
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @WLAN_SET_FC_ISWEP(i32) #1

declare dso_local i32 @hfa384x_drvr_txframe(i32*, %struct.sk_buff*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
