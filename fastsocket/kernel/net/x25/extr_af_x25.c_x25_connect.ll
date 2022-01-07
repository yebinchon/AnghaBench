; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.x25_sock = type { i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_x25 = type { i64, i32 }
%struct.x25_route = type { i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@SS_CONNECTING = common dso_local global i64 0, align 8
@SS_CONNECTED = common dso_local global i8* null, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@SS_UNCONNECTED = common dso_local global i8* null, align 8
@EISCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_X25 = common dso_local global i64 0, align 8
@ENETUNREACH = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@null_x25_address = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@X25_ADDR_LEN = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@X25_STATE_1 = common dso_local global i32 0, align 4
@X25_CALL_REQUEST = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @x25_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.x25_sock*, align 8
  %11 = alloca %struct.sockaddr_x25*, align 8
  %12 = alloca %struct.x25_route*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = call %struct.x25_sock* @x25_sk(%struct.sock* %17)
  store %struct.x25_sock* %18, %struct.x25_sock** %10, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_x25*
  store %struct.sockaddr_x25* %20, %struct.sockaddr_x25** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = call i32 @lock_sock(%struct.sock* %21)
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TCP_ESTABLISHED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %4
  %29 = load %struct.socket*, %struct.socket** %5, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SS_CONNECTING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i8*, i8** @SS_CONNECTED, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.socket*, %struct.socket** %5, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %205

39:                                               ; preds = %28, %4
  %40 = load i32, i32* @ECONNREFUSED, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %13, align 4
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TCP_CLOSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %39
  %48 = load %struct.socket*, %struct.socket** %5, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SS_CONNECTING, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i8*, i8** @SS_UNCONNECTED, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.socket*, %struct.socket** %5, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %205

58:                                               ; preds = %47, %39
  %59 = load i32, i32* @EISCONN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.sock*, %struct.sock** %9, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TCP_ESTABLISHED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %205

67:                                               ; preds = %58
  %68 = load i64, i64* @TCP_CLOSE, align 8
  %69 = load %struct.sock*, %struct.sock** %9, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i8*, i8** @SS_UNCONNECTED, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.socket*, %struct.socket** %5, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %78, 16
  br i1 %79, label %86, label %80

80:                                               ; preds = %67
  %81 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %11, align 8
  %82 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AF_X25, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %67
  br label %205

87:                                               ; preds = %80
  %88 = load i32, i32* @ENETUNREACH, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %13, align 4
  %90 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %11, align 8
  %91 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %90, i32 0, i32 1
  %92 = call %struct.x25_route* @x25_get_route(i32* %91)
  store %struct.x25_route* %92, %struct.x25_route** %12, align 8
  %93 = load %struct.x25_route*, %struct.x25_route** %12, align 8
  %94 = icmp ne %struct.x25_route* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  br label %205

96:                                               ; preds = %87
  %97 = load %struct.x25_route*, %struct.x25_route** %12, align 8
  %98 = getelementptr inbounds %struct.x25_route, %struct.x25_route* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @x25_get_neigh(i32 %99)
  %101 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %102 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %104 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %96
  br label %202

108:                                              ; preds = %96
  %109 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %110 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %109, i32 0, i32 5
  %111 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %112 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @x25_limit_facilities(i32* %110, i32 %113)
  %115 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %116 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @x25_new_lci(i32 %117)
  %119 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %120 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  %121 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %122 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %108
  br label %193

126:                                              ; preds = %108
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %13, align 4
  %129 = load %struct.sock*, %struct.sock** %9, align 8
  %130 = load i32, i32* @SOCK_ZAPPED, align 4
  %131 = call i64 @sock_flag(%struct.sock* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %193

134:                                              ; preds = %126
  %135 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %136 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @null_x25_address, i32 0, i32 0), align 4
  %140 = call i32 @strcmp(i32 %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %134
  %143 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %144 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %143, i32 0, i32 3
  %145 = load i32, i32* @X25_ADDR_LEN, align 4
  %146 = call i32 @memset(%struct.TYPE_4__* %144, i8 signext 0, i32 %145)
  br label %147

147:                                              ; preds = %142, %134
  %148 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %11, align 8
  %149 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %152 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  %153 = load i64, i64* @SS_CONNECTING, align 8
  %154 = load %struct.socket*, %struct.socket** %5, align 8
  %155 = getelementptr inbounds %struct.socket, %struct.socket* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* @TCP_SYN_SENT, align 8
  %157 = load %struct.sock*, %struct.sock** %9, align 8
  %158 = getelementptr inbounds %struct.sock, %struct.sock* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load i32, i32* @X25_STATE_1, align 4
  %160 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %161 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.sock*, %struct.sock** %9, align 8
  %163 = load i32, i32* @X25_CALL_REQUEST, align 4
  %164 = call i32 @x25_write_internal(%struct.sock* %162, i32 %163)
  %165 = load %struct.sock*, %struct.sock** %9, align 8
  %166 = call i32 @x25_start_heartbeat(%struct.sock* %165)
  %167 = load %struct.sock*, %struct.sock** %9, align 8
  %168 = call i32 @x25_start_t21timer(%struct.sock* %167)
  %169 = load i32, i32* @EINPROGRESS, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %13, align 4
  %171 = load %struct.sock*, %struct.sock** %9, align 8
  %172 = getelementptr inbounds %struct.sock, %struct.sock* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @TCP_ESTABLISHED, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %147
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @O_NONBLOCK, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %193

182:                                              ; preds = %176, %147
  %183 = load %struct.sock*, %struct.sock** %9, align 8
  %184 = call i32 @x25_wait_for_connection_establishment(%struct.sock* %183)
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %193

188:                                              ; preds = %182
  %189 = load i8*, i8** @SS_CONNECTED, align 8
  %190 = ptrtoint i8* %189 to i64
  %191 = load %struct.socket*, %struct.socket** %5, align 8
  %192 = getelementptr inbounds %struct.socket, %struct.socket* %191, i32 0, i32 0
  store i64 %190, i64* %192, align 8
  store i32 0, i32* %13, align 4
  br label %193

193:                                              ; preds = %188, %187, %181, %133, %125
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %198 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @x25_neigh_put(i32 %199)
  br label %201

201:                                              ; preds = %196, %193
  br label %202

202:                                              ; preds = %201, %107
  %203 = load %struct.x25_route*, %struct.x25_route** %12, align 8
  %204 = call i32 @x25_route_put(%struct.x25_route* %203)
  br label %205

205:                                              ; preds = %202, %95, %86, %66, %53, %34
  %206 = load %struct.sock*, %struct.sock** %9, align 8
  %207 = call i32 @release_sock(%struct.sock* %206)
  %208 = load i32, i32* %13, align 4
  ret i32 %208
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.x25_route* @x25_get_route(i32*) #1

declare dso_local i32 @x25_get_neigh(i32) #1

declare dso_local i32 @x25_limit_facilities(i32*, i32) #1

declare dso_local i32 @x25_new_lci(i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i8 signext, i32) #1

declare dso_local i32 @x25_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @x25_start_heartbeat(%struct.sock*) #1

declare dso_local i32 @x25_start_t21timer(%struct.sock*) #1

declare dso_local i32 @x25_wait_for_connection_establishment(%struct.sock*) #1

declare dso_local i32 @x25_neigh_put(i32) #1

declare dso_local i32 @x25_route_put(%struct.x25_route*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
