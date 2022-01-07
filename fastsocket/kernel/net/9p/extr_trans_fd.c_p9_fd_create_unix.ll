; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_fd_create_unix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_fd_create_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i64 }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.p9_trans_fd = type { i32* }

@UNIX_PATH_MAX = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"p9_trans_unix: address too long: %s\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"p9_trans_unix: problem connecting socket: %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, i8*, i8*)* @p9_fd_create_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fd_create_unix(%struct.p9_client* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.sockaddr_un, align 4
  %11 = alloca %struct.p9_trans_fd*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.p9_trans_fd* null, %struct.p9_trans_fd** %11, align 8
  store %struct.socket* null, %struct.socket** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i64, i64* @UNIX_PATH_MAX, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @KERN_ERR, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (i32, i8*, i8*, ...) @P9_EPRINTK(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @ENAMETOOLONG, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %76

22:                                               ; preds = %3
  %23 = load i32, i32* @PF_UNIX, align 4
  %24 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strcpy(i32 %26, i8* %27)
  %29 = load i32, i32* @PF_UNIX, align 4
  %30 = load i32, i32* @SOCK_STREAM, align 4
  %31 = call i32 @sock_create_kern(i32 %29, i32 %30, i32 0, %struct.socket** %9)
  %32 = load %struct.socket*, %struct.socket** %9, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)** %35, align 8
  %37 = load %struct.socket*, %struct.socket** %9, align 8
  %38 = bitcast %struct.sockaddr_un* %10 to %struct.sockaddr*
  %39 = call i32 %36(%struct.socket* %37, %struct.sockaddr* %38, i32 7, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %22
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i32, i8*, i8*, ...) @P9_EPRINTK(i32 %43, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %45)
  br label %76

47:                                               ; preds = %22
  %48 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %49 = load %struct.socket*, %struct.socket** %9, align 8
  %50 = call i32 @p9_socket_open(%struct.p9_client* %48, %struct.socket* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %76

54:                                               ; preds = %47
  %55 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %56 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.p9_trans_fd*
  store %struct.p9_trans_fd* %58, %struct.p9_trans_fd** %11, align 8
  %59 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %60 = call i32* @p9_conn_create(%struct.p9_client* %59)
  %61 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %11, align 8
  %62 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %11, align 8
  %64 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @IS_ERR(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %54
  %69 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %11, align 8
  %70 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @PTR_ERR(i32* %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %11, align 8
  %74 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %76

75:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %86

76:                                               ; preds = %68, %53, %42, %16
  %77 = load %struct.socket*, %struct.socket** %9, align 8
  %78 = icmp ne %struct.socket* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.socket*, %struct.socket** %9, align 8
  %81 = call i32 @sock_release(%struct.socket* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %11, align 8
  %84 = call i32 @kfree(%struct.p9_trans_fd* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %75
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @P9_EPRINTK(i32, i8*, i8*, ...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @sock_create_kern(i32, i32, i32, %struct.socket**) #1

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
