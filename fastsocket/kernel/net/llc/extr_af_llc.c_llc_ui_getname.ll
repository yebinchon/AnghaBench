; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_af_llc.c_llc_ui_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_af_llc.c_llc_ui_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_llc = type { i32, %struct.sockaddr, i32, i32 }
%struct.llc_sock = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.sockaddr_llc*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.sockaddr_llc, i32 }

@EBADF = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@IFHWADDRLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_LLC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @llc_ui_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_ui_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_llc, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.llc_sock*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %10, align 8
  %16 = load %struct.sock*, %struct.sock** %10, align 8
  %17 = call %struct.llc_sock* @llc_sk(%struct.sock* %16)
  store %struct.llc_sock* %17, %struct.llc_sock** %11, align 8
  %18 = load i32, i32* @EBADF, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  %20 = call i32 @memset(%struct.sockaddr_llc* %9, i32 0, i32 16)
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call i32 @lock_sock(%struct.sock* %21)
  %23 = load %struct.sock*, %struct.sock** %10, align 8
  %24 = load i32, i32* @SOCK_ZAPPED, align 4
  %25 = call i64 @sock_flag(%struct.sock* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %106

28:                                               ; preds = %4
  %29 = load i32*, i32** %7, align 8
  store i32 16, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOTCONN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  %35 = load %struct.sock*, %struct.sock** %10, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TCP_ESTABLISHED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %106

41:                                               ; preds = %32
  %42 = load %struct.llc_sock*, %struct.llc_sock** %11, align 8
  %43 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.llc_sock*, %struct.llc_sock** %11, align 8
  %48 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %9, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %41
  %54 = load %struct.llc_sock*, %struct.llc_sock** %11, align 8
  %55 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %9, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %9, i32 0, i32 1
  %60 = load %struct.llc_sock*, %struct.llc_sock** %11, align 8
  %61 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* @IFHWADDRLEN, align 4
  %64 = call i32 @memcpy(%struct.sockaddr* %59, %struct.sockaddr_llc* %62, i32 %63)
  br label %101

65:                                               ; preds = %28
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  %68 = load %struct.llc_sock*, %struct.llc_sock** %11, align 8
  %69 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = icmp ne %struct.TYPE_7__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %106

73:                                               ; preds = %65
  %74 = load %struct.llc_sock*, %struct.llc_sock** %11, align 8
  %75 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %9, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  %81 = load %struct.llc_sock*, %struct.llc_sock** %11, align 8
  %82 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %73
  %86 = load %struct.llc_sock*, %struct.llc_sock** %11, align 8
  %87 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %9, i32 0, i32 2
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %9, i32 0, i32 1
  %93 = load %struct.llc_sock*, %struct.llc_sock** %11, align 8
  %94 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %96, align 8
  %98 = load i32, i32* @IFHWADDRLEN, align 4
  %99 = call i32 @memcpy(%struct.sockaddr* %92, %struct.sockaddr_llc* %97, i32 %98)
  br label %100

100:                                              ; preds = %85, %73
  br label %101

101:                                              ; preds = %100, %53
  store i32 0, i32* %12, align 4
  %102 = load i32, i32* @AF_LLC, align 4
  %103 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %9, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %105 = call i32 @memcpy(%struct.sockaddr* %104, %struct.sockaddr_llc* %9, i32 16)
  br label %106

106:                                              ; preds = %101, %72, %40, %27
  %107 = load %struct.sock*, %struct.sock** %10, align 8
  %108 = call i32 @release_sock(%struct.sock* %107)
  %109 = load i32, i32* %12, align 4
  ret i32 %109
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr_llc*, i32, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr_llc*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
