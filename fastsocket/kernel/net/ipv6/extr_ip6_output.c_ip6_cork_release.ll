; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_cork_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_cork_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_sock = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.ipv6_pinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }

@IPCORK_ALLFRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet_sock*, %struct.ipv6_pinfo*)* @ip6_cork_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_cork_release(%struct.inet_sock* %0, %struct.ipv6_pinfo* %1) #0 {
  %3 = alloca %struct.inet_sock*, align 8
  %4 = alloca %struct.ipv6_pinfo*, align 8
  store %struct.inet_sock* %0, %struct.inet_sock** %3, align 8
  store %struct.ipv6_pinfo* %1, %struct.ipv6_pinfo** %4, align 8
  %5 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %6 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %12 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @kfree(%struct.TYPE_6__* %16)
  %18 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i32 @kfree(%struct.TYPE_6__* %23)
  %25 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %26 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @kfree(%struct.TYPE_6__* %30)
  %32 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %33 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @kfree(%struct.TYPE_6__* %37)
  %39 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %40 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @kfree(%struct.TYPE_6__* %42)
  %44 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %45 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %46, align 8
  br label %47

47:                                               ; preds = %10, %2
  %48 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %49 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %55 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @dst_release(i32* %57)
  %59 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %60 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load i32, i32* @IPCORK_ALLFRAG, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %65 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %63
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %53, %47
  %70 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %71 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @memset(i32* %72, i32 0, i32 4)
  ret void
}

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @dst_release(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
