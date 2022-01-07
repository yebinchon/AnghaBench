; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_ip_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_ip_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_in6 = type { i16 }
%struct.sockaddr_in = type { i16 }

@AF_INET6 = common dso_local global i64 0, align 8
@CIFS_PORT = common dso_local global i32 0, align 4
@RFC1001_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @ip_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_connect(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  %8 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %9 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %8, i32 0, i32 0
  %10 = bitcast %struct.TYPE_2__* %9 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %10, %struct.sockaddr_in6** %5, align 8
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 0
  %13 = bitcast %struct.TYPE_2__* %12 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %13, %struct.sockaddr_in** %6, align 8
  %14 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %15 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %21, i32 0, i32 0
  store i16* %22, i16** %4, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  store i16* %25, i16** %4, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i16*, i16** %4, align 8
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i32, i32* @CIFS_PORT, align 4
  %33 = call zeroext i16 @htons(i32 %32)
  %34 = load i16*, i16** %4, align 8
  store i16 %33, i16* %34, align 2
  %35 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %36 = call i32 @generic_ip_connect(%struct.TCP_Server_Info* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %31
  %42 = load i32, i32* @RFC1001_PORT, align 4
  %43 = call zeroext i16 @htons(i32 %42)
  %44 = load i16*, i16** %4, align 8
  store i16 %43, i16* %44, align 2
  br label %45

45:                                               ; preds = %41, %26
  %46 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %47 = call i32 @generic_ip_connect(%struct.TCP_Server_Info* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local zeroext i16 @htons(i32) #1

declare dso_local i32 @generic_ip_connect(%struct.TCP_Server_Info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
