; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_confirm_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_confirm_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dn_scp = type { i64, i32 }

@wait = common dso_local global i32 0, align 4
@DN_CR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DN_CC = common dso_local global i64 0, align 8
@RTAX_ADVMSS = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@DN_RUN = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64*, i32)* @dn_confirm_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_confirm_accept(%struct.sock* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dn_scp*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.dn_scp* @DN_SK(%struct.sock* %10)
  store %struct.dn_scp* %11, %struct.dn_scp** %8, align 8
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  %14 = load %struct.dn_scp*, %struct.dn_scp** %8, align 8
  %15 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DN_CR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %117

22:                                               ; preds = %3
  %23 = load i64, i64* @DN_CC, align 8
  %24 = load %struct.dn_scp*, %struct.dn_scp** %8, align 8
  %25 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = call i32 @__sk_dst_get(%struct.sock* %26)
  %28 = load i32, i32* @RTAX_ADVMSS, align 4
  %29 = call i32 @dst_metric(i32 %27, i32 %28)
  %30 = load %struct.dn_scp*, %struct.dn_scp** %8, align 8
  %31 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dn_send_conn_conf(%struct.sock* %32, i32 %33)
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %39 = call i32 @prepare_to_wait(i32 %37, i32* @wait, i32 %38)
  br label %40

40:                                               ; preds = %83, %22
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = call i32 @release_sock(%struct.sock* %41)
  %43 = load %struct.dn_scp*, %struct.dn_scp** %8, align 8
  %44 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DN_CC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @schedule_timeout(i64 %50)
  %52 = load i64*, i64** %6, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %40
  %54 = load %struct.sock*, %struct.sock** %5, align 8
  %55 = call i32 @lock_sock(%struct.sock* %54)
  store i32 0, i32* %9, align 4
  %56 = load %struct.dn_scp*, %struct.dn_scp** %8, align 8
  %57 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DN_RUN, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %89

62:                                               ; preds = %53
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = call i32 @sock_error(%struct.sock* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %89

68:                                               ; preds = %62
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @sock_intr_errno(i64 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* @current, align 4
  %73 = call i64 @signal_pending(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %89

76:                                               ; preds = %68
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  %79 = load i64*, i64** %6, align 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  br label %89

83:                                               ; preds = %76
  %84 = load %struct.sock*, %struct.sock** %5, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %88 = call i32 @prepare_to_wait(i32 %86, i32* @wait, i32 %87)
  br label %40

89:                                               ; preds = %82, %75, %67, %61
  %90 = load %struct.sock*, %struct.sock** %5, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @finish_wait(i32 %92, i32* @wait)
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load i32, i32* @SS_CONNECTED, align 4
  %98 = load %struct.sock*, %struct.sock** %5, align 8
  %99 = getelementptr inbounds %struct.sock, %struct.sock* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 4
  br label %115

102:                                              ; preds = %89
  %103 = load %struct.dn_scp*, %struct.dn_scp** %8, align 8
  %104 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DN_CC, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i32, i32* @SS_UNCONNECTED, align 4
  %110 = load %struct.sock*, %struct.sock** %5, align 8
  %111 = getelementptr inbounds %struct.sock, %struct.sock* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %102
  br label %115

115:                                              ; preds = %114, %96
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %19
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @dst_metric(i32, i32) #1

declare dso_local i32 @__sk_dst_get(%struct.sock*) #1

declare dso_local i32 @dn_send_conn_conf(%struct.sock*, i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
