; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/network_io/unix/extr_sockaddr.c_get_local_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/network_io/unix/extr_sockaddr.c_get_local_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr = type { i32 }

@APR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @get_local_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_local_addr(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 4, i32* %7, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = bitcast %struct.TYPE_8__* %14 to %struct.sockaddr*
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i64 @getsockname(i32 %10, %struct.sockaddr* %15, i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 (...) @apr_get_netos_error()
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %24, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @apr_get_netos_error(...) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
