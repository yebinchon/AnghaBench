; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.inet_sock = type { i64, i64, i32, i64, i32, i64, i32 }
%struct.dccp_sock = type { i32, i32 }
%struct.sockaddr_in = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.rtable = type { i32, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ip_options = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }

@DCCP_ROLE_CLIENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IPPROTO_DCCP = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@DCCP_REQUESTING = common dso_local global i32 0, align 4
@dccp_death_row = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_v4_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.dccp_sock*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.rtable*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ip_options*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call %struct.inet_sock* @inet_sk(%struct.sock* %17)
  store %struct.inet_sock* %18, %struct.inet_sock** %8, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %19)
  store %struct.dccp_sock* %20, %struct.dccp_sock** %9, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %22, %struct.sockaddr_in** %10, align 8
  %23 = load i32, i32* @DCCP_ROLE_CLIENT, align 4
  %24 = load %struct.dccp_sock*, %struct.dccp_sock** %9, align 8
  %25 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 24
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %221

32:                                               ; preds = %3
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_INET, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EAFNOSUPPORT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %221

41:                                               ; preds = %32
  %42 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  store i64 %45, i64* %13, align 8
  %46 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %47 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.ip_options* @rcu_dereference(i32 %48)
  store %struct.ip_options* %49, %struct.ip_options** %16, align 8
  %50 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %51 = icmp ne %struct.ip_options* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %41
  %53 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %54 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i64, i64* %12, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %221

63:                                               ; preds = %57
  %64 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %65 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %13, align 8
  br label %67

67:                                               ; preds = %63, %52, %41
  %68 = load i64, i64* %13, align 8
  %69 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %70 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = call i32 @RT_CONN_FLAGS(%struct.sock* %72)
  %74 = load %struct.sock*, %struct.sock** %5, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IPPROTO_DCCP, align 4
  %78 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %79 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sock*, %struct.sock** %5, align 8
  %85 = call i32 @ip_route_connect(%struct.rtable** %11, i64 %68, i64 %71, i32 %73, i32 %76, i32 %77, i32 %80, i64 %83, %struct.sock* %84, i32 1)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %67
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %4, align 4
  br label %221

90:                                               ; preds = %67
  %91 = load %struct.rtable*, %struct.rtable** %11, align 8
  %92 = getelementptr inbounds %struct.rtable, %struct.rtable* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @RTCF_MULTICAST, align 4
  %95 = load i32, i32* @RTCF_BROADCAST, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %90
  %100 = load %struct.rtable*, %struct.rtable** %11, align 8
  %101 = call i32 @ip_rt_put(%struct.rtable* %100)
  %102 = load i32, i32* @ENETUNREACH, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %221

104:                                              ; preds = %90
  %105 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %106 = icmp eq %struct.ip_options* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %109 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %107, %104
  %113 = load %struct.rtable*, %struct.rtable** %11, align 8
  %114 = getelementptr inbounds %struct.rtable, %struct.rtable* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %12, align 8
  br label %116

116:                                              ; preds = %112, %107
  %117 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %118 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.rtable*, %struct.rtable** %11, align 8
  %123 = getelementptr inbounds %struct.rtable, %struct.rtable* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %126 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %121, %116
  %128 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %129 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %132 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %134 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %137 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %136, i32 0, i32 3
  store i64 %135, i64* %137, align 8
  %138 = load i64, i64* %12, align 8
  %139 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %140 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %139, i32 0, i32 5
  store i64 %138, i64* %140, align 8
  %141 = load %struct.sock*, %struct.sock** %5, align 8
  %142 = call %struct.TYPE_6__* @inet_csk(%struct.sock* %141)
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %145 = icmp ne %struct.ip_options* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %127
  %147 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %148 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.sock*, %struct.sock** %5, align 8
  %151 = call %struct.TYPE_6__* @inet_csk(%struct.sock* %150)
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i64 %149, i64* %152, align 8
  br label %153

153:                                              ; preds = %146, %127
  %154 = load %struct.sock*, %struct.sock** %5, align 8
  %155 = load i32, i32* @DCCP_REQUESTING, align 4
  %156 = call i32 @dccp_set_state(%struct.sock* %154, i32 %155)
  %157 = load %struct.sock*, %struct.sock** %5, align 8
  %158 = call i32 @inet_hash_connect(i32* @dccp_death_row, %struct.sock* %157)
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %211

162:                                              ; preds = %153
  %163 = load i32, i32* @IPPROTO_DCCP, align 4
  %164 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %165 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %168 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.sock*, %struct.sock** %5, align 8
  %171 = call i32 @ip_route_newports(%struct.rtable** %11, i32 %163, i32 %166, i64 %169, %struct.sock* %170)
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %162
  br label %211

175:                                              ; preds = %162
  %176 = load %struct.sock*, %struct.sock** %5, align 8
  %177 = load %struct.rtable*, %struct.rtable** %11, align 8
  %178 = getelementptr inbounds %struct.rtable, %struct.rtable* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = call i32 @sk_setup_caps(%struct.sock* %176, i32* %179)
  %181 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %182 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %185 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %188 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %191 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @secure_dccp_sequence_number(i64 %183, i64 %186, i32 %189, i64 %192)
  %194 = load %struct.dccp_sock*, %struct.dccp_sock** %9, align 8
  %195 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 4
  %196 = load %struct.dccp_sock*, %struct.dccp_sock** %9, align 8
  %197 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @jiffies, align 4
  %200 = xor i32 %198, %199
  %201 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %202 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.sock*, %struct.sock** %5, align 8
  %204 = call i32 @dccp_connect(%struct.sock* %203)
  store i32 %204, i32* %15, align 4
  store %struct.rtable* null, %struct.rtable** %11, align 8
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %175
  br label %211

208:                                              ; preds = %175
  br label %209

209:                                              ; preds = %211, %208
  %210 = load i32, i32* %15, align 4
  store i32 %210, i32* %4, align 4
  br label %221

211:                                              ; preds = %207, %174, %161
  %212 = load %struct.sock*, %struct.sock** %5, align 8
  %213 = load i32, i32* @DCCP_CLOSED, align 4
  %214 = call i32 @dccp_set_state(%struct.sock* %212, i32 %213)
  %215 = load %struct.rtable*, %struct.rtable** %11, align 8
  %216 = call i32 @ip_rt_put(%struct.rtable* %215)
  %217 = load %struct.sock*, %struct.sock** %5, align 8
  %218 = getelementptr inbounds %struct.sock, %struct.sock* %217, i32 0, i32 0
  store i64 0, i64* %218, align 8
  %219 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %220 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %219, i32 0, i32 3
  store i64 0, i64* %220, align 8
  br label %209

221:                                              ; preds = %209, %99, %88, %60, %38, %29
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.ip_options* @rcu_dereference(i32) #1

declare dso_local i32 @ip_route_connect(%struct.rtable**, i64, i64, i32, i32, i32, i32, i64, %struct.sock*, i32) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local %struct.TYPE_6__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet_hash_connect(i32*, %struct.sock*) #1

declare dso_local i32 @ip_route_newports(%struct.rtable**, i32, i32, i64, %struct.sock*) #1

declare dso_local i32 @sk_setup_caps(%struct.sock*, i32*) #1

declare dso_local i32 @secure_dccp_sequence_number(i64, i64, i32, i64) #1

declare dso_local i32 @dccp_connect(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
