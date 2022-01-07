; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_pvc.c_pvc_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_pvc.c_pvc_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_atmpvc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.atm_vcc = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@ATM_VF_ADDR = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@AF_ATMPVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @pvc_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvc_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_atmpvc*, align 8
  %11 = alloca %struct.atm_vcc*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %12)
  store %struct.atm_vcc* %13, %struct.atm_vcc** %11, align 8
  %14 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %15 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32, i32* @ATM_VF_ADDR, align 4
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %21 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %20, i32 0, i32 3
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18, %4
  %25 = load i32, i32* @ENOTCONN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %56

27:                                               ; preds = %18
  %28 = load i32*, i32** %8, align 8
  store i32 16, i32* %28, align 4
  %29 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %30 = bitcast %struct.sockaddr* %29 to %struct.sockaddr_atmpvc*
  store %struct.sockaddr_atmpvc* %30, %struct.sockaddr_atmpvc** %10, align 8
  %31 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %10, align 8
  %32 = call i32 @memset(%struct.sockaddr_atmpvc* %31, i32 0, i32 16)
  %33 = load i32, i32* @AF_ATMPVC, align 4
  %34 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %10, align 8
  %35 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %37 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %10, align 8
  %42 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %45 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %10, align 8
  %48 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %51 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %10, align 8
  %54 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %27, %24
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.sockaddr_atmpvc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
