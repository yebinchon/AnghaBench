; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32* }
%struct.nf_conn = type { i32 }
%struct.nf_conntrack_l3proto = type { i32 (%struct.sk_buff*, i32, i32*, i32*)* }
%struct.nf_conntrack_l4proto = type { i32 (%struct.net.0*, %struct.sk_buff*, i32, i32*, i32, i32)*, i32 (%struct.nf_conn.1*, %struct.sk_buff*, i32, i32, i32, i32)* }
%struct.net.0 = type opaque
%struct.nf_conn.1 = type opaque

@ignore = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"not prepared to track yet or error occured\0A\00", align 1
@error = common dso_local global i32 0, align 4
@invalid = common dso_local global i32 0, align 4
@drop = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"nf_conntrack_in: Can't track with proto module\0A\00", align 1
@IPS_SEEN_REPLY_BIT = common dso_local global i32 0, align 4
@IPCT_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_in(%struct.net* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nf_conntrack_l3proto*, align 8
  %13 = alloca %struct.nf_conntrack_l4proto*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.net*, %struct.net** %6, align 8
  %24 = load i32, i32* @ignore, align 4
  %25 = call i32 @NF_CT_STAT_INC_ATOMIC(%struct.net* %23, i32 %24)
  %26 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %26, i32* %5, align 4
  br label %167

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.nf_conntrack_l3proto* @__nf_ct_l3proto_find(i32 %28)
  store %struct.nf_conntrack_l3proto* %29, %struct.nf_conntrack_l3proto** %12, align 8
  %30 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %12, align 8
  %31 = getelementptr inbounds %struct.nf_conntrack_l3proto, %struct.nf_conntrack_l3proto* %30, i32 0, i32 0
  %32 = load i32 (%struct.sk_buff*, i32, i32*, i32*)*, i32 (%struct.sk_buff*, i32, i32*, i32*)** %31, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = call i32 @skb_network_offset(%struct.sk_buff* %34)
  %36 = call i32 %32(%struct.sk_buff* %33, i32 %35, i32* %14, i32* %15)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %27
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.net*, %struct.net** %6, align 8
  %42 = load i32, i32* @error, align 4
  %43 = call i32 @NF_CT_STAT_INC_ATOMIC(%struct.net* %41, i32 %42)
  %44 = load %struct.net*, %struct.net** %6, align 8
  %45 = load i32, i32* @invalid, align 4
  %46 = call i32 @NF_CT_STAT_INC_ATOMIC(%struct.net* %44, i32 %45)
  %47 = load i32, i32* %17, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %167

49:                                               ; preds = %27
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32 %50, i32 %51)
  store %struct.nf_conntrack_l4proto* %52, %struct.nf_conntrack_l4proto** %13, align 8
  %53 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %13, align 8
  %54 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %53, i32 0, i32 0
  %55 = load i32 (%struct.net.0*, %struct.sk_buff*, i32, i32*, i32, i32)*, i32 (%struct.net.0*, %struct.sk_buff*, i32, i32*, i32, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.net.0*, %struct.sk_buff*, i32, i32*, i32, i32)* %55, null
  br i1 %56, label %57, label %87

