; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_gcf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_gcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.nf_conntrack_expect = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"nf_ct_ras: GCF\0A\00", align 1
@IPS_EXPECTED_BIT = common dso_local global i32 0, align 4
@NF_CT_EXPECT_CLASS_DEFAULT = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@nf_conntrack_helper_ras = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"nf_ct_ras: expect RAS \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, %struct.TYPE_13__*)* @process_gcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_gcf(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, %struct.TYPE_13__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %union.nf_inet_addr, align 4
  %16 = alloca %struct.nf_conntrack_expect*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @CTINFO2DIR(i32 %17)
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = call i32 @get_h225_addr(%struct.nf_conn* %20, i8* %22, i32* %24, %union.nf_inet_addr* %15, i64* %14)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %103

28:                                               ; preds = %5
  %29 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %30 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = call i32 @memcmp(%union.nf_inet_addr* %15, i32* %37, i32 4)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %28
  %41 = load i64, i64* %14, align 8
  %42 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %43 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %41, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %103

56:                                               ; preds = %40, %28
  %57 = load i32, i32* @IPS_EXPECTED_BIT, align 4
  %58 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %59 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %58, i32 0, i32 1
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %103

63:                                               ; preds = %56
  %64 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %65 = call %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn* %64)
  store %struct.nf_conntrack_expect* %65, %struct.nf_conntrack_expect** %16, align 8
  %66 = icmp eq %struct.nf_conntrack_expect* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 -1, i32* %6, align 4
  br label %103

68:                                               ; preds = %63
  %69 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %16, align 8
  %70 = load i32, i32* @NF_CT_EXPECT_CLASS_DEFAULT, align 4
  %71 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %72 = call i32 @nf_ct_l3num(%struct.nf_conn* %71)
  %73 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %74 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* @IPPROTO_UDP, align 4
  %86 = call i32 @nf_ct_expect_init(%struct.nf_conntrack_expect* %69, i32 %70, i32 %72, i32* %84, %union.nf_inet_addr* %15, i32 %85, i32* null, i64* %14)
  %87 = load i32, i32* @nf_conntrack_helper_ras, align 4
  %88 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %16, align 8
  %89 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %16, align 8
  %91 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %68
  %94 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %16, align 8
  %96 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %95, i32 0, i32 0
  %97 = call i32 @nf_ct_dump_tuple(i32* %96)
  br label %99

98:                                               ; preds = %68
  store i32 -1, i32* %13, align 4
  br label %99

99:                                               ; preds = %98, %93
  %100 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %16, align 8
  %101 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %100)
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %99, %67, %62, %55, %27
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @get_h225_addr(%struct.nf_conn*, i8*, i32*, %union.nf_inet_addr*, i64*) #1

declare dso_local i32 @memcmp(%union.nf_inet_addr*, i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_expect_init(%struct.nf_conntrack_expect*, i32, i32, i32*, %union.nf_inet_addr*, i32, i32*, i64*) #1

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
