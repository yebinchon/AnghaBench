; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_match_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_match_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.sockaddr*, %struct.sockaddr*)* @match_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_address(%struct.TCP_Server_Info* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %55 [
    i32 129, label %15
    i32 128, label %32
  ]

15:                                               ; preds = %3
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %17, %struct.sockaddr_in** %8, align 8
  %18 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %19 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %18, i32 0, i32 1
  %20 = bitcast i32* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %9, align 8
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %66

31:                                               ; preds = %15
  br label %57

32:                                               ; preds = %3
  %33 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %34 = bitcast %struct.sockaddr* %33 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %34, %struct.sockaddr_in6** %10, align 8
  %35 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %36 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %35, i32 0, i32 1
  %37 = bitcast i32* %36 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %37, %struct.sockaddr_in6** %11, align 8
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 1
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 1
  %42 = call i32 @ipv6_addr_equal(i32* %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %66

45:                                               ; preds = %32
  %46 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %66

54:                                               ; preds = %45
  br label %57

55:                                               ; preds = %3
  %56 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %4, align 4
  br label %66

57:                                               ; preds = %54, %31
  %58 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %59 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %60 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %59, i32 0, i32 0
  %61 = bitcast i32* %60 to %struct.sockaddr*
  %62 = call i32 @srcip_matches(%struct.sockaddr* %58, %struct.sockaddr* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %66

65:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %64, %55, %53, %44, %30
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @srcip_matches(%struct.sockaddr*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
