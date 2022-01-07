; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_ip* }
%struct.bitmap_ip = type { i32 }

@IPSET_ERR_EXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, i8*, i32, i32)* @bitmap_ip_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ip_del(%struct.ip_set* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_set*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bitmap_ip*, align 8
  %11 = alloca i32, align 4
  store %struct.ip_set* %0, %struct.ip_set** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %13 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %12, i32 0, i32 0
  %14 = load %struct.bitmap_ip*, %struct.bitmap_ip** %13, align 8
  store %struct.bitmap_ip* %14, %struct.bitmap_ip** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.bitmap_ip*, %struct.bitmap_ip** %10, align 8
  %20 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @test_and_clear_bit(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @IPSET_ERR_EXIST, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
