; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_h245.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_h245.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.nf_conntrack_expect = type { i32, %struct.TYPE_22__, i32, %struct.TYPE_26__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_32__, %struct.TYPE_30__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%struct.nf_ct_h323_master = type { i64* }
%struct.TYPE_23__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.nf_ct_h323_master }

@nf_nat_follow_master = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nf_nat_q931: out of TCP ports\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"nf_nat_q931: expect H.245 %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*, i64, %struct.nf_conntrack_expect*)* @nat_h245 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat_h245(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, i32 %4, i32* %5, i64 %6, %struct.nf_conntrack_expect* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.nf_conntrack_expect*, align 8
  %18 = alloca %struct.nf_ct_h323_master*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8** %3, i8*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store %struct.nf_conntrack_expect* %7, %struct.nf_conntrack_expect** %17, align 8
  %21 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %22 = call %struct.TYPE_23__* @nfct_help(%struct.nf_conn* %21)
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  store %struct.nf_ct_h323_master* %24, %struct.nf_ct_h323_master** %18, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @CTINFO2DIR(i32 %25)
  store i32 %26, i32* %19, align 4
  %27 = load i64, i64* %16, align 8
  %28 = call i64 @ntohs(i64 %27)
  store i64 %28, i64* %20, align 8
  %29 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %30 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %37 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  store i64 %35, i64* %39, align 8
  %40 = load i32, i32* @nf_nat_follow_master, align 4
  %41 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %42 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %19, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %48 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %18, align 8
  %50 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %19, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %16, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %8
  %59 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %18, align 8
  %60 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %61, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @ntohs(i64 %68)
  store i64 %69, i64* %20, align 8
  br label %70

70:                                               ; preds = %58, %8
  br label %71

71:                                               ; preds = %89, %70
  %72 = load i64, i64* %20, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load i64, i64* %20, align 8
  %76 = call i8* @htons(i64 %75)
  %77 = ptrtoint i8* %76 to i64
  %78 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %79 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  store i64 %77, i64* %83, align 8
  %84 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %85 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %92

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %20, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %20, align 8
  br label %71

92:                                               ; preds = %87, %71
  %93 = load i64, i64* %20, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = call i64 (...) @net_ratelimit()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95
  store i32 0, i32* %9, align 4
  br label %173

101:                                              ; preds = %92
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = load i8**, i8*** %13, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32*, i32** %15, align 8
  %106 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %107 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %106, i32 0, i32 0
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %107, align 8
  %109 = load i32, i32* %19, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 0
  %118 = load i64, i64* %20, align 8
  %119 = call i8* @htons(i64 %118)
  %120 = call i64 @set_h225_addr(%struct.sk_buff* %102, i8** %103, i32 %104, i32* %105, i32* %117, i8* %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %101
  %123 = load i64, i64* %16, align 8
  %124 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %18, align 8
  %125 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 %123, i64* %129, align 8
  %130 = load i64, i64* %20, align 8
  %131 = call i8* @htons(i64 %130)
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %18, align 8
  %134 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %19, align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %135, i64 %140
  store i64 %132, i64* %141, align 8
  br label %145

142:                                              ; preds = %101
  %143 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %144 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %143)
  store i32 -1, i32* %9, align 4
  br label %173

145:                                              ; preds = %122
  %146 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %147 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %149, i32 0, i32 0
  %151 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %152 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @ntohs(i64 %157)
  %159 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %160 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %165 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @ntohs(i64 %170)
  %172 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* %150, i64 %158, i32* %163, i64 %171)
  store i32 0, i32* %9, align 4
  br label %173

173:                                              ; preds = %145, %142, %100
  %174 = load i32, i32* %9, align 4
  ret i32 %174
}

declare dso_local %struct.TYPE_23__* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @set_h225_addr(%struct.sk_buff*, i8**, i32, i32*, i32*, i8*) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @pr_debug(i8*, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
