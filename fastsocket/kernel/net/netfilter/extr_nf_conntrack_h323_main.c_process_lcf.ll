; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_lcf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_lcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.nf_conntrack_expect = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"nf_ct_ras: LCF\0A\00", align 1
@NF_CT_EXPECT_CLASS_DEFAULT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@NF_CT_EXPECT_PERMANENT = common dso_local global i32 0, align 4
@nf_conntrack_helper_q931 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"nf_ct_ras: expect Q.931 \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, %struct.TYPE_9__*)* @process_lcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_lcf(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.nf_inet_addr, align 4
  %16 = alloca %struct.nf_conntrack_expect*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @CTINFO2DIR(i32 %17)
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = call i32 @get_h225_addr(%struct.nf_conn* %20, i8* %22, i32* %24, %union.nf_inet_addr* %15, i32* %14)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %71

28:                                               ; preds = %5
  %29 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %30 = call %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn* %29)
  store %struct.nf_conntrack_expect* %30, %struct.nf_conntrack_expect** %16, align 8
  %31 = icmp eq %struct.nf_conntrack_expect* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %71

33:                                               ; preds = %28
  %34 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %16, align 8
  %35 = load i32, i32* @NF_CT_EXPECT_CLASS_DEFAULT, align 4
  %36 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %37 = call i32 @nf_ct_l3num(%struct.nf_conn* %36)
  %38 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %39 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* @IPPROTO_TCP, align 4
  %51 = call i32 @nf_ct_expect_init(%struct.nf_conntrack_expect* %34, i32 %35, i32 %37, i32* %49, %union.nf_inet_addr* %15, i32 %50, i32* null, i32* %14)
  %52 = load i32, i32* @NF_CT_EXPECT_PERMANENT, align 4
  %53 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %16, align 8
  %54 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @nf_conntrack_helper_q931, align 4
  %56 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %16, align 8
  %57 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %16, align 8
  %59 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %33
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %16, align 8
  %64 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %63, i32 0, i32 0
  %65 = call i32 @nf_ct_dump_tuple(i32* %64)
  br label %67

66:                                               ; preds = %33
  store i32 -1, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %16, align 8
  %69 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %32, %27
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @get_h225_addr(%struct.nf_conn*, i8*, i32*, %union.nf_inet_addr*, i32*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_expect_init(%struct.nf_conntrack_expect*, i32, i32, i32*, %union.nf_inet_addr*, i32, i32*, i32*) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_dump_tuple(i32*) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
