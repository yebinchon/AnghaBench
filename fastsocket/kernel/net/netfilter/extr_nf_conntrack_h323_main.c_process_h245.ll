; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_h245.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_h245.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@eRequestMessage_openLogicalChannel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"nf_ct_h323: H.245 Request %d\0A\00", align 1
@eResponseMessage_openLogicalChannelAck = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"nf_ct_h323: H.245 Response %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"nf_ct_h323: H.245 signal %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, %struct.TYPE_7__*)* @process_h245 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_h245(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, i32 %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %13, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %63 [
    i32 129, label %17
    i32 128, label %40
  ]

17:                                               ; preds = %6
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @eRequestMessage_openLogicalChannel, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i8**, i8*** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = call i32 @process_olc(%struct.sk_buff* %25, %struct.nf_conn* %26, i32 %27, i8** %28, i32 %29, i32* %32)
  store i32 %33, i32* %7, align 4
  br label %69

34:                                               ; preds = %17
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %68

40:                                               ; preds = %6
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @eResponseMessage_openLogicalChannelAck, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i8**, i8*** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = call i32 @process_olca(%struct.sk_buff* %48, %struct.nf_conn* %49, i32 %50, i8** %51, i32 %52, i32* %55)
  store i32 %56, i32* %7, align 4
  br label %69

57:                                               ; preds = %40
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %68

63:                                               ; preds = %6
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %57, %34
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %47, %24
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @process_olc(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @process_olca(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
