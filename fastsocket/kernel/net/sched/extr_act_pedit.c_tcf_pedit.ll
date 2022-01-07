; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_pedit.c_tcf_pedit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_pedit.c_tcf_pedit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.tc_action = type { %struct.tcf_pedit* }
%struct.tcf_pedit = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.tc_pedit_key*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.tc_pedit_key = type { i32, i8, i32, i8, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_result = type { i32 }

@TC_OK2MUNGE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"tc filter pedit offset must be on 32 bit boundaries\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"tc filter pedit offset %d cant exceed pkt length %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"pedit BUG: index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_pedit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_pedit(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcf_pedit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tc_pedit_key*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %16 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %17 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %16, i32 0, i32 0
  %18 = load %struct.tcf_pedit*, %struct.tcf_pedit** %17, align 8
  store %struct.tcf_pedit* %18, %struct.tcf_pedit** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TC_OK2MUNGE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call i64 @pskb_expand_head(%struct.sk_buff* %26, i32 0, i32 0, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %32 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %4, align 4
  br label %188

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i8* @skb_network_header(%struct.sk_buff* %36)
  store i8* %37, i8** %11, align 8
  %38 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %39 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %38, i32 0, i32 2
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %43 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %46 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %155

49:                                               ; preds = %35
  %50 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %51 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %50, i32 0, i32 6
  %52 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %51, align 8
  store %struct.tc_pedit_key* %52, %struct.tc_pedit_key** %12, align 8
  %53 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %54 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %139, %49
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %144

59:                                               ; preds = %56
  %60 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %12, align 8
  %61 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %12, align 8
  %64 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %63, i32 0, i32 1
  %65 = load i8, i8* %64, align 4
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %59
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %12, align 8
  %72 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %67
  %76 = load i8*, i8** %11, align 8
  %77 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %12, align 8
  %78 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  store i8* %81, i8** %15, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %12, align 8
  %86 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %85, i32 0, i32 1
  %87 = load i8, i8* %86, align 4
  %88 = sext i8 %87 to i32
  %89 = and i32 %84, %88
  %90 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %12, align 8
  %91 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %90, i32 0, i32 3
  %92 = load i8, i8* %91, align 4
  %93 = sext i8 %92 to i32
  %94 = ashr i32 %89, %93
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %14, align 4
  br label %98

97:                                               ; preds = %67
  br label %161

98:                                               ; preds = %75
  br label %99

99:                                               ; preds = %98, %59
  %100 = load i32, i32* %14, align 4
  %101 = srem i32 %100, 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %161

105:                                              ; preds = %99
  %106 = load i32, i32* %14, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %109, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %118)
  br label %161

120:                                              ; preds = %108, %105
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = bitcast i8* %124 to i32*
  store i32* %125, i32** %13, align 8
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %12, align 8
  %129 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %127, %130
  %132 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %12, align 8
  %133 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = xor i32 %131, %134
  %136 = load i32*, i32** %13, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %120
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %9, align 4
  %142 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %12, align 8
  %143 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %142, i32 1
  store %struct.tc_pedit_key* %143, %struct.tc_pedit_key** %12, align 8
  br label %56

144:                                              ; preds = %56
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @SET_TC_MUNGED(i32 %150)
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %147, %144
  br label %167

155:                                              ; preds = %35
  %156 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %157 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %160, %114, %103, %97
  %162 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %163 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %161, %154
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = call i64 @qdisc_pkt_len(%struct.sk_buff* %168)
  %170 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %171 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %169
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 4
  %177 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %178 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  %182 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %183 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %182, i32 0, i32 2
  %184 = call i32 @spin_unlock(i32* %183)
  %185 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %186 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %167, %30
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @SET_TC_MUNGED(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
