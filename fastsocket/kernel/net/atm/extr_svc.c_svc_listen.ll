; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32, i32 }
%struct.atm_vcc = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"svc_listen %p\0A\00", align 1
@ATM_VF_SESSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATM_VF_LISTEN = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@as_listen = common dso_local global i32 0, align 4
@sigd = common dso_local global i64 0, align 8
@EUNATCH = common dso_local global i32 0, align 4
@ATM_BACKLOG_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @svc_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.atm_vcc*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @wait, align 4
  %9 = call i32 @DEFINE_WAIT(i32 %8)
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %5, align 8
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %13)
  store %struct.atm_vcc* %14, %struct.atm_vcc** %6, align 8
  %15 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %15)
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load i32, i32* @ATM_VF_SESSION, align 4
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %21 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %100

27:                                               ; preds = %2
  %28 = load i32, i32* @ATM_VF_LISTEN, align 4
  %29 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %30 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EADDRINUSE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %100

36:                                               ; preds = %27
  %37 = load i32, i32* @ATM_VF_WAITING, align 4
  %38 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %39 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %38, i32 0, i32 0
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %45 = call i32 @prepare_to_wait(i32 %43, i32* @wait, i32 %44)
  %46 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %47 = load i32, i32* @as_listen, align 4
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %49 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %48, i32 0, i32 1
  %50 = call i32 @sigd_enq(%struct.atm_vcc* %46, i32 %47, i32* null, i32* null, i32* %49)
  br label %51

51:                                               ; preds = %62, %36
  %52 = load i32, i32* @ATM_VF_WAITING, align 4
  %53 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %54 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %53, i32 0, i32 0
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i64, i64* @sigd, align 8
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %57, %51
  %61 = phi i1 [ false, %51 ], [ %59, %57 ]
  br i1 %61, label %62, label %69

62:                                               ; preds = %60
  %63 = call i32 (...) @schedule()
  %64 = load %struct.sock*, %struct.sock** %5, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %68 = call i32 @prepare_to_wait(i32 %66, i32* @wait, i32 %67)
  br label %51

69:                                               ; preds = %60
  %70 = load %struct.sock*, %struct.sock** %5, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @finish_wait(i32 %72, i32* @wait)
  %74 = load i64, i64* @sigd, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @EUNATCH, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %100

79:                                               ; preds = %69
  %80 = load i32, i32* @ATM_VF_LISTEN, align 4
  %81 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %82 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %81, i32 0, i32 0
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  %84 = load %struct.sock*, %struct.sock** %5, align 8
  %85 = call i32 @vcc_insert_socket(%struct.sock* %84)
  %86 = load i32, i32* %4, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %4, align 4
  br label %92

90:                                               ; preds = %79
  %91 = load i32, i32* @ATM_BACKLOG_DEFAULT, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = load %struct.sock*, %struct.sock** %5, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.sock*, %struct.sock** %5, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %92, %76, %33, %24
  %101 = load %struct.sock*, %struct.sock** %5, align 8
  %102 = call i32 @release_sock(%struct.sock* %101)
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @pr_debug(i8*, %struct.atm_vcc*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sigd_enq(%struct.atm_vcc*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @vcc_insert_socket(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
