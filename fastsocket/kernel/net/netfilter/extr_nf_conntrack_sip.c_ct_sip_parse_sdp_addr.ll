; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_sdp_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_sdp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*, i32, i32, i32, i32, i32*, i32*, %union.nf_inet_addr*)* @ct_sip_parse_sdp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_sip_parse_sdp_addr(%struct.nf_conn* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, %union.nf_inet_addr* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %union.nf_inet_addr*, align 8
  %20 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store %union.nf_inet_addr* %8, %union.nf_inet_addr** %19, align 8
  %21 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32*, i32** %17, align 8
  %28 = load i32*, i32** %18, align 8
  %29 = call i32 @ct_sip_get_sdp_header(%struct.nf_conn* %21, i8* %22, i32 %23, i32 %24, i32 %25, i32 %26, i32* %27, i32* %28)
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %20, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %9
  %33 = load i32, i32* %20, align 4
  store i32 %33, i32* %10, align 4
  br label %55

34:                                               ; preds = %9
  %35 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load %union.nf_inet_addr*, %union.nf_inet_addr** %19, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = load i32, i32* %43, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i32*, i32** %18, align 8
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = call i32 @parse_addr(%struct.nf_conn* %35, i8* %40, i32* null, %union.nf_inet_addr* %41, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %34
  store i32 -1, i32* %10, align 4
  br label %55

54:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  br label %55

55:                                               ; preds = %54, %53, %32
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local i32 @ct_sip_get_sdp_header(%struct.nf_conn*, i8*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @parse_addr(%struct.nf_conn*, i8*, i32*, %union.nf_inet_addr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
