; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-local.c_rxrpc_create_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-local.c_rxrpc_create_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_local = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.sock* }
%struct.sock = type { %struct.rxrpc_local*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p{%d}\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c" = %d [socket]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bind failed\00", align 1
@SOL_IP = common dso_local global i32 0, align 4
@IP_RECVERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"setsockopt failed\00", align 1
@IP_PMTUDISC_DO = common dso_local global i32 0, align 4
@IP_MTU_DISCOVER = common dso_local global i32 0, align 4
@rxrpc_local_lock = common dso_local global i32 0, align 4
@rxrpc_locals = common dso_local global i32 0, align 4
@rxrpc_data_ready = common dso_local global i32 0, align 4
@rxrpc_UDP_error_report = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@SHUT_RDWR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_local*)* @rxrpc_create_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_create_local(%struct.rxrpc_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxrpc_local*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rxrpc_local* %0, %struct.rxrpc_local** %3, align 8
  %7 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %8 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %9 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_local* %7, i32 %11)
  %13 = load i32, i32* @PF_INET, align 4
  %14 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %15 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IPPROTO_UDP, align 4
  %19 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %20 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %19, i32 0, i32 0
  %21 = call i32 @sock_create_kern(i32 %13, i32 %17, i32 %18, %struct.TYPE_8__** %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %121

28:                                               ; preds = %1
  %29 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %30 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %33, 4
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = call i32 @_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %38 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %41 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = bitcast i32* %42 to %struct.sockaddr*
  %44 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %45 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kernel_bind(%struct.TYPE_8__* %39, %struct.sockaddr* %43, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = call i32 @_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %100

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %28
  store i32 1, i32* %6, align 4
  %55 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %56 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* @SOL_IP, align 4
  %59 = load i32, i32* @IP_RECVERR, align 4
  %60 = bitcast i32* %6 to i8*
  %61 = call i32 @kernel_setsockopt(%struct.TYPE_8__* %57, i32 %58, i32 %59, i8* %60, i32 4)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = call i32 @_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %100

66:                                               ; preds = %54
  %67 = load i32, i32* @IP_PMTUDISC_DO, align 4
  store i32 %67, i32* %6, align 4
  %68 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %69 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load i32, i32* @SOL_IP, align 4
  %72 = load i32, i32* @IP_MTU_DISCOVER, align 4
  %73 = bitcast i32* %6 to i8*
  %74 = call i32 @kernel_setsockopt(%struct.TYPE_8__* %70, i32 %71, i32 %72, i8* %73, i32 4)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = call i32 @_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %100

79:                                               ; preds = %66
  %80 = call i32 @write_lock_bh(i32* @rxrpc_local_lock)
  %81 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %82 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %81, i32 0, i32 1
  %83 = call i32 @list_add(i32* %82, i32* @rxrpc_locals)
  %84 = call i32 @write_unlock_bh(i32* @rxrpc_local_lock)
  %85 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %86 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.sock*, %struct.sock** %88, align 8
  store %struct.sock* %89, %struct.sock** %4, align 8
  %90 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %91 = load %struct.sock*, %struct.sock** %4, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 0
  store %struct.rxrpc_local* %90, %struct.rxrpc_local** %92, align 8
  %93 = load i32, i32* @rxrpc_data_ready, align 4
  %94 = load %struct.sock*, %struct.sock** %4, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @rxrpc_UDP_error_report, align 4
  %97 = load %struct.sock*, %struct.sock** %4, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %121

100:                                              ; preds = %77, %64, %51
  %101 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %102 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i32, i32* @SHUT_RDWR, align 4
  %105 = call i32 @kernel_sock_shutdown(%struct.TYPE_8__* %103, i32 %104)
  %106 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %107 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.sock*, %struct.sock** %109, align 8
  %111 = getelementptr inbounds %struct.sock, %struct.sock* %110, i32 0, i32 0
  store %struct.rxrpc_local* null, %struct.rxrpc_local** %111, align 8
  %112 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %113 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = call i32 @sock_release(%struct.TYPE_8__* %114)
  %116 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %117 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %116, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %117, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %100, %79, %24
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @_enter(i8*, %struct.rxrpc_local*, i32) #1

declare dso_local i32 @sock_create_kern(i32, i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @kernel_bind(%struct.TYPE_8__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @kernel_setsockopt(%struct.TYPE_8__*, i32, i32, i8*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kernel_sock_shutdown(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sock_release(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
