; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_recv_fragment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_recv_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff* }
%struct.tipc_msg = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"FRG<REC<\00", align 1
@FIRST_FRAGMENT = common dso_local global i64 0, align 8
@TIPC_MAX_USER_MSG_SIZE = common dso_local global i64 0, align 8
@LONG_H_SIZE = common dso_local global i64 0, align 8
@TIPC_MCAST_MSG = common dso_local global i64 0, align 8
@MCAST_H_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"<REC<Oversized: \00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Link unable to reassemble fragmented message\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" Discarding orphan fragment %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ORPHAN:\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Pending long buffers:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_recv_fragment(%struct.sk_buff** %0, %struct.sk_buff** %1, %struct.tipc_msg** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca %struct.tipc_msg**, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.tipc_msg*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.tipc_msg*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %6, align 8
  store %struct.tipc_msg** %2, %struct.tipc_msg*** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %22 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %9, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %24)
  store %struct.tipc_msg* %25, %struct.tipc_msg** %10, align 8
  %26 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %11, align 8
  %28 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %29 = call i64 @msg_long_msgno(%struct.tipc_msg* %28)
  store i64 %29, i64* %12, align 8
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %30, align 8
  %31 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %32 = call i32 @msg_dbg(%struct.tipc_msg* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %53, %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %37)
  %39 = call i64 @msg_seqno(%struct.tipc_msg* %38)
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %44 = call i64 @msg_orignode(%struct.tipc_msg* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %46 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %45)
  %47 = call i64 @msg_orignode(%struct.tipc_msg* %46)
  %48 = icmp ne i64 %44, %47
  br label %49

49:                                               ; preds = %42, %36
  %50 = phi i1 [ true, %36 ], [ %48, %42 ]
  br label %51

