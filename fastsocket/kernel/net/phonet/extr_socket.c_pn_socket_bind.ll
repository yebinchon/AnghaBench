; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_socket.c_pn_socket_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_socket.c_pn_socket_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, i64)*, i32 (%struct.sock*)* }
%struct.sockaddr = type { i32 }
%struct.pn_sock = type { i32, i32 }
%struct.sockaddr_pn = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_PHONET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@port_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @pn_socket_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_socket_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.pn_sock*, align 8
  %10 = alloca %struct.sockaddr_pn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %8, align 8
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = call %struct.pn_sock* @pn_sk(%struct.sock* %17)
  store %struct.pn_sock* %18, %struct.pn_sock** %9, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_pn*
  store %struct.sockaddr_pn* %20, %struct.sockaddr_pn** %10, align 8
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.sock*, %struct.sockaddr*, i32)* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load %struct.sock*, %struct.sock** %8, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)** %31, align 8
  %33 = load %struct.sock*, %struct.sock** %8, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %32(%struct.sock* %33, %struct.sockaddr* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %131

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 16
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %131

44:                                               ; preds = %37
  %45 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %10, align 8
  %46 = getelementptr inbounds %struct.sockaddr_pn, %struct.sockaddr_pn* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AF_PHONET, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EAFNOSUPPORT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %131

53:                                               ; preds = %44
  %54 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %55 = bitcast %struct.sockaddr* %54 to %struct.sockaddr_pn*
  %56 = call i32 @pn_sockaddr_get_object(%struct.sockaddr_pn* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @pn_addr(i32 %57)
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  %63 = call i32 @sock_net(%struct.sock* %62)
  %64 = load i64, i64* %13, align 8
  %65 = call i64 @phonet_address_lookup(i32 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EADDRNOTAVAIL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %131

70:                                               ; preds = %61, %53
  %71 = load %struct.sock*, %struct.sock** %8, align 8
  %72 = call i32 @lock_sock(%struct.sock* %71)
  %73 = load %struct.sock*, %struct.sock** %8, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TCP_CLOSE, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %70
  %79 = load %struct.pn_sock*, %struct.pn_sock** %9, align 8
  %80 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @pn_port(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78, %70
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %127

87:                                               ; preds = %78
  %88 = load %struct.sock*, %struct.sock** %8, align 8
  %89 = call i32 @sk_hashed(%struct.sock* %88)
  %90 = call i32 @WARN_ON(i32 %89)
  %91 = call i32 @mutex_lock(i32* @port_mutex)
  %92 = load %struct.sock*, %struct.sock** %8, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32 (%struct.sock*, i64)*, i32 (%struct.sock*, i64)** %95, align 8
  %97 = load %struct.sock*, %struct.sock** %8, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @pn_port(i32 %98)
  %100 = call i32 %96(%struct.sock* %97, i64 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %87
  br label %125

104:                                              ; preds = %87
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.pn_sock*, %struct.pn_sock** %9, align 8
  %107 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @pn_port(i32 %108)
  %110 = call i32 @pn_object(i64 %105, i64 %109)
  %111 = load %struct.pn_sock*, %struct.pn_sock** %9, align 8
  %112 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %10, align 8
  %114 = getelementptr inbounds %struct.sockaddr_pn, %struct.sockaddr_pn* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.pn_sock*, %struct.pn_sock** %9, align 8
  %117 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.sock*, %struct.sock** %8, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %121, align 8
  %123 = load %struct.sock*, %struct.sock** %8, align 8
  %124 = call i32 %122(%struct.sock* %123)
  br label %125

125:                                              ; preds = %104, %103
  %126 = call i32 @mutex_unlock(i32* @port_mutex)
  br label %127

127:                                              ; preds = %125, %84
  %128 = load %struct.sock*, %struct.sock** %8, align 8
  %129 = call i32 @release_sock(%struct.sock* %128)
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %127, %67, %50, %41, %27
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.pn_sock* @pn_sk(%struct.sock*) #1

declare dso_local i32 @pn_sockaddr_get_object(%struct.sockaddr_pn*) #1

declare dso_local i64 @pn_addr(i32) #1

declare dso_local i64 @phonet_address_lookup(i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @pn_port(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sk_hashed(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pn_object(i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
