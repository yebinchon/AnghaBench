; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_ifname_compare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_ifname_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i8*)* @ifname_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ifname_compare(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i64*
  store i64* %17, i64** %10, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %45, %3
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* @IFNAMSIZ, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %18
  %26 = load i64*, i64** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = xor i64 %30, %35
  %37 = load i64*, i64** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %36, %41
  %43 = load i64, i64* %7, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %25
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %18

48:                                               ; preds = %18
  %49 = load i64, i64* %7, align 8
  ret i64 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
