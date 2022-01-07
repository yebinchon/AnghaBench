; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_fd_create_tcp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_fd_create_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i64 }
%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.p9_fd_opts = type { i32 }
%struct.p9_trans_fd = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"p9_trans_tcp: problem creating socket\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"p9_trans_tcp: problem connecting socket to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, i8*, i8*)* @p9_fd_create_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fd_create_tcp(%struct.p9_client* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.p9_fd_opts, align 4
  %12 = alloca %struct.p9_trans_fd*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.p9_trans_fd* null, %struct.p9_trans_fd** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @parse_opts(i8* %13, %struct.p9_fd_opts* %11)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %102

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @valid_ipaddr4(i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %102

26:                                               ; preds = %19
  store %struct.socket* null, %struct.socket** %9, align 8
  %27 = load i32, i32* @AF_INET, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @in_aton(i8* %29)
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @htons(i32 %34)
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @PF_INET, align 4
  %38 = load i32, i32* @SOCK_STREAM, align 4
  %39 = load i32, i32* @IPPROTO_TCP, align 4
  %40 = call i32 @sock_create_kern(i32 %37, i32 %38, i32 %39, %struct.socket** %9)
  %41 = load %struct.socket*, %struct.socket** %9, align 8
  %42 = icmp ne %struct.socket* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %26
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = call i32 (i32, i8*, ...) @P9_EPRINTK(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %92

48:                                               ; preds = %26
  %49 = load %struct.socket*, %struct.socket** %9, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)** %52, align 8
  %54 = load %struct.socket*, %struct.socket** %9, align 8
  %55 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %56 = call i32 %53(%struct.socket* %54, %struct.sockaddr* %55, i32 12, i32 0)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load i32, i32* @KERN_ERR, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 (i32, i8*, ...) @P9_EPRINTK(i32 %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %92

63:                                               ; preds = %48
  %64 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %65 = load %struct.socket*, %struct.socket** %9, align 8
  %66 = call i32 @p9_socket_open(%struct.p9_client* %64, %struct.socket* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %92

70:                                               ; preds = %63
  %71 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %72 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.p9_trans_fd*
  store %struct.p9_trans_fd* %74, %struct.p9_trans_fd** %12, align 8
  %75 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %76 = call i32* @p9_conn_create(%struct.p9_client* %75)
  %77 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %12, align 8
  %78 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %12, align 8
  %80 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @IS_ERR(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %70
  %85 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %12, align 8
  %86 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @PTR_ERR(i32* %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %12, align 8
  %90 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  br label %92

91:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %102

92:                                               ; preds = %84, %69, %59, %43
  %93 = load %struct.socket*, %struct.socket** %9, align 8
  %94 = icmp ne %struct.socket* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.socket*, %struct.socket** %9, align 8
  %97 = call i32 @sock_release(%struct.socket* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %12, align 8
  %100 = call i32 @kfree(%struct.p9_trans_fd* %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %91, %23, %17
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @parse_opts(i8*, %struct.p9_fd_opts*) #1

declare dso_local i64 @valid_ipaddr4(i8*) #1

declare dso_local i32 @in_aton(i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sock_create_kern(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @P9_EPRINTK(i32, i8*, ...) #1

declare dso_local i32 @p9_socket_open(%struct.p9_client*, %struct.socket*) #1

declare dso_local i32* @p9_conn_create(%struct.p9_client*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @kfree(%struct.p9_trans_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
