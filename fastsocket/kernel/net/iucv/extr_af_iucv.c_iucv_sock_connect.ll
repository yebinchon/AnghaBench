; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i64 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_iucv = type { i32, i32 }
%struct.iucv_sock = type { i64, i32, i32 }

@AF_IUCV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IUCV_OPEN = common dso_local global i64 0, align 8
@IUCV_BOUND = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@AF_IUCV_TRANS_HIPER = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@AF_IUCV_FLAG_SYN = common dso_local global i32 0, align 4
@IUCV_CONNECTED = common dso_local global i64 0, align 8
@IUCV_DISCONN = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@IUCV_CLOSED = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@AF_IUCV_TRANS_IUCV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @iucv_sock_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_sock_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_iucv*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.iucv_sock*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_iucv*
  store %struct.sockaddr_iucv* %15, %struct.sockaddr_iucv** %10, align 8
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %11, align 8
  %19 = load %struct.sock*, %struct.sock** %11, align 8
  %20 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %19)
  store %struct.iucv_sock* %20, %struct.iucv_sock** %12, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_IUCV, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 8
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %177

33:                                               ; preds = %26
  %34 = load %struct.sock*, %struct.sock** %11, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IUCV_OPEN, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.sock*, %struct.sock** %11, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IUCV_BOUND, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EBADFD, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %177

48:                                               ; preds = %39, %33
  %49 = load %struct.sock*, %struct.sock** %11, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IUCV_OPEN, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.iucv_sock*, %struct.iucv_sock** %12, align 8
  %56 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AF_IUCV_TRANS_HIPER, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EBADFD, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %177

63:                                               ; preds = %54, %48
  %64 = load %struct.sock*, %struct.sock** %11, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SOCK_STREAM, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.sock*, %struct.sock** %11, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SOCK_SEQPACKET, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %177

78:                                               ; preds = %69, %63
  %79 = load %struct.sock*, %struct.sock** %11, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IUCV_OPEN, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.sock*, %struct.sock** %11, align 8
  %86 = call i32 @iucv_sock_autobind(%struct.sock* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %177

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %78
  %94 = load %struct.sock*, %struct.sock** %11, align 8
  %95 = call i32 @lock_sock(%struct.sock* %94)
  %96 = load %struct.iucv_sock*, %struct.iucv_sock** %12, align 8
  %97 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %10, align 8
  %100 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memcpy(i32 %98, i32 %101, i32 8)
  %103 = load %struct.iucv_sock*, %struct.iucv_sock** %12, align 8
  %104 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %10, align 8
  %107 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(i32 %105, i32 %108, i32 8)
  %110 = load %struct.iucv_sock*, %struct.iucv_sock** %12, align 8
  %111 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AF_IUCV_TRANS_HIPER, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %93
  %116 = load %struct.sock*, %struct.sock** %11, align 8
  %117 = load i32, i32* @AF_IUCV_FLAG_SYN, align 4
  %118 = call i32 @iucv_send_ctrl(%struct.sock* %116, i32 %117)
  store i32 %118, i32* %13, align 4
  br label %123

119:                                              ; preds = %93
  %120 = load %struct.socket*, %struct.socket** %6, align 8
  %121 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %122 = call i32 @afiucv_path_connect(%struct.socket* %120, %struct.sockaddr* %121)
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %119, %115
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %173

127:                                              ; preds = %123
  %128 = load %struct.sock*, %struct.sock** %11, align 8
  %129 = getelementptr inbounds %struct.sock, %struct.sock* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @IUCV_CONNECTED, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %127
  %134 = load %struct.sock*, %struct.sock** %11, align 8
  %135 = load %struct.sock*, %struct.sock** %11, align 8
  %136 = load i64, i64* @IUCV_CONNECTED, align 8
  %137 = load i64, i64* @IUCV_DISCONN, align 8
  %138 = call i32 @iucv_sock_in_state(%struct.sock* %135, i64 %136, i64 %137)
  %139 = load %struct.sock*, %struct.sock** %11, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @O_NONBLOCK, align 4
  %142 = and i32 %140, %141
  %143 = call i32 @sock_sndtimeo(%struct.sock* %139, i32 %142)
  %144 = call i32 @iucv_sock_wait(%struct.sock* %134, i32 %138, i32 %143)
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %133, %127
  %146 = load %struct.sock*, %struct.sock** %11, align 8
  %147 = getelementptr inbounds %struct.sock, %struct.sock* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IUCV_DISCONN, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load %struct.sock*, %struct.sock** %11, align 8
  %153 = getelementptr inbounds %struct.sock, %struct.sock* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @IUCV_CLOSED, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151, %145
  %158 = load i32, i32* @ECONNREFUSED, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %13, align 4
  br label %160

160:                                              ; preds = %157, %151
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = load %struct.iucv_sock*, %struct.iucv_sock** %12, align 8
  %165 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @AF_IUCV_TRANS_IUCV, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load %struct.sock*, %struct.sock** %11, align 8
  %171 = call i32 @iucv_sever_path(%struct.sock* %170, i32 0)
  br label %172

172:                                              ; preds = %169, %163, %160
  br label %173

173:                                              ; preds = %172, %126
  %174 = load %struct.sock*, %struct.sock** %11, align 8
  %175 = call i32 @release_sock(%struct.sock* %174)
  %176 = load i32, i32* %13, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %173, %90, %75, %60, %45, %30
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @iucv_sock_autobind(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @iucv_send_ctrl(%struct.sock*, i32) #1

declare dso_local i32 @afiucv_path_connect(%struct.socket*, %struct.sockaddr*) #1

declare dso_local i32 @iucv_sock_wait(%struct.sock*, i32, i32) #1

declare dso_local i32 @iucv_sock_in_state(%struct.sock*, i64, i64) #1

declare dso_local i32 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @iucv_sever_path(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
