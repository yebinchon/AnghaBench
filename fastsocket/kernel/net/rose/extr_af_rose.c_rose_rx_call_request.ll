; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_rx_call_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_rx_call_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i32, %struct.sock* }
%struct.sock = type { i32 (%struct.sock*, i32)*, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.rose_neigh = type { i32 }
%struct.rose_sock = type { i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, %struct.rose_neigh*, %struct.rose_facilities_struct, %struct.net_device*, i32*, i32, i32, i32*, i32, i32 }
%struct.rose_facilities_struct = type { i32, i32, i32*, i32, i32, i32*, i32, i32 }

@ROSE_INVALID_FACILITY = common dso_local global i32 0, align 4
@ROSE_NETWORK_CONGESTION = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@ROSE_STATE_5 = common dso_local global i32 0, align 4
@ROSE_CALL_ACCEPTED = common dso_local global i32 0, align 4
@ROSE_STATE_3 = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rose_rx_call_request(%struct.sk_buff* %0, %struct.net_device* %1, %struct.rose_neigh* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.rose_neigh*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.rose_sock*, align 8
  %13 = alloca %struct.rose_facilities_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.rose_neigh* %2, %struct.rose_neigh** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 2
  store %struct.sock* null, %struct.sock** %17, align 8
  %18 = call i32 @memset(%struct.rose_facilities_struct* %13, i32 0, i32 40)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 4
  %25 = and i32 %24, 15
  %26 = add nsw i32 %25, 1
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %15, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 0
  %34 = and i32 %33, 15
  %35 = add nsw i32 %34, 1
  %36 = ashr i32 %35, 1
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %15, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = call i32 @rose_parse_facilities(i32* %45, %struct.rose_facilities_struct* %13)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %4
  %49 = load %struct.rose_neigh*, %struct.rose_neigh** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ROSE_INVALID_FACILITY, align 4
  %52 = call i32 @rose_transmit_clear_request(%struct.rose_neigh* %49, i32 %50, i32 %51, i32 76)
  store i32 0, i32* %5, align 4
  br label %223

53:                                               ; preds = %4
  %54 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 4
  %55 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 3
  %56 = call %struct.sock* @rose_find_listener(i32* %54, i32* %55)
  store %struct.sock* %56, %struct.sock** %10, align 8
  %57 = load %struct.sock*, %struct.sock** %10, align 8
  %58 = icmp eq %struct.sock* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = load %struct.sock*, %struct.sock** %10, align 8
  %61 = call i64 @sk_acceptq_is_full(%struct.sock* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load %struct.sock*, %struct.sock** %10, align 8
  %65 = call %struct.sock* @rose_make_new(%struct.sock* %64)
  store %struct.sock* %65, %struct.sock** %11, align 8
  %66 = icmp eq %struct.sock* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %63, %59, %53
  %68 = load %struct.rose_neigh*, %struct.rose_neigh** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ROSE_NETWORK_CONGESTION, align 4
  %71 = call i32 @rose_transmit_clear_request(%struct.rose_neigh* %68, i32 %69, i32 %70, i32 120)
  store i32 0, i32* %5, align 4
  br label %223

72:                                               ; preds = %63
  %73 = load %struct.sock*, %struct.sock** %11, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 2
  store %struct.sock* %73, %struct.sock** %75, align 8
  %76 = load i32, i32* @TCP_ESTABLISHED, align 4
  %77 = load %struct.sock*, %struct.sock** %11, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.sock*, %struct.sock** %11, align 8
  %80 = call %struct.rose_sock* @rose_sk(%struct.sock* %79)
  store %struct.rose_sock* %80, %struct.rose_sock** %12, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %83 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %87 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %86, i32 0, i32 18
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %91 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %90, i32 0, i32 17
  store i32 %89, i32* %91, align 8
  %92 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %95 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %114, %72
  %97 = load i32, i32* %14, align 4
  %98 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %109 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %108, i32 0, i32 16
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  br label %114

114:                                              ; preds = %101
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %96

117:                                              ; preds = %96
  %118 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %121 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %120, i32 0, i32 15
  store i32 %119, i32* %121, align 4
  %122 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %125 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %124, i32 0, i32 14
  store i32 %123, i32* %125, align 8
  %126 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %129 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %148, %117
  %131 = load i32, i32* %14, align 4
  %132 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %143 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %142, i32 0, i32 13
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %141, i32* %147, align 4
  br label %148

148:                                              ; preds = %135
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %14, align 4
  br label %130

151:                                              ; preds = %130
  %152 = load %struct.rose_neigh*, %struct.rose_neigh** %8, align 8
  %153 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %154 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %153, i32 0, i32 10
  store %struct.rose_neigh* %152, %struct.rose_neigh** %154, align 8
  %155 = load %struct.net_device*, %struct.net_device** %7, align 8
  %156 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %157 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %156, i32 0, i32 12
  store %struct.net_device* %155, %struct.net_device** %157, align 8
  %158 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %159 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %158, i32 0, i32 11
  %160 = bitcast %struct.rose_facilities_struct* %159 to i8*
  %161 = bitcast %struct.rose_facilities_struct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 40, i1 false)
  %162 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %163 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %162, i32 0, i32 10
  %164 = load %struct.rose_neigh*, %struct.rose_neigh** %163, align 8
  %165 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.sock*, %struct.sock** %10, align 8
  %169 = call %struct.rose_sock* @rose_sk(%struct.sock* %168)
  %170 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %169, i32 0, i32 9
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %151
  %174 = load i32, i32* @ROSE_STATE_5, align 4
  %175 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %176 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %175, i32 0, i32 8
  store i32 %174, i32* %176, align 8
  br label %186

177:                                              ; preds = %151
  %178 = load %struct.sock*, %struct.sock** %11, align 8
  %179 = load i32, i32* @ROSE_CALL_ACCEPTED, align 4
  %180 = call i32 @rose_write_internal(%struct.sock* %178, i32 %179)
  %181 = load i32, i32* @ROSE_STATE_3, align 4
  %182 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %183 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %182, i32 0, i32 8
  store i32 %181, i32* %183, align 8
  %184 = load %struct.sock*, %struct.sock** %11, align 8
  %185 = call i32 @rose_start_idletimer(%struct.sock* %184)
  br label %186

186:                                              ; preds = %177, %173
  %187 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %188 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %187, i32 0, i32 3
  store i32 0, i32* %188, align 4
  %189 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %190 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %189, i32 0, i32 7
  store i64 0, i64* %190, align 8
  %191 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %192 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %191, i32 0, i32 6
  store i64 0, i64* %192, align 8
  %193 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %194 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %193, i32 0, i32 5
  store i64 0, i64* %194, align 8
  %195 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %196 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %195, i32 0, i32 4
  store i64 0, i64* %196, align 8
  %197 = load %struct.sock*, %struct.sock** %10, align 8
  %198 = getelementptr inbounds %struct.sock, %struct.sock* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = load %struct.sock*, %struct.sock** %11, align 8
  %202 = call i32 @rose_insert_socket(%struct.sock* %201)
  %203 = load %struct.sock*, %struct.sock** %10, align 8
  %204 = getelementptr inbounds %struct.sock, %struct.sock* %203, i32 0, i32 1
  %205 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %206 = call i32 @skb_queue_head(i32* %204, %struct.sk_buff* %205)
  %207 = load %struct.sock*, %struct.sock** %11, align 8
  %208 = call i32 @rose_start_heartbeat(%struct.sock* %207)
  %209 = load %struct.sock*, %struct.sock** %10, align 8
  %210 = load i32, i32* @SOCK_DEAD, align 4
  %211 = call i32 @sock_flag(%struct.sock* %209, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %222, label %213

213:                                              ; preds = %186
  %214 = load %struct.sock*, %struct.sock** %10, align 8
  %215 = getelementptr inbounds %struct.sock, %struct.sock* %214, i32 0, i32 0
  %216 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %215, align 8
  %217 = load %struct.sock*, %struct.sock** %10, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i32 %216(%struct.sock* %217, i32 %220)
  br label %222

222:                                              ; preds = %213, %186
  store i32 1, i32* %5, align 4
  br label %223

223:                                              ; preds = %222, %67, %48
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

declare dso_local i32 @memset(%struct.rose_facilities_struct*, i32, i32) #1

declare dso_local i32 @rose_parse_facilities(i32*, %struct.rose_facilities_struct*) #1

declare dso_local i32 @rose_transmit_clear_request(%struct.rose_neigh*, i32, i32, i32) #1

declare dso_local %struct.sock* @rose_find_listener(i32*, i32*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.sock* @rose_make_new(%struct.sock*) #1

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_start_idletimer(%struct.sock*) #1

declare dso_local i32 @rose_insert_socket(%struct.sock*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rose_start_heartbeat(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
