; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_lsock_listen_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_lsock_listen_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsock_port = type { i64, i32, i32 }
%struct.lsock_peer = type { %struct.TYPE_2__, i32, %struct.lsock_port* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, %struct.sockaddr* }
%struct.sockaddr = type { i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: peer malloc failed\00", align 1
@LOCP_DGRAM_PRIV = common dso_local global i64 0, align 8
@LOCP_STREAM_PRIV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: accept failed: %m\00", align 1
@lsock_input = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @lsock_listen_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsock_listen_input(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lsock_port*, align 8
  %6 = alloca %struct.lsock_peer*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.lsock_port*
  store %struct.lsock_port* %8, %struct.lsock_port** %5, align 8
  %9 = call %struct.lsock_peer* @calloc(i32 1, i32 48)
  store %struct.lsock_peer* %9, %struct.lsock_peer** %6, align 8
  %10 = icmp eq %struct.lsock_peer* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* @LOG_WARNING, align 4
  %13 = load %struct.lsock_port*, %struct.lsock_port** %5, align 8
  %14 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @syslog(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @accept(i32 %17, %struct.sockaddr* null, i32* null)
  %19 = call i32 @close(i32 %18)
  br label %104

20:                                               ; preds = %2
  %21 = load %struct.lsock_port*, %struct.lsock_port** %5, align 8
  %22 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %23 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %22, i32 0, i32 2
  store %struct.lsock_port* %21, %struct.lsock_port** %23, align 8
  %24 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %25 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.lsock_port*, %struct.lsock_port** %5, align 8
  %28 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LOCP_DGRAM_PRIV, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %20
  %33 = load %struct.lsock_port*, %struct.lsock_port** %5, align 8
  %34 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LOCP_STREAM_PRIV, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %32, %20
  %39 = phi i1 [ true, %20 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %42 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %45 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 4, i32* %46, align 8
  %47 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %48 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %47, i32 0, i32 1
  %49 = bitcast i32* %48 to %struct.sockaddr*
  %50 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %51 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  store %struct.sockaddr* %49, %struct.sockaddr** %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %55 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  %57 = load %struct.sockaddr*, %struct.sockaddr** %56, align 8
  %58 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %59 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = call i32 @accept(i32 %53, %struct.sockaddr* %57, i32* %60)
  %62 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %63 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %66 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %78

70:                                               ; preds = %38
  %71 = load i32, i32* @LOG_WARNING, align 4
  %72 = load %struct.lsock_port*, %struct.lsock_port** %5, align 8
  %73 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @syslog(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %77 = call i32 @free(%struct.lsock_peer* %76)
  br label %104

78:                                               ; preds = %38
  %79 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %80 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @lsock_input, align 4
  %84 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %85 = call i32* @fd_select(i32 %82, i32 %83, %struct.lsock_peer* %84, i32* null)
  %86 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %87 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  store i32* %85, i32** %88, align 8
  %89 = icmp eq i32* %85, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %78
  %91 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %92 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @close(i32 %94)
  %96 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %97 = call i32 @free(%struct.lsock_peer* %96)
  br label %104

98:                                               ; preds = %78
  %99 = load %struct.lsock_port*, %struct.lsock_port** %5, align 8
  %100 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %99, i32 0, i32 1
  %101 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %102 = load i32, i32* @link, align 4
  %103 = call i32 @LIST_INSERT_HEAD(i32* %100, %struct.lsock_peer* %101, i32 %102)
  br label %104

104:                                              ; preds = %98, %90, %70, %11
  ret void
}

declare dso_local %struct.lsock_peer* @calloc(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @free(%struct.lsock_peer*) #1

declare dso_local i32* @fd_select(i32, i32, %struct.lsock_peer*, i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.lsock_peer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
