; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_af_rxrpc.c_rxrpc_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_af_rxrpc.c_rxrpc_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { i32 }
%struct.msghdr = type { i32, i32, i32 }
%struct.rxrpc_transport = type { i32 }
%struct.rxrpc_sock = type { %struct.TYPE_3__, %struct.rxrpc_transport* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c",{%d},,%zu\00", align 1
@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c" = %d [bad addr]\00", align 1
@EISCONN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @rxrpc_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rxrpc_transport*, align 8
  %11 = alloca %struct.rxrpc_sock*, align 8
  %12 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.socket*, %struct.socket** %7, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.rxrpc_sock* @rxrpc_sk(i32 %15)
  store %struct.rxrpc_sock* %16, %struct.rxrpc_sock** %11, align 8
  %17 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %18 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21)
  %23 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MSG_OOB, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %141

32:                                               ; preds = %4
  %33 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %39 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %40 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %43 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rxrpc_validate_address(%struct.rxrpc_sock* %38, i32 %41, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %141

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %32
  store %struct.rxrpc_transport* null, %struct.rxrpc_transport** %10, align 8
  %54 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %55 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %54, i32 0, i32 0
  %56 = call i32 @lock_sock(%struct.TYPE_3__* %55)
  %57 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %58 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %53
  %62 = load i32, i32* @EISCONN, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  %64 = load %struct.socket*, %struct.socket** %7, align 8
  %65 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %66 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %69 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.rxrpc_transport* @rxrpc_name_to_transport(%struct.socket* %64, i32 %67, i32 %70, i32 0, i32 %71)
  store %struct.rxrpc_transport* %72, %struct.rxrpc_transport** %10, align 8
  %73 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %10, align 8
  %74 = call i64 @IS_ERR(%struct.rxrpc_transport* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %61
  %77 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %10, align 8
  %78 = call i32 @PTR_ERR(%struct.rxrpc_transport* %77)
  store i32 %78, i32* %12, align 4
  store %struct.rxrpc_transport* null, %struct.rxrpc_transport** %10, align 8
  br label %128

79:                                               ; preds = %61
  br label %91

80:                                               ; preds = %53
  %81 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %82 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %81, i32 0, i32 1
  %83 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %82, align 8
  store %struct.rxrpc_transport* %83, %struct.rxrpc_transport** %10, align 8
  %84 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %10, align 8
  %85 = icmp ne %struct.rxrpc_transport* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %10, align 8
  %88 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %87, i32 0, i32 0
  %89 = call i32 @atomic_inc(i32* %88)
  br label %90

90:                                               ; preds = %86, %80
  br label %91

91:                                               ; preds = %90, %79
  %92 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %93 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %124 [
    i32 128, label %96
    i32 129, label %108
    i32 131, label %108
    i32 130, label %117
  ]

96:                                               ; preds = %91
  %97 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %98 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %103 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %104 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @rxrpc_server_sendmsg(%struct.kiocb* %102, %struct.rxrpc_sock* %103, %struct.msghdr* %104, i64 %105)
  store i32 %106, i32* %12, align 4
  br label %127

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %91, %91, %107
  %109 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %110 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @ENOTCONN, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %12, align 4
  br label %127

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %91, %116
  %118 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %119 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %120 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %10, align 8
  %121 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @rxrpc_client_sendmsg(%struct.kiocb* %118, %struct.rxrpc_sock* %119, %struct.rxrpc_transport* %120, %struct.msghdr* %121, i64 %122)
  store i32 %123, i32* %12, align 4
  br label %127

124:                                              ; preds = %91
  %125 = load i32, i32* @ENOTCONN, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %124, %117, %113, %101
  br label %128

128:                                              ; preds = %127, %76
  %129 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %130 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %129, i32 0, i32 0
  %131 = call i32 @release_sock(%struct.TYPE_3__* %130)
  %132 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %10, align 8
  %133 = icmp ne %struct.rxrpc_transport* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %10, align 8
  %136 = call i32 @rxrpc_put_transport(%struct.rxrpc_transport* %135)
  br label %137

137:                                              ; preds = %134, %128
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %137, %48, %29
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.rxrpc_sock* @rxrpc_sk(i32) #1

declare dso_local i32 @_enter(i8*, i32, i64) #1

declare dso_local i32 @rxrpc_validate_address(%struct.rxrpc_sock*, i32, i32) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @lock_sock(%struct.TYPE_3__*) #1

declare dso_local %struct.rxrpc_transport* @rxrpc_name_to_transport(%struct.socket*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rxrpc_transport*) #1

declare dso_local i32 @PTR_ERR(%struct.rxrpc_transport*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rxrpc_server_sendmsg(%struct.kiocb*, %struct.rxrpc_sock*, %struct.msghdr*, i64) #1

declare dso_local i32 @rxrpc_client_sendmsg(%struct.kiocb*, %struct.rxrpc_sock*, %struct.rxrpc_transport*, %struct.msghdr*, i64) #1

declare dso_local i32 @release_sock(%struct.TYPE_3__*) #1

declare dso_local i32 @rxrpc_put_transport(%struct.rxrpc_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
