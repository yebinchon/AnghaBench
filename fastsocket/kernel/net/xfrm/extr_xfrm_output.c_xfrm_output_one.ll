; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_output.c_xfrm_output_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_output.c_xfrm_output_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.dst_entry = type { %struct.xfrm_state* }
%struct.xfrm_state = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32, i32 (%struct.xfrm_state*, %struct.sk_buff*)* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 (%struct.xfrm_state*, %struct.sk_buff*)* }
%struct.net = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@LINUX_MIB_XFRMOUTERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTSTATEMODEERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTSTATEEXPIRED = common dso_local global i32 0, align 4
@XFRM_TYPE_REPLAY_PROT = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTSTATESEQERROR = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@XFRM_REPLAY_UPDATE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTSTATEPROTOERROR = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@XFRM_MODE_FLAG_TUNNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @xfrm_output_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_output_one(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %8)
  store %struct.dst_entry* %9, %struct.dst_entry** %5, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %11 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %10, i32 0, i32 0
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  store %struct.xfrm_state* %12, %struct.xfrm_state** %6, align 8
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %14 = call %struct.net* @xs_net(%struct.xfrm_state* %13)
  store %struct.net* %14, %struct.net** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %139

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %177, %18
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call i32 @xfrm_state_check_space(%struct.xfrm_state* %20, %struct.sk_buff* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.net*, %struct.net** %7, align 8
  %27 = load i32, i32* @LINUX_MIB_XFRMOUTERROR, align 4
  %28 = call i32 @XFRM_INC_STATS(%struct.net* %26, i32 %27)
  br label %186

29:                                               ; preds = %19
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %31 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %30, i32 0, i32 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32 (%struct.xfrm_state*, %struct.sk_buff*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*)** %33, align 8
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call i32 %34(%struct.xfrm_state* %35, %struct.sk_buff* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.net*, %struct.net** %7, align 8
  %42 = load i32, i32* @LINUX_MIB_XFRMOUTSTATEMODEERROR, align 4
  %43 = call i32 @XFRM_INC_STATS(%struct.net* %41, i32 %42)
  br label %186

44:                                               ; preds = %29
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %46 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_bh(i32* %46)
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %49 = call i32 @xfrm_state_check_expire(%struct.xfrm_state* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.net*, %struct.net** %7, align 8
  %54 = load i32, i32* @LINUX_MIB_XFRMOUTSTATEEXPIRED, align 4
  %55 = call i32 @XFRM_INC_STATS(%struct.net* %53, i32 %54)
  br label %182

56:                                               ; preds = %44
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %58 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @XFRM_TYPE_REPLAY_PROT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %106

65:                                               ; preds = %56
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = call %struct.TYPE_12__* @XFRM_SKB_CB(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i64 %70, i64* %74, align 8
  %75 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %76 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %65
  %84 = load %struct.net*, %struct.net** %7, align 8
  %85 = load i32, i32* @LINUX_MIB_XFRMOUTSTATESEQERROR, align 4
  %86 = call i32 @XFRM_INC_STATS(%struct.net* %84, i32 %85)
  %87 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %88 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %94 = call i32 @xfrm_audit_state_replay_overflow(%struct.xfrm_state* %92, %struct.sk_buff* %93)
  %95 = load i32, i32* @EOVERFLOW, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %182

97:                                               ; preds = %65
  %98 = load %struct.net*, %struct.net** %7, align 8
  %99 = call i64 @xfrm_aevent_is_on(%struct.net* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %103 = load i32, i32* @XFRM_REPLAY_UPDATE, align 4
  %104 = call i32 @xfrm_replay_notify(%struct.xfrm_state* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %56
  %107 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %111 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %109
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 4
  %117 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %118 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %123 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock_bh(i32* %123)
  %125 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %126 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32 (%struct.xfrm_state*, %struct.sk_buff*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*)** %128, align 8
  %130 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %132 = call i32 %129(%struct.xfrm_state* %130, %struct.sk_buff* %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @EINPROGRESS, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %106
  br label %180

138:                                              ; preds = %106
  br label %139

139:                                              ; preds = %138, %17
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load %struct.net*, %struct.net** %7, align 8
  %144 = load i32, i32* @LINUX_MIB_XFRMOUTSTATEPROTOERROR, align 4
  %145 = call i32 @XFRM_INC_STATS(%struct.net* %143, i32 %144)
  br label %186

146:                                              ; preds = %139
  %147 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %148 = call %struct.dst_entry* @dst_pop(%struct.dst_entry* %147)
  store %struct.dst_entry* %148, %struct.dst_entry** %5, align 8
  %149 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %150 = icmp ne %struct.dst_entry* %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %146
  %152 = load %struct.net*, %struct.net** %7, align 8
  %153 = load i32, i32* @LINUX_MIB_XFRMOUTERROR, align 4
  %154 = call i32 @XFRM_INC_STATS(%struct.net* %152, i32 %153)
  %155 = load i32, i32* @EHOSTUNREACH, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %4, align 4
  br label %186

157:                                              ; preds = %146
  %158 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %159 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %160 = call i32 @skb_dst_set(%struct.sk_buff* %158, %struct.dst_entry* %159)
  %161 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %162 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %161, i32 0, i32 0
  %163 = load %struct.xfrm_state*, %struct.xfrm_state** %162, align 8
  store %struct.xfrm_state* %163, %struct.xfrm_state** %6, align 8
  br label %164

164:                                              ; preds = %157
  %165 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %166 = icmp ne %struct.xfrm_state* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %169 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %168, i32 0, i32 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @XFRM_MODE_FLAG_TUNNEL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  br label %177

177:                                              ; preds = %167, %164
  %178 = phi i1 [ false, %164 ], [ %176, %167 ]
  br i1 %178, label %19, label %179

179:                                              ; preds = %177
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %186, %179, %137
  %181 = load i32, i32* %4, align 4
  ret i32 %181

182:                                              ; preds = %83, %52
  %183 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %184 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %183, i32 0, i32 0
  %185 = call i32 @spin_unlock_bh(i32* %184)
  br label %186

186:                                              ; preds = %182, %151, %142, %40, %25
  %187 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %188 = call i32 @kfree_skb(%struct.sk_buff* %187)
  br label %180
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_check_space(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @xfrm_state_check_expire(%struct.xfrm_state*) #1

declare dso_local %struct.TYPE_12__* @XFRM_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfrm_audit_state_replay_overflow(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i64 @xfrm_aevent_is_on(%struct.net*) #1

declare dso_local i32 @xfrm_replay_notify(%struct.xfrm_state*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.dst_entry* @dst_pop(%struct.dst_entry*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
