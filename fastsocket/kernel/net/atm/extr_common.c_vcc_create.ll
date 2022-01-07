; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_vcc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_vcc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.sock = type { i32, i32, i32, i32, i32 }
%struct.atm_vcc = type { i64, i64, i64, i64, i32*, i32*, i32*, %struct.TYPE_4__, i32, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@vcc_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vcc_def_wakeup = common dso_local global i32 0, align 4
@vcc_write_space = common dso_local global i32 0, align 4
@vcc_sock_destruct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcc_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.atm_vcc*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.socket*, %struct.socket** %7, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.socket*, %struct.socket** %7, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SOCK_STREAM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %79

22:                                               ; preds = %4
  %23 = load %struct.net*, %struct.net** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sock* @sk_alloc(%struct.net* %23, i32 %24, i32 %25, i32* @vcc_proto)
  store %struct.sock* %26, %struct.sock** %10, align 8
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = icmp ne %struct.sock* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %79

32:                                               ; preds = %22
  %33 = load %struct.socket*, %struct.socket** %7, align 8
  %34 = load %struct.sock*, %struct.sock** %10, align 8
  %35 = call i32 @sock_init_data(%struct.socket* %33, %struct.sock* %34)
  %36 = load i32, i32* @vcc_def_wakeup, align 4
  %37 = load %struct.sock*, %struct.sock** %10, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @vcc_write_space, align 4
  %40 = load %struct.sock*, %struct.sock** %10, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sock*, %struct.sock** %10, align 8
  %43 = call %struct.atm_vcc* @atm_sk(%struct.sock* %42)
  store %struct.atm_vcc* %43, %struct.atm_vcc** %11, align 8
  %44 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %45 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %44, i32 0, i32 10
  store i32* null, i32** %45, align 8
  %46 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %47 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %46, i32 0, i32 9
  %48 = call i32 @memset(i32* %47, i32 0, i32 4)
  %49 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %50 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %49, i32 0, i32 8
  %51 = call i32 @memset(i32* %50, i32 0, i32 4)
  %52 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %53 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 65536, i32* %55, align 8
  %56 = load %struct.sock*, %struct.sock** %10, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 2
  %58 = call i32 @atomic_set(i32* %57, i32 1)
  %59 = load %struct.sock*, %struct.sock** %10, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 1
  %61 = call i32 @atomic_set(i32* %60, i32 0)
  %62 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %63 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %62, i32 0, i32 6
  store i32* null, i32** %63, align 8
  %64 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %65 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %64, i32 0, i32 5
  store i32* null, i32** %65, align 8
  %66 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %67 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %66, i32 0, i32 4
  store i32* null, i32** %67, align 8
  %68 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %69 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %71 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %73 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %75 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @vcc_sock_destruct, align 4
  %77 = load %struct.sock*, %struct.sock** %10, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %32, %29, %19
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.atm_vcc* @atm_sk(%struct.sock*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
