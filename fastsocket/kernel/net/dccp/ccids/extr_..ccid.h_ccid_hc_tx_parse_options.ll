; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_..ccid.h_ccid_hc_tx_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_..ccid.h_ccid_hc_tx_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, i8, i8, i32, i8*)* }
%struct.sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccid*, %struct.sock*, i8, i8, i32, i8*)* @ccid_hc_tx_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid_hc_tx_parse_options(%struct.ccid* %0, %struct.sock* %1, i8 zeroext %2, i8 zeroext %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.ccid*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ccid* %0, %struct.ccid** %7, align 8
  store %struct.sock* %1, %struct.sock** %8, align 8
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.ccid*, %struct.ccid** %7, align 8
  %15 = getelementptr inbounds %struct.ccid, %struct.ccid* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.sock*, i8, i8, i32, i8*)*, i32 (%struct.sock*, i8, i8, i32, i8*)** %17, align 8
  %19 = icmp ne i32 (%struct.sock*, i8, i8, i32, i8*)* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %6
  %21 = load %struct.ccid*, %struct.ccid** %7, align 8
  %22 = getelementptr inbounds %struct.ccid, %struct.ccid* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.sock*, i8, i8, i32, i8*)*, i32 (%struct.sock*, i8, i8, i32, i8*)** %24, align 8
  %26 = load %struct.sock*, %struct.sock** %8, align 8
  %27 = load i8, i8* %9, align 1
  %28 = load i8, i8* %10, align 1
  %29 = load i32, i32* %11, align 4
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 %25(%struct.sock* %26, i8 zeroext %27, i8 zeroext %28, i32 %29, i8* %30)
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %20, %6
  %33 = load i32, i32* %13, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
