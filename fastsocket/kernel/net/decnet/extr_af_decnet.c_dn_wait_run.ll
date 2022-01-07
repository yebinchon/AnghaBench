; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_wait_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_wait_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dn_scp = type { i64 }

@wait = common dso_local global i32 0, align 4
@DN_RUN = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@DN_CI = common dso_local global i64 0, align 8
@DN_CC = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64*)* @dn_wait_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_wait_run(%struct.sock* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.dn_scp*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.dn_scp* @DN_SK(%struct.sock* %8)
  store %struct.dn_scp* %9, %struct.dn_scp** %6, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = call i32 @DEFINE_WAIT(i32 %10)
  store i32 0, i32* %7, align 4
  %12 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %13 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DN_RUN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %91

18:                                               ; preds = %2
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EALREADY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %121

25:                                               ; preds = %18
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %30 = call i32 @prepare_to_wait(i32 %28, i32* @wait, i32 %29)
  br label %31

31:                                               ; preds = %80, %25
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = call i32 @release_sock(%struct.sock* %32)
  %34 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %35 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DN_CI, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %31
  %40 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %41 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DN_CC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39, %31
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @schedule_timeout(i64 %47)
  %49 = load i64*, i64** %5, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = call i32 @lock_sock(%struct.sock* %51)
  store i32 0, i32* %7, align 4
  %53 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %54 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DN_RUN, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %86

59:                                               ; preds = %50
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = call i32 @sock_error(%struct.sock* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %86

65:                                               ; preds = %59
  %66 = load i64*, i64** %5, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @sock_intr_errno(i64 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @current, align 4
  %70 = call i64 @signal_pending(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %86

73:                                               ; preds = %65
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  %76 = load i64*, i64** %5, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %86

80:                                               ; preds = %73
  %81 = load %struct.sock*, %struct.sock** %4, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %85 = call i32 @prepare_to_wait(i32 %83, i32* @wait, i32 %84)
  br label %31

86:                                               ; preds = %79, %72, %64, %58
  %87 = load %struct.sock*, %struct.sock** %4, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @finish_wait(i32 %89, i32* @wait)
  br label %91

91:                                               ; preds = %86, %17
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* @SS_CONNECTED, align 4
  %96 = load %struct.sock*, %struct.sock** %4, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 4
  br label %119

100:                                              ; preds = %91
  %101 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %102 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DN_CI, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %108 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DN_CC, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i32, i32* @SS_UNCONNECTED, align 4
  %114 = load %struct.sock*, %struct.sock** %4, align 8
  %115 = getelementptr inbounds %struct.sock, %struct.sock* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %106, %100
  br label %119

119:                                              ; preds = %118, %94
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %22
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

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