51:                                               ; preds = %49, %33
  %52 = phi i1 [ false, %33 ], [ %50, %49 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %8, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %11, align 8
  br label %33

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %140, label %61

61:                                               ; preds = %58
  %62 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %63 = call i64 @msg_type(%struct.tipc_msg* %62)
  %64 = load i64, i64* @FIRST_FRAGMENT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %140

66:                                               ; preds = %61
  %67 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %68 = call i64 @msg_data(%struct.tipc_msg* %67)
  %69 = inttoptr i64 %68 to %struct.tipc_msg*
  store %struct.tipc_msg* %69, %struct.tipc_msg** %13, align 8
  %70 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %71 = call i64 @msg_size(%struct.tipc_msg* %70)
  store i64 %71, i64* %14, align 8
  %72 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %73 = call i64 @msg_data_sz(%struct.tipc_msg* %72)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %15, align 8
  %76 = sdiv i64 %74, %75
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %15, align 8
  %79 = srem i64 %77, %78
  %80 = icmp ne i64 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %76, %84
  store i64 %85, i64* %16, align 8
  %86 = load i64, i64* @TIPC_MAX_USER_MSG_SIZE, align 8
  %87 = load i64, i64* @LONG_H_SIZE, align 8
  %88 = add nsw i64 %86, %87
  store i64 %88, i64* %17, align 8
  %89 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %90 = call i64 @msg_type(%struct.tipc_msg* %89)
  %91 = load i64, i64* @TIPC_MCAST_MSG, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %66
  %94 = load i64, i64* @TIPC_MAX_USER_MSG_SIZE, align 8
  %95 = load i64, i64* @MCAST_H_SIZE, align 8
  %96 = add nsw i64 %94, %95
  store i64 %96, i64* %17, align 8
  br label %97

97:                                               ; preds = %93, %66
  %98 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %99 = call i64 @msg_size(%struct.tipc_msg* %98)
  %100 = load i64, i64* %17, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %104 = call i32 @msg_dbg(%struct.tipc_msg* %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = call i32 @buf_discard(%struct.sk_buff* %105)
  store i32 0, i32* %4, align 4
  br label %211

107:                                              ; preds = %97
  %108 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %109 = call i64 @msg_size(%struct.tipc_msg* %108)
  %110 = call %struct.sk_buff* @buf_acquire(i64 %109)
  store %struct.sk_buff* %110, %struct.sk_buff** %11, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %112 = icmp ne %struct.sk_buff* %111, null
  br i1 %112, label %113, label %135

113:                                              ; preds = %107
  %114 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %114, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  store %struct.sk_buff* %115, %struct.sk_buff** %117, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %119 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %118, %struct.sk_buff** %119, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %121 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %122 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %123 = call i64 @msg_data_sz(%struct.tipc_msg* %122)
  %124 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %120, %struct.tipc_msg* %121, i64 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @set_long_msg_seqno(%struct.sk_buff* %125, i64 %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %129 = load i64, i64* %15, align 8
  %130 = call i32 @set_fragm_size(%struct.sk_buff* %128, i64 %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %132 = load i64, i64* %16, align 8
  %133 = sub nsw i64 %132, 1
  %134 = call i32 @set_expected_frags(%struct.sk_buff* %131, i64 %133)
  br label %137

135:                                              ; preds = %107
  %136 = call i32 @warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %113
  %138 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %139 = call i32 @buf_discard(%struct.sk_buff* %138)
  store i32 0, i32* %4, align 4
  br label %211

140:                                              ; preds = %61, %58
  %141 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %142 = icmp ne %struct.sk_buff* %141, null
  br i1 %142, label %143, label %199

143:                                              ; preds = %140
  %144 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %145 = call i64 @msg_type(%struct.tipc_msg* %144)
  %146 = load i64, i64* @FIRST_FRAGMENT, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %199

148:                                              ; preds = %143
  %149 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %150 = call i64 @msg_data_sz(%struct.tipc_msg* %149)
  store i64 %150, i64* %18, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %152 = call i64 @get_fragm_size(%struct.sk_buff* %151)
  store i64 %152, i64* %19, align 8
  %153 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %154 = call i32 @msg_fragm_no(%struct.tipc_msg* %153)
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %19, align 8
  %158 = mul nsw i64 %156, %157
  store i64 %158, i64* %20, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %160 = call i64 @get_expected_frags(%struct.sk_buff* %159)
  %161 = sub nsw i64 %160, 1
  store i64 %161, i64* %21, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %163 = load i64, i64* %20, align 8
  %164 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %165 = call i64 @msg_data(%struct.tipc_msg* %164)
  %166 = load i64, i64* %18, align 8
  %167 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %162, i64 %163, i64 %165, i64 %166)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %169 = call i32 @buf_discard(%struct.sk_buff* %168)
  %170 = load i64, i64* %21, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %195

172:                                              ; preds = %148
  %173 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %174 = icmp ne %struct.sk_buff* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 0
  %178 = load %struct.sk_buff*, %struct.sk_buff** %177, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 0
  store %struct.sk_buff* %178, %struct.sk_buff** %180, align 8
  br label %186

181:                                              ; preds = %172
  %182 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %183 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %182, i32 0, i32 0
  %184 = load %struct.sk_buff*, %struct.sk_buff** %183, align 8
  %185 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %184, %struct.sk_buff** %185, align 8
  br label %186

186:                                              ; preds = %181, %175
  %187 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %188 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %187)
  %189 = call i32 @msg_reset_reroute_cnt(%struct.tipc_msg* %188)
  %190 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %191 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %190, %struct.sk_buff** %191, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %193 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %192)
  %194 = load %struct.tipc_msg**, %struct.tipc_msg*** %7, align 8
  store %struct.tipc_msg* %193, %struct.tipc_msg** %194, align 8
  store i32 1, i32* %4, align 4
  br label %211

195:                                              ; preds = %148
  %196 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %197 = load i64, i64* %21, align 8
  %198 = call i32 @set_expected_frags(%struct.sk_buff* %196, i64 %197)
  store i32 0, i32* %4, align 4
  br label %211

199:                                              ; preds = %143, %140
  br label %200

200:                                              ; preds = %199
  %201 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %202 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %201)
  %203 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %204 = call i32 @msg_dbg(%struct.tipc_msg* %203, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %205 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %206 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %206, align 8
  %208 = call i32 @dbg_print_buf_chain(%struct.sk_buff* %207)
  %209 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %210 = call i32 @buf_discard(%struct.sk_buff* %209)
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %200, %195, %186, %137, %102
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_long_msgno(%struct.tipc_msg*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i64 @msg_seqno(%struct.tipc_msg*) #1

declare dso_local i64 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i64 @msg_type(%struct.tipc_msg*) #1

declare dso_local i64 @msg_data(%struct.tipc_msg*) #1

declare dso_local i64 @msg_size(%struct.tipc_msg*) #1

declare dso_local i64 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @buf_acquire(i64) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i64) #1

declare dso_local i32 @set_long_msg_seqno(%struct.sk_buff*, i64) #1

declare dso_local i32 @set_fragm_size(%struct.sk_buff*, i64) #1

declare dso_local i32 @set_expected_frags(%struct.sk_buff*, i64) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @get_fragm_size(%struct.sk_buff*) #1

declare dso_local i32 @msg_fragm_no(%struct.tipc_msg*) #1

declare dso_local i64 @get_expected_frags(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i64, i64, i64) #1

declare dso_local i32 @msg_reset_reroute_cnt(%struct.tipc_msg*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @dbg_print_buf_chain(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
