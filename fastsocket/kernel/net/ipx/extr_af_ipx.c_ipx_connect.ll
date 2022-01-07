; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.ipx_sock = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_ipx = type { i32, i32, i64, i64 }
%struct.ipx_route = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@ipx_primary_net = common dso_local global i64 0, align 8
@IPX_NODE_LEN = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@SS_CONNECTED = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @ipx_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipx_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.ipx_sock*, align 8
  %11 = alloca %struct.sockaddr_ipx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipx_route*, align 8
  %14 = alloca %struct.sockaddr_ipx, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 2
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %9, align 8
  %18 = load %struct.sock*, %struct.sock** %9, align 8
  %19 = call %struct.ipx_sock* @ipx_sk(%struct.sock* %18)
  store %struct.ipx_sock* %19, %struct.ipx_sock** %10, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @TCP_CLOSE, align 4
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @SS_UNCONNECTED, align 4
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 24
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %113

32:                                               ; preds = %4
  %33 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %34 = bitcast %struct.sockaddr* %33 to %struct.sockaddr_ipx*
  store %struct.sockaddr_ipx* %34, %struct.sockaddr_ipx** %11, align 8
  %35 = load %struct.ipx_sock*, %struct.ipx_sock** %10, align 8
  %36 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %14, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %14, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = bitcast %struct.sockaddr_ipx* %14 to %struct.sockaddr*
  %44 = call i32 @ipx_bind(%struct.socket* %42, %struct.sockaddr* %43, i32 24)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %113

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %51 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.ipx_route* @ipxrtr_lookup(i64 %52)
  store %struct.ipx_route* %53, %struct.ipx_route** %13, align 8
  %54 = load i32, i32* @ENETUNREACH, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  %56 = load %struct.ipx_route*, %struct.ipx_route** %13, align 8
  %57 = icmp ne %struct.ipx_route* %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %60 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* @ipx_primary_net, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63, %58
  br label %113

67:                                               ; preds = %63, %49
  %68 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %69 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ipx_sock*, %struct.ipx_sock** %10, align 8
  %72 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i64 %70, i64* %73, align 8
  %74 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %75 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ipx_sock*, %struct.ipx_sock** %10, align 8
  %78 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i64 %76, i64* %79, align 8
  %80 = load %struct.ipx_sock*, %struct.ipx_sock** %10, align 8
  %81 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %85 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IPX_NODE_LEN, align 4
  %88 = call i32 @memcpy(i32 %83, i32 %86, i32 %87)
  %89 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %11, align 8
  %90 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ipx_sock*, %struct.ipx_sock** %10, align 8
  %93 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.socket*, %struct.socket** %5, align 8
  %95 = getelementptr inbounds %struct.socket, %struct.socket* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SOCK_DGRAM, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %67
  %100 = load i32, i32* @SS_CONNECTED, align 4
  %101 = load %struct.socket*, %struct.socket** %5, align 8
  %102 = getelementptr inbounds %struct.socket, %struct.socket* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @TCP_ESTABLISHED, align 4
  %104 = load %struct.sock*, %struct.sock** %9, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %99, %67
  %107 = load %struct.ipx_route*, %struct.ipx_route** %13, align 8
  %108 = icmp ne %struct.ipx_route* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.ipx_route*, %struct.ipx_route** %13, align 8
  %111 = call i32 @ipxrtr_put(%struct.ipx_route* %110)
  br label %112

112:                                              ; preds = %109, %106
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %112, %66, %47, %31
  %114 = load i32, i32* %12, align 4
  ret i32 %114
}

declare dso_local %struct.ipx_sock* @ipx_sk(%struct.sock*) #1

declare dso_local i32 @ipx_bind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local %struct.ipx_route* @ipxrtr_lookup(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ipxrtr_put(%struct.ipx_route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
