; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_af_ax25.c_ax25_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_af_ax25.c_ax25_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 (%struct.sock*)*, i32, i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32* }

@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@AX25_DISC = common dso_local global i32 0, align 4
@AX25_POLLON = common dso_local global i32 0, align 4
@AX25_COMMAND = common dso_local global i32 0, align 4
@AX25_VALUES_PROTOCOL = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i8* null, align 8
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @ax25_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = icmp eq %struct.sock* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %126

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @sock_hold(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @sock_orphan(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.TYPE_14__* @ax25_sk(%struct.sock* %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %5, align 8
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCK_SEQPACKET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %103

26:                                               ; preds = %12
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %101 [
    i32 132, label %30
    i32 131, label %39
    i32 130, label %39
    i32 129, label %53
    i32 128, label %53
  ]

30:                                               ; preds = %26
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call i32 @release_sock(%struct.sock* %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = call i32 @ax25_disconnect(%struct.TYPE_14__* %33, i32 0)
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = call i32 @lock_sock(%struct.sock* %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = call i32 @ax25_destroy_socket(%struct.TYPE_14__* %37)
  br label %102

39:                                               ; preds = %26, %26
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = load i32, i32* @AX25_DISC, align 4
  %42 = load i32, i32* @AX25_POLLON, align 4
  %43 = load i32, i32* @AX25_COMMAND, align 4
  %44 = call i32 @ax25_send_control(%struct.TYPE_14__* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i32 @release_sock(%struct.sock* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = call i32 @ax25_disconnect(%struct.TYPE_14__* %47, i32 0)
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call i32 @lock_sock(%struct.sock* %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = call i32 @ax25_destroy_socket(%struct.TYPE_14__* %51)
  br label %102

53:                                               ; preds = %26, %26
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = call i32 @ax25_clear_queues(%struct.TYPE_14__* %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  store i32 0, i32* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @AX25_VALUES_PROTOCOL, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %78 [
    i32 133, label %66
    i32 134, label %66
  ]

66:                                               ; preds = %53, %53
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = load i32, i32* @AX25_DISC, align 4
  %69 = load i32, i32* @AX25_POLLON, align 4
  %70 = load i32, i32* @AX25_COMMAND, align 4
  %71 = call i32 @ax25_send_control(%struct.TYPE_14__* %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = call i32 @ax25_stop_t2timer(%struct.TYPE_14__* %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = call i32 @ax25_stop_t3timer(%struct.TYPE_14__* %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = call i32 @ax25_stop_idletimer(%struct.TYPE_14__* %76)
  br label %78

78:                                               ; preds = %53, %66
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = call i32 @ax25_calculate_t1(%struct.TYPE_14__* %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = call i32 @ax25_start_t1timer(%struct.TYPE_14__* %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i32 130, i32* %84, align 8
  %85 = load i8*, i8** @TCP_CLOSE, align 8
  %86 = load %struct.sock*, %struct.sock** %4, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @SEND_SHUTDOWN, align 4
  %89 = load %struct.sock*, %struct.sock** %4, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.sock*, %struct.sock** %4, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 1
  %95 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %94, align 8
  %96 = load %struct.sock*, %struct.sock** %4, align 8
  %97 = call i32 %95(%struct.sock* %96)
  %98 = load %struct.sock*, %struct.sock** %4, align 8
  %99 = load i32, i32* @SOCK_DESTROY, align 4
  %100 = call i32 @sock_set_flag(%struct.sock* %98, i32 %99)
  br label %102

101:                                              ; preds = %26
  br label %102

102:                                              ; preds = %101, %78, %39, %30
  br label %119

103:                                              ; preds = %12
  %104 = load i8*, i8** @TCP_CLOSE, align 8
  %105 = load %struct.sock*, %struct.sock** %4, align 8
  %106 = getelementptr inbounds %struct.sock, %struct.sock* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @SEND_SHUTDOWN, align 4
  %108 = load %struct.sock*, %struct.sock** %4, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.sock*, %struct.sock** %4, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 1
  %114 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %113, align 8
  %115 = load %struct.sock*, %struct.sock** %4, align 8
  %116 = call i32 %114(%struct.sock* %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = call i32 @ax25_destroy_socket(%struct.TYPE_14__* %117)
  br label %119

119:                                              ; preds = %103, %102
  %120 = load %struct.socket*, %struct.socket** %3, align 8
  %121 = getelementptr inbounds %struct.socket, %struct.socket* %120, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %121, align 8
  %122 = load %struct.sock*, %struct.sock** %4, align 8
  %123 = call i32 @release_sock(%struct.sock* %122)
  %124 = load %struct.sock*, %struct.sock** %4, align 8
  %125 = call i32 @sock_put(%struct.sock* %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %119, %11
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_14__* @ax25_sk(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @ax25_disconnect(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ax25_destroy_socket(%struct.TYPE_14__*) #1

declare dso_local i32 @ax25_send_control(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @ax25_clear_queues(%struct.TYPE_14__*) #1

declare dso_local i32 @ax25_stop_t2timer(%struct.TYPE_14__*) #1

declare dso_local i32 @ax25_stop_t3timer(%struct.TYPE_14__*) #1

declare dso_local i32 @ax25_stop_idletimer(%struct.TYPE_14__*) #1

declare dso_local i32 @ax25_calculate_t1(%struct.TYPE_14__*) #1

declare dso_local i32 @ax25_start_t1timer(%struct.TYPE_14__*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
