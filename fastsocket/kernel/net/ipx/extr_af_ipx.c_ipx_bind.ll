; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_interface = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.ipx_sock = type { i32, i32 }
%struct.sockaddr_ipx = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@IPX_MIN_EPHEMERAL_SOCKET = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"IPX: bind failed because port %X in use.\0A\00", align 1
@IPX_NODE_LEN = common dso_local global i32 0, align 4
@ipx_broadcast_node = common dso_local global i32 0, align 4
@ipx_internal_net = common dso_local global %struct.ipx_interface* null, align 8
@ipx_this_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @ipx_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipx_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.ipx_sock*, align 8
  %9 = alloca %struct.ipx_interface*, align 8
  %10 = alloca %struct.sockaddr_ipx*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %7, align 8
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.ipx_sock* @ipx_sk(%struct.sock* %15)
  store %struct.ipx_sock* %16, %struct.ipx_sock** %8, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_ipx*
  store %struct.sockaddr_ipx* %18, %struct.sockaddr_ipx** %10, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.sock*, %struct.sock** %7, align 8
  %22 = load i32, i32* @SOCK_ZAPPED, align 4
  %23 = call i32 @sock_flag(%struct.sock* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 12
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %3
  br label %103

30:                                               ; preds = %25
  %31 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %10, align 8
  %32 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.ipx_interface* @ipxitf_find_using_net(i32 %33)
  store %struct.ipx_interface* %34, %struct.ipx_interface** %9, align 8
  %35 = load i32, i32* @EADDRNOTAVAIL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  %37 = load %struct.ipx_interface*, %struct.ipx_interface** %9, align 8
  %38 = icmp ne %struct.ipx_interface* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %103

40:                                               ; preds = %30
  %41 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %10, align 8
  %42 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %40
  %46 = load %struct.ipx_interface*, %struct.ipx_interface** %9, align 8
  %47 = call i32 @ipx_first_free_socketnum(%struct.ipx_interface* %46)
  %48 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %10, align 8
  %49 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  %52 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %10, align 8
  %53 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  br label %100

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* @EACCES, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  %61 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %10, align 8
  %62 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ntohs(i32 %63)
  %65 = load i64, i64* @IPX_MIN_EPHEMERAL_SOCKET, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load i32, i32* @CAP_NET_ADMIN, align 4
  %69 = call i32 @capable(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %100

72:                                               ; preds = %67, %58
  %73 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %10, align 8
  %74 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ipx_sock*, %struct.ipx_sock** %8, align 8
  %77 = getelementptr inbounds %struct.ipx_sock, %struct.ipx_sock* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @EADDRINUSE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %11, align 4
  %80 = load %struct.ipx_interface*, %struct.ipx_interface** %9, align 8
  %81 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %10, align 8
  %82 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ipxitf_find_socket(%struct.ipx_interface* %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %72
  %87 = load %struct.sock*, %struct.sock** %7, align 8
  %88 = load %struct.sockaddr_ipx*, %struct.sockaddr_ipx** %10, align 8
  %89 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ntohs(i32 %90)
  %92 = call i32 @SOCK_DEBUG(%struct.sock* %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %91)
  br label %100

93:                                               ; preds = %72
  %94 = load %struct.ipx_interface*, %struct.ipx_interface** %9, align 8
  %95 = load %struct.sock*, %struct.sock** %7, align 8
  %96 = call i32 @ipxitf_insert_socket(%struct.ipx_interface* %94, %struct.sock* %95)
  %97 = load %struct.sock*, %struct.sock** %7, align 8
  %98 = load i32, i32* @SOCK_ZAPPED, align 4
  %99 = call i32 @sock_reset_flag(%struct.sock* %97, i32 %98)
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %93, %86, %71, %56
  %101 = load %struct.ipx_interface*, %struct.ipx_interface** %9, align 8
  %102 = call i32 @ipxitf_put(%struct.ipx_interface* %101)
  br label %103

103:                                              ; preds = %100, %39, %29
  %104 = load i32, i32* %11, align 4
  ret i32 %104
}

declare dso_local %struct.ipx_sock* @ipx_sk(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.ipx_interface* @ipxitf_find_using_net(i32) #1

declare dso_local i32 @ipx_first_free_socketnum(%struct.ipx_interface*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @ipxitf_find_socket(%struct.ipx_interface*, i32) #1

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*, i64) #1

declare dso_local i32 @ipxitf_insert_socket(%struct.ipx_interface*, %struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @ipxitf_put(%struct.ipx_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