57:                                               ; preds = %49
  %58 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %13, align 8
  %59 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %58, i32 0, i32 0
  %60 = load i32 (%struct.net.0*, %struct.sk_buff*, i32, i32*, i32, i32)*, i32 (%struct.net.0*, %struct.sk_buff*, i32, i32*, i32, i32)** %59, align 8
  %61 = load %struct.net*, %struct.net** %6, align 8
  %62 = bitcast %struct.net* %61 to %struct.net.0*
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 %60(%struct.net.0* %62, %struct.sk_buff* %63, i32 %64, i32* %11, i32 %65, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %57
  %71 = load %struct.net*, %struct.net** %6, align 8
  %72 = load i32, i32* @error, align 4
  %73 = call i32 @NF_CT_STAT_INC_ATOMIC(%struct.net* %71, i32 %72)
  %74 = load %struct.net*, %struct.net** %6, align 8
  %75 = load i32, i32* @invalid, align 4
  %76 = call i32 @NF_CT_STAT_INC_ATOMIC(%struct.net* %74, i32 %75)
  %77 = load i32, i32* %17, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %167

79:                                               ; preds = %57
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %5, align 4
  br label %167

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %49
  %88 = load %struct.net*, %struct.net** %6, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %12, align 8
  %94 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %13, align 8
  %95 = call %struct.nf_conn* @resolve_normal_ct(%struct.net* %88, %struct.sk_buff* %89, i32 %90, i32 %91, i32 %92, %struct.nf_conntrack_l3proto* %93, %struct.nf_conntrack_l4proto* %94, i32* %16, i32* %11)
  store %struct.nf_conn* %95, %struct.nf_conn** %10, align 8
  %96 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %97 = icmp ne %struct.nf_conn* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %87
  %99 = load %struct.net*, %struct.net** %6, align 8
  %100 = load i32, i32* @invalid, align 4
  %101 = call i32 @NF_CT_STAT_INC_ATOMIC(%struct.net* %99, i32 %100)
  %102 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %102, i32* %5, align 4
  br label %167

103:                                              ; preds = %87
  %104 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %105 = call i64 @IS_ERR(%struct.nf_conn* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.net*, %struct.net** %6, align 8
  %109 = load i32, i32* @drop, align 4
  %110 = call i32 @NF_CT_STAT_INC_ATOMIC(%struct.net* %108, i32 %109)
  %111 = load i32, i32* @NF_DROP, align 4
  store i32 %111, i32* %5, align 4
  br label %167

112:                                              ; preds = %103
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @NF_CT_ASSERT(i32* %115)
  %117 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %13, align 8
  %118 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %117, i32 0, i32 1
  %119 = load i32 (%struct.nf_conn.1*, %struct.sk_buff*, i32, i32, i32, i32)*, i32 (%struct.nf_conn.1*, %struct.sk_buff*, i32, i32, i32, i32)** %118, align 8
  %120 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %121 = bitcast %struct.nf_conn* %120 to %struct.nf_conn.1*
  %122 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 %119(%struct.nf_conn.1* %121, %struct.sk_buff* %122, i32 %123, i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %112
  %131 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %132 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @nf_conntrack_put(i32* %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  store i32* null, i32** %137, align 8
  %138 = load %struct.net*, %struct.net** %6, align 8
  %139 = load i32, i32* @invalid, align 4
  %140 = call i32 @NF_CT_STAT_INC_ATOMIC(%struct.net* %138, i32 %139)
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* @NF_DROP, align 4
  %143 = sub i32 0, %142
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %130
  %146 = load %struct.net*, %struct.net** %6, align 8
  %147 = load i32, i32* @drop, align 4
  %148 = call i32 @NF_CT_STAT_INC_ATOMIC(%struct.net* %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %130
  %150 = load i32, i32* %17, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %167

152:                                              ; preds = %112
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %152
  %156 = load i32, i32* @IPS_SEEN_REPLY_BIT, align 4
  %157 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %158 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %157, i32 0, i32 0
  %159 = call i32 @test_and_set_bit(i32 %156, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = load i32, i32* @IPCT_STATUS, align 4
  %163 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %164 = call i32 @nf_conntrack_event_cache(i32 %162, %struct.nf_conn* %163)
  br label %165

165:                                              ; preds = %161, %155, %152
  %166 = load i32, i32* %17, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %165, %149, %107, %98, %84, %70, %39, %22
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @NF_CT_STAT_INC_ATOMIC(%struct.net*, i32) #1

declare dso_local %struct.nf_conntrack_l3proto* @__nf_ct_l3proto_find(i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32, i32) #1

declare dso_local %struct.nf_conn* @resolve_normal_ct(%struct.net*, %struct.sk_buff*, i32, i32, i32, %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l4proto*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.nf_conn*) #1

declare dso_local i32 @NF_CT_ASSERT(i32*) #1

declare dso_local i32 @nf_conntrack_put(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nf_conntrack_event_cache(i32, %struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
