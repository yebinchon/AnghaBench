; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_af_llc.c_llc_ui_autobind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_af_llc.c_llc_ui_autobind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr_llc = type { i32 }
%struct.llc_sock = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.sockaddr_llc* }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.llc_sap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@EUSERS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IFHWADDRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr_llc*)* @llc_ui_autobind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_ui_autobind(%struct.socket* %0, %struct.sockaddr_llc* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockaddr_llc*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.llc_sock*, align 8
  %7 = alloca %struct.llc_sap*, align 8
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockaddr_llc* %1, %struct.sockaddr_llc** %4, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.llc_sock* @llc_sk(%struct.sock* %12)
  store %struct.llc_sock* %13, %struct.llc_sock** %6, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = load i32, i32* @SOCK_ZAPPED, align 4
  %18 = call i32 @sock_flag(%struct.sock* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %81

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %4, align 8
  %25 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_4__* @dev_getfirstbyhwtype(i32* @init_net, i32 %26)
  %28 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %29 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %28, i32 0, i32 1
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %31 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %81

35:                                               ; preds = %21
  %36 = load i32, i32* @EUSERS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  %38 = call i32 (...) @llc_ui_autoport()
  %39 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %40 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %43 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  br label %81

48:                                               ; preds = %35
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %52 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.llc_sap* @llc_sap_open(i32 %54, i32* null)
  store %struct.llc_sap* %55, %struct.llc_sap** %7, align 8
  %56 = load %struct.llc_sap*, %struct.llc_sap** %7, align 8
  %57 = icmp ne %struct.llc_sap* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %81

59:                                               ; preds = %48
  %60 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %61 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %65 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %67, align 8
  %69 = load i32, i32* @IFHWADDRLEN, align 4
  %70 = call i32 @memcpy(i32* %63, %struct.sockaddr_llc* %68, i32 %69)
  %71 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %72 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %71, i32 0, i32 0
  %73 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %4, align 8
  %74 = call i32 @memcpy(i32* %72, %struct.sockaddr_llc* %73, i32 4)
  %75 = load %struct.llc_sap*, %struct.llc_sap** %7, align 8
  %76 = load %struct.sock*, %struct.sock** %5, align 8
  %77 = call i32 @llc_sap_add_socket(%struct.llc_sap* %75, %struct.sock* %76)
  %78 = load %struct.sock*, %struct.sock** %5, align 8
  %79 = load i32, i32* @SOCK_ZAPPED, align 4
  %80 = call i32 @sock_reset_flag(%struct.sock* %78, i32 %79)
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %59, %58, %47, %34, %20
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_4__* @dev_getfirstbyhwtype(i32*, i32) #1

declare dso_local i32 @llc_ui_autoport(...) #1

declare dso_local %struct.llc_sap* @llc_sap_open(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_llc*, i32) #1

declare dso_local i32 @llc_sap_add_socket(%struct.llc_sap*, %struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
