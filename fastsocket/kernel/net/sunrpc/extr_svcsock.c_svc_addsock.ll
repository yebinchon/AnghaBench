; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_addsock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_addsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32, i32 }
%struct.socket = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.svc_sock = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SVC_SOCK_DEFAULTS = common dso_local global i32 0, align 4
@XPT_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_addsock(%struct.svc_serv* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_serv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.socket*, align 8
  %12 = alloca %struct.svc_sock*, align 8
  %13 = alloca %struct.sockaddr_storage, align 4
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.socket* @sockfd_lookup(i32 %16, i32* %10)
  store %struct.socket* %17, %struct.socket** %11, align 8
  store %struct.svc_sock* null, %struct.svc_sock** %12, align 8
  %18 = load %struct.socket*, %struct.socket** %11, align 8
  %19 = icmp ne %struct.socket* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %137

22:                                               ; preds = %4
  %23 = load %struct.socket*, %struct.socket** %11, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PF_INET, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load %struct.socket*, %struct.socket** %11, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PF_INET6, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EAFNOSUPPORT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %125

41:                                               ; preds = %30, %22
  %42 = load %struct.socket*, %struct.socket** %11, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IPPROTO_TCP, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %41
  %50 = load %struct.socket*, %struct.socket** %11, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IPPROTO_UDP, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @EPROTONOSUPPORT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %124

60:                                               ; preds = %49, %41
  %61 = load %struct.socket*, %struct.socket** %11, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SS_UNCONNECTED, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @EISCONN, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %123

69:                                               ; preds = %60
  %70 = load i32, i32* @THIS_MODULE, align 4
  %71 = call i32 @try_module_get(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  br label %81

76:                                               ; preds = %69
  %77 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %78 = load %struct.socket*, %struct.socket** %11, align 8
  %79 = load i32, i32* @SVC_SOCK_DEFAULTS, align 4
  %80 = call %struct.svc_sock* @svc_setup_socket(%struct.svc_serv* %77, %struct.socket* %78, i32* %10, i32 %79)
  store %struct.svc_sock* %80, %struct.svc_sock** %12, align 8
  br label %81

81:                                               ; preds = %76, %73
  %82 = load %struct.svc_sock*, %struct.svc_sock** %12, align 8
  %83 = icmp ne %struct.svc_sock* %82, null
  br i1 %83, label %84, label %119

84:                                               ; preds = %81
  %85 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr*
  store %struct.sockaddr* %85, %struct.sockaddr** %14, align 8
  %86 = load %struct.svc_sock*, %struct.svc_sock** %12, align 8
  %87 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %90 = call i64 @kernel_getsockname(i32 %88, %struct.sockaddr* %89, i32* %15)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load %struct.svc_sock*, %struct.svc_sock** %12, align 8
  %94 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %93, i32 0, i32 0
  %95 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @svc_xprt_set_local(%struct.TYPE_5__* %94, %struct.sockaddr* %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %84
  %99 = load i32, i32* @XPT_TEMP, align 4
  %100 = load %struct.svc_sock*, %struct.svc_sock** %12, align 8
  %101 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = call i32 @clear_bit(i32 %99, i32* %102)
  %104 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %105 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %104, i32 0, i32 0
  %106 = call i32 @spin_lock_bh(i32* %105)
  %107 = load %struct.svc_sock*, %struct.svc_sock** %12, align 8
  %108 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %111 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %110, i32 0, i32 1
  %112 = call i32 @list_add(i32* %109, i32* %111)
  %113 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %114 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock_bh(i32* %114)
  %116 = load %struct.svc_sock*, %struct.svc_sock** %12, align 8
  %117 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %116, i32 0, i32 0
  %118 = call i32 @svc_xprt_received(%struct.TYPE_5__* %117)
  store i32 0, i32* %10, align 4
  br label %122

119:                                              ; preds = %81
  %120 = load i32, i32* @THIS_MODULE, align 4
  %121 = call i32 @module_put(i32 %120)
  br label %122

122:                                              ; preds = %119, %98
  br label %123

123:                                              ; preds = %122, %66
  br label %124

124:                                              ; preds = %123, %57
  br label %125

125:                                              ; preds = %124, %38
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.socket*, %struct.socket** %11, align 8
  %130 = call i32 @sockfd_put(%struct.socket* %129)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %5, align 4
  br label %137

132:                                              ; preds = %125
  %133 = load %struct.svc_sock*, %struct.svc_sock** %12, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @svc_one_sock_name(%struct.svc_sock* %133, i8* %134, i64 %135)
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %132, %128, %20
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.svc_sock* @svc_setup_socket(%struct.svc_serv*, %struct.socket*, i32*, i32) #1

declare dso_local i64 @kernel_getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @svc_xprt_set_local(%struct.TYPE_5__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @svc_xprt_received(%struct.TYPE_5__*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

declare dso_local i32 @svc_one_sock_name(%struct.svc_sock*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
