; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_atmsvc = type { i64 }
%struct.atm_vcc = type { i32, %struct.sockaddr_atmsvc }

@wait = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@AF_ATMSVC = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ATM_VF_BOUND = common dso_local global i32 0, align 4
@ATM_VF_HASQOS = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@as_bind = common dso_local global i32 0, align 4
@sigd = common dso_local global i64 0, align 8
@ATM_VF_REGIS = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @svc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sockaddr_atmsvc*, align 8
  %10 = alloca %struct.atm_vcc*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 8
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %140

23:                                               ; preds = %3
  %24 = load %struct.sock*, %struct.sock** %8, align 8
  %25 = call i32 @lock_sock(%struct.sock* %24)
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SS_CONNECTED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EISCONN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %136

34:                                               ; preds = %23
  %35 = load %struct.socket*, %struct.socket** %5, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SS_UNCONNECTED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %136

43:                                               ; preds = %34
  %44 = load %struct.socket*, %struct.socket** %5, align 8
  %45 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %44)
  store %struct.atm_vcc* %45, %struct.atm_vcc** %10, align 8
  %46 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %47 = bitcast %struct.sockaddr* %46 to %struct.sockaddr_atmsvc*
  store %struct.sockaddr_atmsvc* %47, %struct.sockaddr_atmsvc** %9, align 8
  %48 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %9, align 8
  %49 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AF_ATMSVC, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EAFNOSUPPORT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %136

56:                                               ; preds = %43
  %57 = load i32, i32* @ATM_VF_BOUND, align 4
  %58 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %59 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %58, i32 0, i32 0
  %60 = call i32 @clear_bit(i32 %57, i32* %59)
  %61 = load i32, i32* @ATM_VF_HASQOS, align 4
  %62 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %63 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %62, i32 0, i32 0
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @EBADFD, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %136

69:                                               ; preds = %56
  %70 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %71 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %70, i32 0, i32 1
  %72 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %9, align 8
  %73 = bitcast %struct.sockaddr_atmsvc* %71 to i8*
  %74 = bitcast %struct.sockaddr_atmsvc* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 8, i1 false)
  %75 = load i32, i32* @ATM_VF_WAITING, align 4
  %76 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %77 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %76, i32 0, i32 0
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  %79 = load %struct.sock*, %struct.sock** %8, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %83 = call i32 @prepare_to_wait(i32 %81, i32* @wait, i32 %82)
  %84 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %85 = load i32, i32* @as_bind, align 4
  %86 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %87 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %86, i32 0, i32 1
  %88 = call i32 @sigd_enq(%struct.atm_vcc* %84, i32 %85, i32* null, i32* null, %struct.sockaddr_atmsvc* %87)
  br label %89

89:                                               ; preds = %100, %69
  %90 = load i32, i32* @ATM_VF_WAITING, align 4
  %91 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %92 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %91, i32 0, i32 0
  %93 = call i64 @test_bit(i32 %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i64, i64* @sigd, align 8
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %95, %89
  %99 = phi i1 [ false, %89 ], [ %97, %95 ]
  br i1 %99, label %100, label %107

100:                                              ; preds = %98
  %101 = call i32 (...) @schedule()
  %102 = load %struct.sock*, %struct.sock** %8, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %106 = call i32 @prepare_to_wait(i32 %104, i32* @wait, i32 %105)
  br label %89

107:                                              ; preds = %98
  %108 = load %struct.sock*, %struct.sock** %8, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @finish_wait(i32 %110, i32* @wait)
  %112 = load i32, i32* @ATM_VF_REGIS, align 4
  %113 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %114 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %113, i32 0, i32 0
  %115 = call i32 @clear_bit(i32 %112, i32* %114)
  %116 = load i64, i64* @sigd, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %107
  %119 = load i32, i32* @EUNATCH, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %11, align 4
  br label %136

121:                                              ; preds = %107
  %122 = load %struct.sock*, %struct.sock** %8, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @ATM_VF_BOUND, align 4
  %128 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %129 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %128, i32 0, i32 0
  %130 = call i32 @set_bit(i32 %127, i32* %129)
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.sock*, %struct.sock** %8, align 8
  %133 = getelementptr inbounds %struct.sock, %struct.sock* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %131, %118, %66, %53, %40, %31
  %137 = load %struct.sock*, %struct.sock** %8, align 8
  %138 = call i32 @release_sock(%struct.sock* %137)
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %136, %20
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sigd_enq(%struct.atm_vcc*, i32, i32*, i32*, %struct.sockaddr_atmsvc*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
