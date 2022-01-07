; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipmr.c_ip_mr_forward.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipmr.c_ip_mr_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.mr_table = type { %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.mfc_cache = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@MFC_ASSERT_THRESH = common dso_local global i64 0, align 8
@IGMPMSG_WRONGVIF = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.mr_table*, %struct.sk_buff*, %struct.mfc_cache*, i32)* @ip_mr_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mr_forward(%struct.net* %0, %struct.mr_table* %1, %struct.sk_buff* %2, %struct.mfc_cache* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.mr_table*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.mfc_cache*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.mr_table* %1, %struct.mr_table** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store %struct.mfc_cache* %3, %struct.mfc_cache** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %18 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %19 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %22 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %31 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %29
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.mr_table*, %struct.mr_table** %8, align 8
  %39 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %116

50:                                               ; preds = %5
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = call %struct.TYPE_11__* @skb_rtable(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %222

58:                                               ; preds = %50
  %59 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %60 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.mr_table*, %struct.mr_table** %8, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @ipmr_find_vif(%struct.mr_table* %65, i64 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %115

72:                                               ; preds = %58
  %73 = load %struct.mr_table*, %struct.mr_table** %8, align 8
  %74 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %115

77:                                               ; preds = %72
  %78 = load %struct.mr_table*, %struct.mr_table** %8, align 8
  %79 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %77
  %83 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %84 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 255
  br i1 %92, label %93, label %115

93:                                               ; preds = %82, %77
  %94 = load i64, i64* @jiffies, align 8
  %95 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %96 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MFC_ASSERT_THRESH, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i64 @time_after(i64 %94, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %93
  %105 = load i64, i64* @jiffies, align 8
  %106 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %107 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  store i64 %105, i64* %109, align 8
  %110 = load %struct.mr_table*, %struct.mr_table** %8, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @IGMPMSG_WRONGVIF, align 4
  %114 = call i32 @ipmr_cache_report(%struct.mr_table* %110, %struct.sk_buff* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %104, %93, %82, %72, %58
  br label %222

116:                                              ; preds = %5
  %117 = load %struct.mr_table*, %struct.mr_table** %8, align 8
  %118 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.mr_table*, %struct.mr_table** %8, align 8
  %130 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %128
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %135, align 8
  %140 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %141 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %190, %116
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %149 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp sge i32 %147, %152
  br i1 %153, label %154, label %193

154:                                              ; preds = %146
  %155 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %156 = call %struct.TYPE_12__* @ip_hdr(%struct.sk_buff* %155)
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %160 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp sgt i64 %158, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %154
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, -1
  br i1 %172, label %173, label %187

173:                                              ; preds = %170
  %174 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %175 = load i32, i32* @GFP_ATOMIC, align 4
  %176 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %174, i32 %175)
  store %struct.sk_buff* %176, %struct.sk_buff** %16, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %178 = icmp ne %struct.sk_buff* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = load %struct.net*, %struct.net** %7, align 8
  %181 = load %struct.mr_table*, %struct.mr_table** %8, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %183 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @ipmr_queue_xmit(%struct.net* %180, %struct.mr_table* %181, %struct.sk_buff* %182, %struct.mfc_cache* %183, i32 %184)
  br label %186

186:                                              ; preds = %179, %173
  br label %187

187:                                              ; preds = %186, %170
  %188 = load i32, i32* %14, align 4
  store i32 %188, i32* %12, align 4
  br label %189

189:                                              ; preds = %187, %154
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %14, align 4
  br label %146

193:                                              ; preds = %146
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, -1
  br i1 %195, label %196, label %221

196:                                              ; preds = %193
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %213

199:                                              ; preds = %196
  %200 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %201 = load i32, i32* @GFP_ATOMIC, align 4
  %202 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %200, i32 %201)
  store %struct.sk_buff* %202, %struct.sk_buff** %17, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %204 = icmp ne %struct.sk_buff* %203, null
  br i1 %204, label %205, label %212

205:                                              ; preds = %199
  %206 = load %struct.net*, %struct.net** %7, align 8
  %207 = load %struct.mr_table*, %struct.mr_table** %8, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %209 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @ipmr_queue_xmit(%struct.net* %206, %struct.mr_table* %207, %struct.sk_buff* %208, %struct.mfc_cache* %209, i32 %210)
  br label %212

212:                                              ; preds = %205, %199
  br label %220

213:                                              ; preds = %196
  %214 = load %struct.net*, %struct.net** %7, align 8
  %215 = load %struct.mr_table*, %struct.mr_table** %8, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %217 = load %struct.mfc_cache*, %struct.mfc_cache** %10, align 8
  %218 = load i32, i32* %12, align 4
  %219 = call i32 @ipmr_queue_xmit(%struct.net* %214, %struct.mr_table* %215, %struct.sk_buff* %216, %struct.mfc_cache* %217, i32 %218)
  store i32 0, i32* %6, align 4
  br label %229

220:                                              ; preds = %212
  br label %221

221:                                              ; preds = %220, %193
  br label %222

222:                                              ; preds = %221, %115, %57
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %227 = call i32 @kfree_skb(%struct.sk_buff* %226)
  br label %228

228:                                              ; preds = %225, %222
  store i32 0, i32* %6, align 4
  br label %229

229:                                              ; preds = %228, %213
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

declare dso_local %struct.TYPE_11__* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @ipmr_find_vif(%struct.mr_table*, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ipmr_cache_report(%struct.mr_table*, %struct.sk_buff*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipmr_queue_xmit(%struct.net*, %struct.mr_table*, %struct.sk_buff*, %struct.mfc_cache*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
