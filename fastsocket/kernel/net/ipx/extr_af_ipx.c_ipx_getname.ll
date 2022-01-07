; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.ipx_address = type { %struct.sockaddr_ipx*, i32, i64 }
%struct.sockaddr_ipx = type { i64, i32, i32, i32, %struct.sockaddr*, i64 }
%struct.ipx_sock = type { i32, i32, %struct.TYPE_2__*, %struct.sockaddr_ipx*, %struct.ipx_address }
%struct.TYPE_2__ = type { %struct.sockaddr_ipx*, i64 }

@ENOTCONN = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@IPX_NODE_LEN = common dso_local global i32 0, align 4
@AF_IPX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @ipx_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipx_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipx_address*, align 8
  %10 = alloca %struct.sockaddr_ipx, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.ipx_sock*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %11, align 8
  %18 = call %struct.ipx_sock* @ipx_sk(%struct.sock* %17)
  store %struct.ipx_sock* %18, %struct.ipx_sock** %12, align 8
  %19 = load i32*, i32** %7, align 8
  store i32 40, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOTCONN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %13, align 4
  %25 = load %struct.sock*, %struct.sock** %11, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TCP_ESTABLISHED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %91

31:                                               ; preds = %22
  %32 = load %struct.ipx_sock*, %struct.ipx_sock** %12, align 8
  %33 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %32, i32 0, i32 4
  store %struct.ipx_address* %33, %struct.ipx_address** %9, align 8
  %34 = load %struct.ipx_address*, %struct.ipx_address** %9, align 8
  %35 = getelementptr inbounds %struct.ipx_address, %struct.ipx_address* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %10, i32 0, i32 5
  store i64 %36, i64* %37, align 8
  %38 = load %struct.ipx_address*, %struct.ipx_address** %9, align 8
  %39 = getelementptr inbounds %struct.ipx_address, %struct.ipx_address* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %10, i32 0, i32 3
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %10, i32 0, i32 4
  %43 = load %struct.sockaddr*, %struct.sockaddr** %42, align 8
  %44 = load %struct.ipx_address*, %struct.ipx_address** %9, align 8
  %45 = getelementptr inbounds %struct.ipx_address, %struct.ipx_address* %44, i32 0, i32 0
  %46 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %45, align 8
  %47 = load i32, i32* @IPX_NODE_LEN, align 4
  %48 = call i32 @memcpy(%struct.sockaddr* %43, %struct.sockaddr_ipx* %46, i32 %47)
  br label %81

49:                                               ; preds = %4
  %50 = load %struct.ipx_sock*, %struct.ipx_sock** %12, align 8
  %51 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.ipx_sock*, %struct.ipx_sock** %12, align 8
  %56 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %10, i32 0, i32 5
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %10, i32 0, i32 4
  %62 = load %struct.sockaddr*, %struct.sockaddr** %61, align 8
  %63 = load %struct.ipx_sock*, %struct.ipx_sock** %12, align 8
  %64 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %66, align 8
  %68 = load i32, i32* @IPX_NODE_LEN, align 4
  %69 = call i32 @memcpy(%struct.sockaddr* %62, %struct.sockaddr_ipx* %67, i32 %68)
  br label %76

70:                                               ; preds = %49
  %71 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %10, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %10, i32 0, i32 4
  %73 = load %struct.sockaddr*, %struct.sockaddr** %72, align 8
  %74 = load i32, i32* @IPX_NODE_LEN, align 4
  %75 = call i32 @memset(%struct.sockaddr* %73, i8 signext 0, i32 %74)
  br label %76

76:                                               ; preds = %70, %54
  %77 = load %struct.ipx_sock*, %struct.ipx_sock** %12, align 8
  %78 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %10, i32 0, i32 3
  store i32 %79, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %31
  %82 = load i32, i32* @AF_IPX, align 4
  %83 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %10, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = load %struct.ipx_sock*, %struct.ipx_sock** %12, align 8
  %85 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %10, i32 0, i32 1
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %10, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %90 = call i32 @memcpy(%struct.sockaddr* %89, %struct.sockaddr_ipx* %10, i32 40)
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %81, %30
  %92 = load i32, i32* %13, align 4
  ret i32 %92
}

declare dso_local %struct.ipx_sock* @ipx_sk(%struct.sock*) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr_ipx*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
