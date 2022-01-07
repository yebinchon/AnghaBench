; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_connlimit.c_same_source_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_connlimit.c_same_source_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.nf_inet_addr = type { i32* }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.nf_inet_addr*, %union.nf_inet_addr*, %union.nf_inet_addr*, i64)* @same_source_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_source_net(%union.nf_inet_addr* %0, %union.nf_inet_addr* %1, %union.nf_inet_addr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.nf_inet_addr*, align 8
  %7 = alloca %union.nf_inet_addr*, align 8
  %8 = alloca %union.nf_inet_addr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.nf_inet_addr, align 8
  %11 = alloca %union.nf_inet_addr, align 8
  %12 = alloca i32, align 4
  store %union.nf_inet_addr* %0, %union.nf_inet_addr** %6, align 8
  store %union.nf_inet_addr* %1, %union.nf_inet_addr** %7, align 8
  store %union.nf_inet_addr* %2, %union.nf_inet_addr** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @NFPROTO_IPV4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %4
  %17 = load %union.nf_inet_addr*, %union.nf_inet_addr** %6, align 8
  %18 = bitcast %union.nf_inet_addr* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %21 = bitcast %union.nf_inet_addr* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  %24 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %25 = bitcast %union.nf_inet_addr* %24 to i32*
  %26 = load i32, i32* %25, align 8
  %27 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %28 = bitcast %union.nf_inet_addr* %27 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = icmp eq i32 %23, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %91

33:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %82, %33
  %35 = load i32, i32* %12, align 4
  %36 = load %union.nf_inet_addr*, %union.nf_inet_addr** %6, align 8
  %37 = bitcast %union.nf_inet_addr* %36 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = icmp ult i32 %35, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %34
  %42 = load %union.nf_inet_addr*, %union.nf_inet_addr** %6, align 8
  %43 = bitcast %union.nf_inet_addr* %42 to i32**
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %50 = bitcast %union.nf_inet_addr* %49 to i32**
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %48, %55
  %57 = bitcast %union.nf_inet_addr* %10 to i32**
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %63 = bitcast %union.nf_inet_addr* %62 to i32**
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %70 = bitcast %union.nf_inet_addr* %69 to i32**
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %68, %75
  %77 = bitcast %union.nf_inet_addr* %11 to i32**
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %76, i32* %81, align 4
  br label %82

82:                                               ; preds = %41
  %83 = load i32, i32* %12, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %34

85:                                               ; preds = %34
  %86 = bitcast %union.nf_inet_addr* %10 to i32**
  %87 = bitcast %union.nf_inet_addr* %11 to i32**
  %88 = call i64 @memcmp(i32** %86, i32** %87, i32 8)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %85, %16
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @memcmp(i32**, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
