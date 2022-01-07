; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_pvc.c_pvc_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_pvc.c_pvc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_atmpvc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.atm_vcc = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_ATMPVC = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ATM_VF_HASQOS = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@ATM_VF_PARTIAL = common dso_local global i32 0, align 4
@ATM_VPI_UNSPEC = common dso_local global i64 0, align 8
@ATM_VCI_UNSPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @pvc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvc_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sockaddr_atmpvc*, align 8
  %10 = alloca %struct.atm_vcc*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 32
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %97

21:                                               ; preds = %3
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_atmpvc*
  store %struct.sockaddr_atmpvc* %23, %struct.sockaddr_atmpvc** %9, align 8
  %24 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %9, align 8
  %25 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AF_ATMPVC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EAFNOSUPPORT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %97

32:                                               ; preds = %21
  %33 = load %struct.sock*, %struct.sock** %8, align 8
  %34 = call i32 @lock_sock(%struct.sock* %33)
  %35 = load %struct.socket*, %struct.socket** %5, align 8
  %36 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %35)
  store %struct.atm_vcc* %36, %struct.atm_vcc** %10, align 8
  %37 = load i32, i32* @ATM_VF_HASQOS, align 4
  %38 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %39 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %38, i32 0, i32 2
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @EBADFD, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %93

45:                                               ; preds = %32
  %46 = load i32, i32* @ATM_VF_PARTIAL, align 4
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %48 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %47, i32 0, i32 2
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %45
  %52 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %53 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ATM_VPI_UNSPEC, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %59 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %9, align 8
  %62 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %57, %51
  %65 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %66 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ATM_VCI_UNSPEC, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %72 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %9, align 8
  %75 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %64
  br label %78

78:                                               ; preds = %77, %45
  %79 = load %struct.socket*, %struct.socket** %5, align 8
  %80 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %9, align 8
  %81 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %9, align 8
  %85 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %9, align 8
  %89 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @vcc_connect(%struct.socket* %79, i32 %83, i64 %87, i64 %91)
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %78, %42
  %94 = load %struct.sock*, %struct.sock** %8, align 8
  %95 = call i32 @release_sock(%struct.sock* %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %29, %18
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @vcc_connect(%struct.socket*, i32, i64, i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
