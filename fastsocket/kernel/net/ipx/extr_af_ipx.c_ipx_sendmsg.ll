; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.msghdr = type { i32, i32, i32, i64 }
%struct.ipx_sock = type { %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_ipx = type { i64, i32, i64, i64, i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_CMSG_COMPAT = common dso_local global i32 0, align 4
@AF_IPX = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@IPX_NODE_LEN = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @ipx_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipx_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.ipx_sock*, align 8
  %11 = alloca %struct.sockaddr_ipx*, align 8
  %12 = alloca %struct.sockaddr_ipx, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_ipx, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.msghdr* %2, %struct.msghdr** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %9, align 8
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = call %struct.ipx_sock* @ipx_sk(%struct.sock* %19)
  store %struct.ipx_sock* %20, %struct.ipx_sock** %10, align 8
  %21 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.sockaddr_ipx*
  store %struct.sockaddr_ipx* %24, %struct.sockaddr_ipx** %11, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %13, align 4
  %27 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @MSG_DONTWAIT, align 4
  %32 = load i32, i32* @MSG_CMSG_COMPAT, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %30, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  br label %132

38:                                               ; preds = %4
  %39 = load i64, i64* %8, align 8
  %40 = icmp uge i64 %39, 65531
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %132

42:                                               ; preds = %38
  %43 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %44 = icmp ne %struct.sockaddr_ipx* %43, null
  br i1 %44, label %45, label %76

45:                                               ; preds = %42
  %46 = load %struct.ipx_sock*, %struct.ipx_sock** %10, align 8
  %47 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %15, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %15, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.socket*, %struct.socket** %6, align 8
  %54 = bitcast %struct.sockaddr_ipx* %15 to %struct.sockaddr*
  %55 = call i32 @ipx_bind(%struct.socket* %53, %struct.sockaddr* %54, i32 40)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %132

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %45
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  %63 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %64 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 40
  br i1 %67, label %74, label %68

68:                                               ; preds = %60
  %69 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %70 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AF_IPX, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68, %60
  br label %132

75:                                               ; preds = %68
  br label %115

76:                                               ; preds = %42
  %77 = load i32, i32* @ENOTCONN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %13, align 4
  %79 = load %struct.sock*, %struct.sock** %9, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TCP_ESTABLISHED, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %132

85:                                               ; preds = %76
  store %struct.sockaddr_ipx* %12, %struct.sockaddr_ipx** %11, align 8
  %86 = load i64, i64* @AF_IPX, align 8
  %87 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %88 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.ipx_sock*, %struct.ipx_sock** %10, align 8
  %90 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %93 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ipx_sock*, %struct.ipx_sock** %10, align 8
  %95 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %99 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load %struct.ipx_sock*, %struct.ipx_sock** %10, align 8
  %101 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %105 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %107 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ipx_sock*, %struct.ipx_sock** %10, align 8
  %110 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IPX_NODE_LEN, align 4
  %114 = call i32 @memcpy(i32 %108, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %85, %75
  %116 = load %struct.sock*, %struct.sock** %9, align 8
  %117 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %118 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %119 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @MSG_DONTWAIT, align 4
  %124 = and i32 %122, %123
  %125 = call i32 @ipxrtr_route_packet(%struct.sock* %116, %struct.sockaddr_ipx* %117, i32 %120, i64 %121, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %115
  %129 = load i64, i64* %8, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %128, %115
  br label %132

132:                                              ; preds = %131, %84, %74, %58, %41, %37
  %133 = load i32, i32* %13, align 4
  ret i32 %133
}

declare dso_local %struct.ipx_sock* @ipx_sk(%struct.sock*) #1

declare dso_local i32 @ipx_bind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ipxrtr_route_packet(%struct.sock*, %struct.sockaddr_ipx*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
