; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_srcip_matches.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_srcip_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*)* @srcip_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srcip_matches(%struct.sockaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %43 [
    i32 128, label %13
    i32 130, label %19
    i32 129, label %34
  ]

13:                                               ; preds = %2
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 128
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %21, %struct.sockaddr_in** %6, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %23, %struct.sockaddr_in** %7, align 8
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %27, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %2
  %35 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %36, %struct.sockaddr_in6** %8, align 8
  %37 = bitcast %struct.sockaddr** %5 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %37, %struct.sockaddr_in6** %9, align 8
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 0
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 0
  %42 = call i32 @ipv6_addr_equal(i32* %39, i32* %41)
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %2
  %44 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %34, %19, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
