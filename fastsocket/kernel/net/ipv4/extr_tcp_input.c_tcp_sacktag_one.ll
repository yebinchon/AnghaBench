; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_sacktag_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_sacktag_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.tcp_sacktag_state = type { i32, i32, i8* }
%struct.tcp_sock = type { i32, i32, i32, i32, i32, %struct.sk_buff*, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TCPCB_RETRANS = common dso_local global i32 0, align 4
@TCPCB_SACKED_ACKED = common dso_local global i32 0, align 4
@TCPCB_SACKED_RETRANS = common dso_local global i32 0, align 4
@TCPCB_LOST = common dso_local global i32 0, align 4
@FLAG_ONLY_ORIG_SACKED = common dso_local global i32 0, align 4
@FLAG_DATA_SACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sock*, %struct.tcp_sacktag_state*, i32, i32)* @tcp_sacktag_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_sacktag_one(%struct.sk_buff* %0, %struct.sock* %1, %struct.tcp_sacktag_state* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.tcp_sacktag_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcp_sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.sock* %1, %struct.sock** %8, align 8
  store %struct.tcp_sacktag_state* %2, %struct.tcp_sacktag_state** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.sock*, %struct.sock** %8, align 8
  %16 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %15)
  store %struct.tcp_sock* %16, %struct.tcp_sock** %12, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %22 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @TCPCB_RETRANS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %26
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @after(i32 %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %53 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %51, %41, %36, %31
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %64 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @min(i32 %62, i8* %65)
  %67 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %68 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %61, %56
  br label %70

70:                                               ; preds = %69, %26, %5
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %76 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @after(i32 %74, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %6, align 4
  br label %245

82:                                               ; preds = %70
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %225, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %87
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @TCPCB_LOST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load i32, i32* @TCPCB_LOST, align 4
  %99 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %100 = or i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %13, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %106 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %111 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %97, %92
  br label %170

115:                                              ; preds = %87
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @TCPCB_RETRANS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %154, label %120

120:                                              ; preds = %115
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %121)
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %126 = call i32 @tcp_highest_sack_seq(%struct.tcp_sock* %125)
  %127 = call i64 @before(i32 %124, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %120
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %132 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i8* @min(i32 %130, i8* %133)
  %135 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %136 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %129, %120
  %138 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %139 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %138)
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %143 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @after(i32 %141, i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %137
  %148 = load i32, i32* @FLAG_ONLY_ORIG_SACKED, align 4
  %149 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %150 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %147, %137
  br label %154

154:                                              ; preds = %153, %115
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @TCPCB_LOST, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %154
  %160 = load i32, i32* @TCPCB_LOST, align 4
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %13, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %166 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %159, %154
  br label %170

170:                                              ; preds = %169, %114
  %171 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %172 = load i32, i32* %13, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* @FLAG_DATA_SACKED, align 4
  %175 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %176 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %181 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %14, align 4
  %187 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %188 = call i32 @tcp_is_fack(%struct.tcp_sock* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %214, label %190

190:                                              ; preds = %170
  %191 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %192 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %191, i32 0, i32 5
  %193 = load %struct.sk_buff*, %struct.sk_buff** %192, align 8
  %194 = icmp ne %struct.sk_buff* %193, null
  br i1 %194, label %195, label %214

195:                                              ; preds = %190
  %196 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %197 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %196)
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %201 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %200, i32 0, i32 5
  %202 = load %struct.sk_buff*, %struct.sk_buff** %201, align 8
  %203 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %202)
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @before(i32 %199, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %195
  %209 = load i32, i32* %11, align 4
  %210 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %211 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %209
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %208, %195, %190, %170
  %215 = load i32, i32* %14, align 4
  %216 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %217 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = icmp sgt i32 %215, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %214
  %221 = load i32, i32* %14, align 4
  %222 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %223 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  br label %224

224:                                              ; preds = %220, %214
  br label %225

225:                                              ; preds = %224, %82
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %243

228:                                              ; preds = %225
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %228
  %234 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %235 = xor i32 %234, -1
  %236 = load i32, i32* %13, align 4
  %237 = and i32 %236, %235
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %240 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %241, %238
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %233, %228, %225
  %244 = load i32, i32* %13, align 4
  store i32 %244, i32* %6, align 4
  br label %245

245:                                              ; preds = %243, %80
  %246 = load i32, i32* %6, align 4
  ret i32 %246
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @after(i32, i64) #1

declare dso_local i8* @min(i32, i8*) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local i32 @tcp_highest_sack_seq(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_is_fack(%struct.tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
