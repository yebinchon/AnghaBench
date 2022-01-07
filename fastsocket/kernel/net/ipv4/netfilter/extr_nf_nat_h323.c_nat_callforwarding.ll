; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_callforwarding.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_callforwarding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.nf_conntrack_expect = type { i32, %struct.TYPE_20__, i32, %struct.TYPE_23__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_30__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_27__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@ip_nat_callforwarding_expect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nf_nat_q931: out of TCP ports\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"nf_nat_q931: expect Call Forwarding %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*, i32, %struct.nf_conntrack_expect*)* @nat_callforwarding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat_callforwarding(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, i32 %4, i32* %5, i32 %6, %struct.nf_conntrack_expect* %7) #0 {
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
  %22 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %23 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %29 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %31 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %30, i32 0, i32 0
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %31, align 8
  %33 = load i32, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %45 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 4
  %49 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %50 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %57 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @ip_nat_callforwarding_expect, align 4
  %61 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %62 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %68 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i64 @ntohs(i32 %69)
  store i64 %70, i64* %19, align 8
  br label %71

71:                                               ; preds = %88, %8
  %72 = load i64, i64* %19, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load i64, i64* %19, align 8
  %76 = call i32 @htons(i64 %75)
  %77 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %78 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  store i32 %76, i32* %82, align 4
  %83 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %84 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %91

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %19, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %19, align 8
  br label %71

91:                                               ; preds = %86, %71
  %92 = load i64, i64* %19, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = call i64 (...) @net_ratelimit()
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %94
  store i32 0, i32* %9, align 4
  br label %155

100:                                              ; preds = %91
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = load i8**, i8*** %13, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32*, i32** %15, align 8
  %105 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %106 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %105, i32 0, i32 0
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i64, i64* %19, align 8
  %118 = call i32 @htons(i64 %117)
  %119 = call i32 @set_h225_addr(%struct.sk_buff* %101, i8** %102, i32 %103, i32* %104, %struct.TYPE_21__* %116, i32 %118)
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %100
  %125 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %126 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %125)
  store i32 -1, i32* %9, align 4
  br label %155

127:                                              ; preds = %100
  %128 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %129 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 0
  %133 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %134 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @ntohs(i32 %139)
  %141 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %142 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %147 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @ntohs(i32 %152)
  %154 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32* %132, i64 %140, i32* %145, i64 %153)
  store i32 0, i32* %9, align 4
  br label %155

155:                                              ; preds = %127, %124, %99
  %156 = load i32, i32* %9, align 4
  ret i32 %156
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @set_h225_addr(%struct.sk_buff*, i8**, i32, i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @pr_debug(i8*, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
