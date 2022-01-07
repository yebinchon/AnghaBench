; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.sock = type { i32, i32 }
%struct.x25_sock = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i8*, i8* }

@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@x25_proto_ops = common dso_local global i32 0, align 4
@x25_backlog_rcv = common dso_local global i32 0, align 4
@sysctl_x25_call_request_timeout = common dso_local global i32 0, align 4
@sysctl_x25_reset_request_timeout = common dso_local global i32 0, align 4
@sysctl_x25_clear_request_timeout = common dso_local global i32 0, align 4
@sysctl_x25_ack_holdback_timeout = common dso_local global i32 0, align 4
@X25_STATE_0 = common dso_local global i32 0, align 4
@X25_DENY_ACCPT_APPRV = common dso_local global i32 0, align 4
@X25_DEFAULT_WINDOW_SIZE = common dso_local global i8* null, align 8
@X25_DEFAULT_PACKET_SIZE = common dso_local global i8* null, align 8
@X25_DEFAULT_THROUGHPUT = common dso_local global i32 0, align 4
@X25_DEFAULT_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @x25_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.x25_sock*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.net*, %struct.net** %6, align 8
  %16 = icmp ne %struct.net* %15, @init_net
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EAFNOSUPPORT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %115

20:                                               ; preds = %4
  %21 = load %struct.socket*, %struct.socket** %7, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCK_SEQPACKET, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %20
  br label %113

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.net*, %struct.net** %6, align 8
  %34 = call %struct.sock* @x25_alloc_socket(%struct.net* %33)
  store %struct.sock* %34, %struct.sock** %10, align 8
  %35 = icmp eq %struct.sock* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %113

37:                                               ; preds = %30
  %38 = load %struct.sock*, %struct.sock** %10, align 8
  %39 = call %struct.x25_sock* @x25_sk(%struct.sock* %38)
  store %struct.x25_sock* %39, %struct.x25_sock** %11, align 8
  %40 = load %struct.socket*, %struct.socket** %7, align 8
  %41 = load %struct.sock*, %struct.sock** %10, align 8
  %42 = call i32 @sock_init_data(%struct.socket* %40, %struct.sock* %41)
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = call i32 @x25_init_timers(%struct.sock* %43)
  %45 = load %struct.socket*, %struct.socket** %7, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 1
  store i32* @x25_proto_ops, i32** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.sock*, %struct.sock** %10, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @x25_backlog_rcv, align 4
  %51 = load %struct.sock*, %struct.sock** %10, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @sysctl_x25_call_request_timeout, align 4
  %54 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %55 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @sysctl_x25_reset_request_timeout, align 4
  %57 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %58 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @sysctl_x25_clear_request_timeout, align 4
  %60 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %61 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @sysctl_x25_ack_holdback_timeout, align 4
  %63 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %64 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @X25_STATE_0, align 4
  %66 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %67 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %69 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @X25_DENY_ACCPT_APPRV, align 4
  %71 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %72 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** @X25_DEFAULT_WINDOW_SIZE, align 8
  %74 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %75 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  store i8* %73, i8** %76, align 8
  %77 = load i8*, i8** @X25_DEFAULT_WINDOW_SIZE, align 8
  %78 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %79 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  store i8* %77, i8** %80, align 8
  %81 = load i8*, i8** @X25_DEFAULT_PACKET_SIZE, align 8
  %82 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %83 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i8* %81, i8** %84, align 8
  %85 = load i8*, i8** @X25_DEFAULT_PACKET_SIZE, align 8
  %86 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %87 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  store i8* %85, i8** %88, align 8
  %89 = load i32, i32* @X25_DEFAULT_THROUGHPUT, align 4
  %90 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %91 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @X25_DEFAULT_REVERSE, align 4
  %94 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %95 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %98 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %101 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %104 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @memset(i32 %106, i8 signext 0, i32 4)
  %108 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %109 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @memset(i32 %111, i8 signext 0, i32 4)
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %37, %36, %29
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %17
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.sock* @x25_alloc_socket(%struct.net*) #1

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @x25_init_timers(%struct.sock*) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
