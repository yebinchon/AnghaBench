; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_inet_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_inet_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32, i64, i32 }
%struct.sctp_endpoint = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.sctp_endpoint* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UDP_HIGH_BANDWIDTH = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@CLOSED = common dso_local global i32 0, align 4
@SCTP_SS_CLOSED = common dso_local global i32 0, align 4
@LISTENING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_inet_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 1
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %14, align 8
  store %struct.sctp_endpoint* %15, %struct.sctp_endpoint** %7, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %2
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = call i32 @sctp_lock_sock(%struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = load i32, i32* @UDP_HIGH_BANDWIDTH, align 4
  %30 = call i64 @sctp_style(%struct.sock* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %84

33:                                               ; preds = %25
  %34 = load %struct.socket*, %struct.socket** %4, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SS_UNCONNECTED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %84

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %40
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = load i32, i32* @CLOSED, align 4
  %46 = call i64 @sctp_sstate(%struct.sock* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %84

49:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  %50 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %51 = call i32 @sctp_unhash_endpoint(%struct.sctp_endpoint* %50)
  %52 = load i32, i32* @SCTP_SS_CLOSED, align 4
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.sock*, %struct.sock** %6, align 8
  %61 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %49
  br label %84

66:                                               ; preds = %40
  %67 = load %struct.sock*, %struct.sock** %6, align 8
  %68 = load i32, i32* @LISTENING, align 4
  %69 = call i64 @sctp_sstate(%struct.sock* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.sock*, %struct.sock** %6, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %83

75:                                               ; preds = %66
  %76 = load %struct.sock*, %struct.sock** %6, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @sctp_listen_start(%struct.sock* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %84

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %71
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %81, %65, %48, %39, %32
  %85 = load %struct.sock*, %struct.sock** %6, align 8
  %86 = call i32 @sctp_release_sock(%struct.sock* %85)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %23
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_4__* @sctp_sk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sctp_lock_sock(%struct.sock*) #1

declare dso_local i64 @sctp_style(%struct.sock*, i32) #1

declare dso_local i64 @sctp_sstate(%struct.sock*, i32) #1

declare dso_local i32 @sctp_unhash_endpoint(%struct.sctp_endpoint*) #1

declare dso_local i32 @sctp_listen_start(%struct.sock*, i32) #1

declare dso_local i32 @sctp_release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
