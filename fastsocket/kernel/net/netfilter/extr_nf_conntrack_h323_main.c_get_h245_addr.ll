; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_get_h245_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_get_h245_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%union.nf_inet_addr = type { i32 }

@eH245_TransportAddress_unicastAddress = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*, %struct.TYPE_9__*, %union.nf_inet_addr*, %union.nf_inet_addr*)* @get_h245_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_h245_addr(%struct.nf_conn* %0, i8* %1, %struct.TYPE_9__* %2, %union.nf_inet_addr* %3, %union.nf_inet_addr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %union.nf_inet_addr*, align 8
  %11 = alloca %union.nf_inet_addr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store %union.nf_inet_addr* %3, %union.nf_inet_addr** %10, align 8
  store %union.nf_inet_addr* %4, %union.nf_inet_addr** %11, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @eH245_TransportAddress_unicastAddress, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %77

20:                                               ; preds = %5
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %55 [
    i32 128, label %25
    i32 129, label %40
  ]

25:                                               ; preds = %20
  %26 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %27 = call i32 @nf_ct_l3num(%struct.nf_conn* %26)
  %28 = load i32, i32* @AF_INET, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %77

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %32, i64 %38
  store i8* %39, i8** %12, align 8
  store i32 4, i32* %13, align 4
  br label %56

40:                                               ; preds = %20
  %41 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %42 = call i32 @nf_ct_l3num(%struct.nf_conn* %41)
  %43 = load i32, i32* @AF_INET6, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %77

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %47, i64 %53
  store i8* %54, i8** %12, align 8
  store i32 16, i32* %13, align 4
  br label %56

55:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %77

56:                                               ; preds = %46, %31
  %57 = load %union.nf_inet_addr*, %union.nf_inet_addr** %10, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @memcpy(%union.nf_inet_addr* %57, i8* %58, i32 %59)
  %61 = load %union.nf_inet_addr*, %union.nf_inet_addr** %10, align 8
  %62 = bitcast %union.nf_inet_addr* %61 to i8*
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %62, i64 %64
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(i8* %65, i32 0, i32 %69)
  %71 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = call i32 @memcpy(%union.nf_inet_addr* %71, i8* %75, i32 4)
  store i32 1, i32* %6, align 4
  br label %77

77:                                               ; preds = %56, %55, %45, %30, %19
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @memcpy(%union.nf_inet_addr*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
