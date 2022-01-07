; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_t120.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_t120.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.nf_conntrack_expect = type { i32, %struct.TYPE_19__, i32, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_28__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@nf_nat_follow_master = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nf_nat_h323: out of TCP ports\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"nf_nat_h323: expect T.120 %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*, i32, %struct.nf_conntrack_expect*)* @nat_t120 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat_t120(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, i32 %4, i32* %5, i32 %6, %struct.nf_conntrack_expect* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nf_conntrack_expect*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8** %3, i8*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.nf_conntrack_expect* %7, %struct.nf_conntrack_expect** %17, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @CTINFO2DIR(i32 %20)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %16, align 4
  %23 = call i64 @ntohs(i32 %22)
  store i64 %23, i64* %19, align 8
  %24 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %25 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %32 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* @nf_nat_follow_master, align 4
  %36 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %37 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %43 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %61, %8
  %45 = load i64, i64* %19, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i64, i64* %19, align 8
  %49 = call i32 @htons(i64 %48)
  %50 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %51 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  store i32 %49, i32* %55, align 4
  %56 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %57 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %64

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %19, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %19, align 8
  br label %44

64:                                               ; preds = %59, %44
  %65 = load i64, i64* %19, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = call i64 (...) @net_ratelimit()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  store i32 0, i32* %9, align 4
  br label %125

73:                                               ; preds = %64
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = load i8**, i8*** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %79 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %78, i32 0, i32 0
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %79, align 8
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i64, i64* %19, align 8
  %91 = call i32 @htons(i64 %90)
  %92 = call i64 @set_h245_addr(%struct.sk_buff* %74, i8** %75, i32 %76, i32* %77, i32* %89, i32 %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %73
  %95 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %96 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %95)
  store i32 -1, i32* %9, align 4
  br label %125

97:                                               ; preds = %73
  %98 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %99 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 0
  %103 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %104 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @ntohs(i32 %109)
  %111 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %112 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %117 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @ntohs(i32 %122)
  %124 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* %102, i64 %110, i32* %115, i64 %123)
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %97, %94, %72
  %126 = load i32, i32* %9, align 4
  ret i32 %126
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @set_h245_addr(%struct.sk_buff*, i8**, i32, i32*, i32*, i32) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @pr_debug(i8*, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
