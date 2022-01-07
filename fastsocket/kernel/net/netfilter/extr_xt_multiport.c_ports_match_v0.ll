; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_multiport.c_ports_match_v0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_multiport.c_ports_match_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XT_MULTIPORT_DESTINATION = common dso_local global i32 0, align 4
@XT_MULTIPORT_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32, i64, i64)* @ports_match_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ports_match_v0(i64* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %44, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @XT_MULTIPORT_DESTINATION, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i64*, i64** %7, align 8
  %23 = load i32, i32* %12, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  br label %48

30:                                               ; preds = %21, %17
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @XT_MULTIPORT_SOURCE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i64*, i64** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %48

43:                                               ; preds = %34, %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %13

47:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %42, %29
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
