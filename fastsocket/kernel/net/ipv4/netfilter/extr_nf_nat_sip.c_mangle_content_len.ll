; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_sip.c_mangle_content_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_sip.c_mangle_content_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }

@SDP_HDR_VERSION = common dso_local global i32 0, align 4
@SDP_HDR_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"v=\00", align 1
@SIP_HDR_CONTENT_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8**, i32*)* @mangle_content_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mangle_content_len(%struct.sk_buff* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %15, i32* %8)
  store %struct.nf_conn* %16, %struct.nf_conn** %9, align 8
  %17 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SDP_HDR_VERSION, align 4
  %23 = load i32, i32* @SDP_HDR_UNSPEC, align 4
  %24 = call i64 @ct_sip_get_sdp_header(%struct.nf_conn* %17, i8* %19, i32 0, i32 %21, i32 %22, i32 %23, i32* %10, i32* %11)
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

27:                                               ; preds = %3
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sub i32 %29, %30
  %32 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %33 = add i32 %31, %32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SIP_HDR_CONTENT_LENGTH, align 4
  %40 = call i64 @ct_sip_get_header(%struct.nf_conn* %34, i8* %36, i32 0, i32 %38, i32 %39, i32* %10, i32* %11)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %55

43:                                               ; preds = %27
  %44 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load i8**, i8*** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @mangle_packet(%struct.sk_buff* %47, i8** %48, i32* %49, i32 %50, i32 %51, i8* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %43, %42, %26
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @ct_sip_get_sdp_header(%struct.nf_conn*, i8*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ct_sip_get_header(%struct.nf_conn*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mangle_packet(%struct.sk_buff*, i8**, i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
