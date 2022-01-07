; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/conf/transp/extr_transp_sockets.c_get_mount_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/conf/transp/extr_transp_sockets.c_get_mount_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64 }
%struct.timeval = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"can't bind privileged port (socket)\00", align 1
@MOUNTPROG = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Can't create socket to connect to mountd: %m\00", align 1
@RPC_ANYSOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"can't bind privileged port\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"get_mount_client: Using udp, port %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_mount_client(i8* %0, %struct.sockaddr_in* %1, %struct.timeval* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %8, align 8
  store %struct.timeval* %2, %struct.timeval** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @AF_INET, align 4
  %14 = load i32, i32* @SOCK_STREAM, align 4
  %15 = load i32, i32* @IPPROTO_TCP, align 4
  %16 = call i32 @socket(i32 %13, i32 %14, i32 %15)
  %17 = load i32*, i32** %10, align 8
  store i32 %16, i32* %17, align 4
  %18 = icmp sgt i32 %16, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %5
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @bind_resv_port(i32 %21, i32* null)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @XLOG_ERROR, align 4
  %26 = call i32 @plog(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %29 = load i32, i32* @MOUNTPROG, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @IPPROTO_TCP, align 4
  %32 = call i32 @pmap_getport(%struct.sockaddr_in* %28, i32 %29, i32 %30, i32 %31)
  %33 = call i64 @htons(i32 %32)
  %34 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = icmp ne i64 %33, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %27
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %41 = bitcast %struct.sockaddr_in* %40 to %struct.sockaddr*
  %42 = call i64 @connect(i32 %39, %struct.sockaddr* %41, i32 8)
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %46 = load i32, i32* @MOUNTPROG, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = call i32* @clnttcp_create(%struct.sockaddr_in* %45, i32 %46, i32 %47, i32* %48, i32 0, i32 0)
  store i32* %49, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32*, i32** %12, align 8
  store i32* %52, i32** %6, align 8
  br label %101

53:                                               ; preds = %44, %37
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @close(i32 %56)
  br label %58

58:                                               ; preds = %54, %5
  %59 = load i32, i32* @AF_INET, align 4
  %60 = load i32, i32* @SOCK_DGRAM, align 4
  %61 = call i32 @socket(i32 %59, i32 %60, i32 0)
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  %63 = icmp slt i32 %61, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* @XLOG_ERROR, align 4
  %66 = call i32 @plog(i32 %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @RPC_ANYSOCK, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  store i32* null, i32** %6, align 8
  br label %101

69:                                               ; preds = %58
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @bind_resv_port(i32 %71, i32* null)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @XLOG_ERROR, align 4
  %76 = call i32 @plog(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %69
  %78 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %81 = load i32, i32* @MOUNTPROG, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.timeval*, %struct.timeval** %9, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds %struct.timeval, %struct.timeval* %83, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32* @clntudp_create(%struct.sockaddr_in* %80, i32 %81, i32 %82, i32 %86, i32* %84)
  store i32* %87, i32** %12, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %77
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @close(i32 %91)
  %93 = load i32, i32* @RPC_ANYSOCK, align 4
  %94 = load i32*, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  store i32* null, i32** %6, align 8
  br label %101

95:                                               ; preds = %77
  %96 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %97 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @dlog(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %98)
  %100 = load i32*, i32** %12, align 8
  store i32* %100, i32** %6, align 8
  br label %101

101:                                              ; preds = %95, %89, %64, %51
  %102 = load i32*, i32** %6, align 8
  ret i32* %102
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @bind_resv_port(i32, i32*) #1

declare dso_local i32 @plog(i32, i8*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @pmap_getport(%struct.sockaddr_in*, i32, i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32* @clnttcp_create(%struct.sockaddr_in*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @clntudp_create(%struct.sockaddr_in*, i32, i32, i32, i32*) #1

declare dso_local i32 @dlog(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
