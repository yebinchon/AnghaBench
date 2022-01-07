; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_dgram.c_ieee802154_match_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_dgram.c_ieee802154_match_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dgram_sock = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@IEEE802154_ADDR_LONG = common dso_local global i64 0, align 8
@IEEE802154_ADDR_LEN = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.dgram_sock*)* @ieee802154_match_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_match_sock(i32* %0, i64 %1, i64 %2, %struct.dgram_sock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dgram_sock*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.dgram_sock* %3, %struct.dgram_sock** %9, align 8
  %10 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %11 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %55

15:                                               ; preds = %4
  %16 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %17 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE802154_ADDR_LONG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %24 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @IEEE802154_ADDR_LEN, align 4
  %29 = call i32 @memcmp(i32 %26, i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %55

32:                                               ; preds = %22, %15
  %33 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %34 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IEEE802154_ADDR_SHORT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %42 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %40, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %49 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %55

54:                                               ; preds = %46, %39, %32
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %53, %31, %14
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
