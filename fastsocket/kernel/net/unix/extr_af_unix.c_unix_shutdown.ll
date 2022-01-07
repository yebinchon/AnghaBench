; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64, i32, i32 (%struct.sock*)* }

@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SOCK_WAKE_WAITD = common dso_local global i32 0, align 4
@POLL_HUP = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @unix_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_shutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* @RCV_SHUTDOWN, align 4
  %14 = load i32, i32* @SEND_SHUTDOWN, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %122

19:                                               ; preds = %2
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = call i32 @unix_state_lock(%struct.sock* %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = call %struct.sock* @unix_peer(%struct.sock* %27)
  store %struct.sock* %28, %struct.sock** %6, align 8
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = icmp ne %struct.sock* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = call i32 @sock_hold(%struct.sock* %32)
  br label %34

34:                                               ; preds = %31, %19
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @unix_state_unlock(%struct.sock* %35)
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 3
  %39 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %38, align 8
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = call i32 %39(%struct.sock* %40)
  %42 = load %struct.sock*, %struct.sock** %6, align 8
  %43 = icmp ne %struct.sock* %42, null
  br i1 %43, label %44, label %115

44:                                               ; preds = %34
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SOCK_STREAM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SOCK_SEQPACKET, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %115

56:                                               ; preds = %50, %44
  store i32 0, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @RCV_SHUTDOWN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @SEND_SHUTDOWN, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @SEND_SHUTDOWN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @RCV_SHUTDOWN, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.sock*, %struct.sock** %6, align 8
  %76 = call i32 @unix_state_lock(%struct.sock* %75)
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.sock*, %struct.sock** %6, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.sock*, %struct.sock** %6, align 8
  %83 = call i32 @unix_state_unlock(%struct.sock* %82)
  %84 = load %struct.sock*, %struct.sock** %6, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 3
  %86 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %85, align 8
  %87 = load %struct.sock*, %struct.sock** %6, align 8
  %88 = call i32 %86(%struct.sock* %87)
  %89 = load %struct.sock*, %struct.sock** %6, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 2
  %91 = call i32 @read_lock(i32* %90)
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @SHUTDOWN_MASK, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %74
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = load i32, i32* @SOCK_WAKE_WAITD, align 4
  %98 = load i32, i32* @POLL_HUP, align 4
  %99 = call i32 @sk_wake_async(%struct.sock* %96, i32 %97, i32 %98)
  br label %111

100:                                              ; preds = %74
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @RCV_SHUTDOWN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.sock*, %struct.sock** %6, align 8
  %107 = load i32, i32* @SOCK_WAKE_WAITD, align 4
  %108 = load i32, i32* @POLL_IN, align 4
  %109 = call i32 @sk_wake_async(%struct.sock* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110, %95
  %112 = load %struct.sock*, %struct.sock** %6, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 2
  %114 = call i32 @read_unlock(i32* %113)
  br label %115

115:                                              ; preds = %111, %50, %34
  %116 = load %struct.sock*, %struct.sock** %6, align 8
  %117 = icmp ne %struct.sock* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.sock*, %struct.sock** %6, align 8
  %120 = call i32 @sock_put(%struct.sock* %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %2
  ret i32 0
}

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local %struct.sock* @unix_peer(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
