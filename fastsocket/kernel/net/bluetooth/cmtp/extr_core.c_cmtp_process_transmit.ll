; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_core.c_cmtp_process_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_core.c_cmtp_process_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.cmtp_scb = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"session %p\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't allocate memory for new frame\00", align 1
@uint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmtp_session*)* @cmtp_process_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmtp_process_transmit(%struct.cmtp_session* %0) #0 {
  %2 = alloca %struct.cmtp_session*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmtp_scb*, align 8
  store %struct.cmtp_session* %0, %struct.cmtp_session** %2, align 8
  %9 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %9)
  %11 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %12 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @alloc_skb(i32 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 @BT_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %199

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %187, %19
  %21 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %22 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %21, i32 0, i32 1
  %23 = call %struct.sk_buff* @skb_dequeue(i32* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %3, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %188

25:                                               ; preds = %20
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to %struct.cmtp_scb*
  store %struct.cmtp_scb* %30, %struct.cmtp_scb** %8, align 8
  %31 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %32 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = icmp ult i32 %37, 5
  br i1 %38, label %39, label %53

39:                                               ; preds = %25
  %40 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @cmtp_send_frame(%struct.cmtp_session* %40, i32 %43, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @skb_trim(%struct.sk_buff* %48, i32 0)
  %50 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %51 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %39, %25
  %54 = load i32, i32* @uint, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ult i32 %55, 258
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = sub i32 %58, 2
  br label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = sub i32 %61, 3
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i32 [ %59, %57 ], [ %62, %60 ]
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @min_t(i32 %54, i32 %64, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %70 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %63
  %74 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %75 = call i64 @cmtp_alloc_block_id(%struct.cmtp_session* %74)
  %76 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %77 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = icmp slt i64 %75, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %81 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %80, i32 0, i32 1
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = call i32 @skb_queue_head(i32* %81, %struct.sk_buff* %82)
  br label %188

84:                                               ; preds = %73, %63
  %85 = load i32, i32* %6, align 4
  %86 = icmp ult i32 %85, 256
  br i1 %86, label %87, label %112

87:                                               ; preds = %84
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i8* @skb_put(%struct.sk_buff* %88, i32 2)
  store i8* %89, i8** %5, align 8
  %90 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %91 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = shl i64 %92, 2
  %94 = and i64 %93, 60
  %95 = or i64 64, %94
  %96 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 0, i32 1
  %103 = sext i32 %102 to i64
  %104 = or i64 %95, %103
  %105 = trunc i64 %104 to i8
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  store i8 %105, i8* %107, align 1
  %108 = load i32, i32* %6, align 4
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8 %109, i8* %111, align 1
  br label %143

112:                                              ; preds = %84
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i8* @skb_put(%struct.sk_buff* %113, i32 3)
  store i8* %114, i8** %5, align 8
  %115 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %116 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = shl i64 %117, 2
  %119 = and i64 %118, 60
  %120 = or i64 128, %119
  %121 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 0, i32 1
  %128 = sext i32 %127 to i64
  %129 = or i64 %120, %128
  %130 = trunc i64 %129 to i8
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  store i8 %130, i8* %132, align 1
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, 255
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8 %135, i8* %137, align 1
  %138 = load i32, i32* %6, align 4
  %139 = lshr i32 %138, 8
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %5, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 2
  store i8 %140, i8* %142, align 1
  br label %143

143:                                              ; preds = %112, %87
  %144 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i8* @skb_put(%struct.sk_buff* %145, i32 %146)
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %144, i8* %147, i32 %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @skb_pull(%struct.sk_buff* %150, i32 %151)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ugt i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %143
  %158 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %159 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %158, i32 0, i32 1
  %160 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %161 = call i32 @skb_queue_head(i32* %159, %struct.sk_buff* %160)
  br label %187

162:                                              ; preds = %143
  %163 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %164 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %165 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @cmtp_free_block_id(%struct.cmtp_session* %163, i32 %167)
  %169 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %170 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %162
  %174 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @cmtp_send_frame(%struct.cmtp_session* %174, i32 %177, i32 %180)
  %182 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %183 = call i32 @skb_trim(%struct.sk_buff* %182, i32 0)
  br label %184

184:                                              ; preds = %173, %162
  %185 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %186 = call i32 @kfree_skb(%struct.sk_buff* %185)
  br label %187

187:                                              ; preds = %184, %157
  br label %20

188:                                              ; preds = %79, %20
  %189 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @cmtp_send_frame(%struct.cmtp_session* %189, i32 %192, i32 %195)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %198 = call i32 @kfree_skb(%struct.sk_buff* %197)
  br label %199

199:                                              ; preds = %188, %17
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.cmtp_session*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @cmtp_send_frame(%struct.cmtp_session*, i32, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i64 @cmtp_alloc_block_id(%struct.cmtp_session*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @cmtp_free_block_id(%struct.cmtp_session*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
