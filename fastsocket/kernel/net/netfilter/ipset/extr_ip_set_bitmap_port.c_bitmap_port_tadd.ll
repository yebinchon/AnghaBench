; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_tadd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_tadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_port* }
%struct.bitmap_port = type { i64* }

@IPSET_FLAG_EXIST = common dso_local global i32 0, align 4
@IPSET_ERR_EXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, i8*, i32, i32)* @bitmap_port_tadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_port_tadd(%struct.ip_set* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_set*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bitmap_port*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.ip_set* %0, %struct.ip_set** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %14 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %13, i32 0, i32 0
  %15 = load %struct.bitmap_port*, %struct.bitmap_port** %14, align 8
  store %struct.bitmap_port* %15, %struct.bitmap_port** %10, align 8
  %16 = load %struct.bitmap_port*, %struct.bitmap_port** %10, align 8
  %17 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load i64*, i64** %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @ip_set_timeout_test(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @IPSET_FLAG_EXIST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @IPSET_ERR_EXIST, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %42

36:                                               ; preds = %28, %4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @ip_set_timeout_set(i32 %37)
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 %38, i64* %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %36, %33
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @ip_set_timeout_test(i64) #1

declare dso_local i64 @ip_set_timeout_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
