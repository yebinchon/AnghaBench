; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_setup_cork.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_setup_cork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_cork = type { i64, %struct.TYPE_5__*, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ipcm_cookie = type { i32, %struct.ip_options* }
%struct.ip_options = type { i64 }
%struct.rtable = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.inet_sock = type { i64 }

@ENOBUFS = common dso_local global i32 0, align 4
@IPCORK_OPT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IP_PMTUDISC_PROBE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.inet_cork*, %struct.ipcm_cookie*, %struct.rtable**)* @ip_setup_cork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_setup_cork(%struct.sock* %0, %struct.inet_cork* %1, %struct.ipcm_cookie* %2, %struct.rtable** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.inet_cork*, align 8
  %8 = alloca %struct.ipcm_cookie*, align 8
  %9 = alloca %struct.rtable**, align 8
  %10 = alloca %struct.inet_sock*, align 8
  %11 = alloca %struct.ip_options*, align 8
  %12 = alloca %struct.rtable*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.inet_cork* %1, %struct.inet_cork** %7, align 8
  store %struct.ipcm_cookie* %2, %struct.ipcm_cookie** %8, align 8
  store %struct.rtable** %3, %struct.rtable*** %9, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = call %struct.inet_sock* @inet_sk(%struct.sock* %13)
  store %struct.inet_sock* %14, %struct.inet_sock** %10, align 8
  %15 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %8, align 8
  %16 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %15, i32 0, i32 1
  %17 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  store %struct.ip_options* %17, %struct.ip_options** %11, align 8
  %18 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %19 = icmp ne %struct.ip_options* %18, null
  br i1 %19, label %20, label %63

20:                                               ; preds = %4
  %21 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %22 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @kmalloc(i32 48, i32 %28)
  %30 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %31 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %30, i32 0, i32 5
  store i32* %29, i32** %31, align 8
  %32 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %33 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @ENOBUFS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %108

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %45 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %48 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %49 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 8, %50
  %52 = call i32 @memcpy(i32* %46, %struct.ip_options* %47, i64 %51)
  %53 = load i32, i32* @IPCORK_OPT, align 4
  %54 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %55 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %8, align 8
  %59 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %62 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %43, %4
  %64 = load %struct.rtable**, %struct.rtable*** %9, align 8
  %65 = load %struct.rtable*, %struct.rtable** %64, align 8
  store %struct.rtable* %65, %struct.rtable** %12, align 8
  %66 = load %struct.rtable*, %struct.rtable** %12, align 8
  %67 = icmp ne %struct.rtable* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EFAULT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %108

75:                                               ; preds = %63
  %76 = load %struct.rtable**, %struct.rtable*** %9, align 8
  store %struct.rtable* null, %struct.rtable** %76, align 8
  %77 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %78 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IP_PMTUDISC_PROBE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load %struct.rtable*, %struct.rtable** %12, align 8
  %84 = getelementptr inbounds %struct.rtable, %struct.rtable* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  br label %97

90:                                               ; preds = %75
  %91 = load %struct.rtable*, %struct.rtable** %12, align 8
  %92 = getelementptr inbounds %struct.rtable, %struct.rtable* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dst_mtu(i32 %95)
  br label %97

97:                                               ; preds = %90, %82
  %98 = phi i32 [ %89, %82 ], [ %96, %90 ]
  %99 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %100 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.rtable*, %struct.rtable** %12, align 8
  %102 = getelementptr inbounds %struct.rtable, %struct.rtable* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %105 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %104, i32 0, i32 1
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %105, align 8
  %106 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %107 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %97, %72, %39
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ip_options*, i64) #1

declare dso_local i32 @dst_mtu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
