; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_afiucv_path_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_afiucv_path_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32*, i32, i32*, i8*, %struct.sock*)* }
%struct.sock = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_iucv = type { i32, i32 }
%struct.iucv_sock = type { i32*, i32, i32 }

@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pr_iucv = common dso_local global %struct.TYPE_2__* null, align 8
@af_iucv_handler = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*)* @afiucv_path_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afiucv_path_connect(%struct.socket* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr_iucv*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.iucv_sock*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_iucv*
  store %struct.sockaddr_iucv* %11, %struct.sockaddr_iucv** %5, align 8
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %15)
  store %struct.iucv_sock* %16, %struct.iucv_sock** %7, align 8
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %18 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %5, align 8
  %19 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @high_nmcpy(i8* %17, i32 %20)
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %23 = load %struct.iucv_sock*, %struct.iucv_sock** %7, align 8
  %24 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @low_nmcpy(i8* %22, i32 %25)
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %28 = call i32 @ASCEBC(i8* %27, i32 16)
  %29 = load %struct.iucv_sock*, %struct.iucv_sock** %7, align 8
  %30 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IUCV_IPRMDATA, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32* @iucv_path_alloc(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.iucv_sock*, %struct.iucv_sock** %7, align 8
  %36 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.iucv_sock*, %struct.iucv_sock** %7, align 8
  %38 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %81

44:                                               ; preds = %2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pr_iucv, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (i32*, i32*, i32, i32*, i8*, %struct.sock*)*, i32 (i32*, i32*, i32, i32*, i8*, %struct.sock*)** %46, align 8
  %48 = load %struct.iucv_sock*, %struct.iucv_sock** %7, align 8
  %49 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %5, align 8
  %52 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = call i32 %47(i32* %50, i32* @af_iucv_handler, i32 %53, i32* null, i8* %54, %struct.sock* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %44
  %60 = load %struct.iucv_sock*, %struct.iucv_sock** %7, align 8
  %61 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @iucv_path_free(i32* %62)
  %64 = load %struct.iucv_sock*, %struct.iucv_sock** %7, align 8
  %65 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* %9, align 4
  switch i32 %66, label %76 [
    i32 11, label %67
    i32 13, label %70
    i32 14, label %70
    i32 15, label %73
  ]

67:                                               ; preds = %59
  %68 = load i32, i32* @ENETUNREACH, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %79

70:                                               ; preds = %59, %59
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %79

73:                                               ; preds = %59
  %74 = load i32, i32* @EACCES, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %79

76:                                               ; preds = %59
  %77 = load i32, i32* @ECONNREFUSED, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %76, %73, %70, %67
  br label %80

80:                                               ; preds = %79, %44
  br label %81

81:                                               ; preds = %80, %41
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @high_nmcpy(i8*, i32) #1

declare dso_local i32 @low_nmcpy(i8*, i32) #1

declare dso_local i32 @ASCEBC(i8*, i32) #1

declare dso_local i32* @iucv_path_alloc(i32, i32, i32) #1

declare dso_local i32 @iucv_path_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
