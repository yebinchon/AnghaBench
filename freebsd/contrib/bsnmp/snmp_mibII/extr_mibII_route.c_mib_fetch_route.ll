; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_route.c_mib_fetch_route.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_route.c_mib_fetch_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sroute = type { i32 }
%struct.rt_msghdr = type { i64, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@RTAX_MAX = common dso_local global i32 0, align 4
@route_tick = common dso_local global i64 0, align 8
@ROUTE_UPDATE_INTERVAL = common dso_local global i64 0, align 8
@this_tick = common dso_local global i64 0, align 8
@sroutes = common dso_local global i32 0, align 4
@route_total = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@NET_RT_DUMP = common dso_local global i32 0, align 4
@RTM_GET = common dso_local global i64 0, align 8
@RTF_UP = common dso_local global i32 0, align 4
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mib_fetch_route() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sroute*, align 8
  %3 = alloca %struct.sroute*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sroute*, align 8
  %6 = alloca %struct.sroute*, align 8
  %7 = alloca %struct.rt_msghdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @RTAX_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca %struct.sockaddr*, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i64, i64* @route_tick, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %0
  %18 = load i64, i64* @route_tick, align 8
  %19 = load i64, i64* @ROUTE_UPDATE_INTERVAL, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @this_tick, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %102

24:                                               ; preds = %17, %0
  %25 = load i32, i32* @sroutes, align 4
  %26 = call %struct.sroute* @RB_MIN(i32 %25, i32* @sroutes)
  store %struct.sroute* %26, %struct.sroute** %5, align 8
  br label %27

27:                                               ; preds = %30, %24
  %28 = load %struct.sroute*, %struct.sroute** %5, align 8
  %29 = icmp ne %struct.sroute* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* @sroutes, align 4
  %32 = load %struct.sroute*, %struct.sroute** %5, align 8
  %33 = call %struct.sroute* @RB_NEXT(i32 %31, i32* @sroutes, %struct.sroute* %32)
  store %struct.sroute* %33, %struct.sroute** %6, align 8
  %34 = load i32, i32* @sroutes, align 4
  %35 = load %struct.sroute*, %struct.sroute** %5, align 8
  %36 = call i32 @RB_REMOVE(i32 %34, i32* @sroutes, %struct.sroute* %35)
  %37 = load %struct.sroute*, %struct.sroute** %5, align 8
  %38 = call i32 @free(%struct.sroute* %37)
  %39 = load %struct.sroute*, %struct.sroute** %6, align 8
  store %struct.sroute* %39, %struct.sroute** %5, align 8
  br label %27

40:                                               ; preds = %27
  store i64 0, i64* @route_total, align 8
  %41 = load i32, i32* @AF_INET, align 4
  %42 = load i32, i32* @NET_RT_DUMP, align 4
  %43 = call %struct.sroute* @mib_fetch_rtab(i32 %41, i32 %42, i32 0, i64* %4)
  store %struct.sroute* %43, %struct.sroute** %2, align 8
  %44 = icmp eq %struct.sroute* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %102

46:                                               ; preds = %40
  %47 = load %struct.sroute*, %struct.sroute** %2, align 8
  store %struct.sroute* %47, %struct.sroute** %3, align 8
  %48 = load %struct.sroute*, %struct.sroute** %2, align 8
  store %struct.sroute* %48, %struct.sroute** %3, align 8
  br label %49

49:                                               ; preds = %91, %46
  %50 = load %struct.sroute*, %struct.sroute** %3, align 8
  %51 = load %struct.sroute*, %struct.sroute** %2, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds %struct.sroute, %struct.sroute* %51, i64 %52
  %54 = icmp ult %struct.sroute* %50, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %49
  %56 = load %struct.sroute*, %struct.sroute** %3, align 8
  %57 = bitcast %struct.sroute* %56 to i8*
  %58 = bitcast i8* %57 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %58, %struct.rt_msghdr** %7, align 8
  %59 = load %struct.rt_msghdr*, %struct.rt_msghdr** %7, align 8
  %60 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RTM_GET, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %55
  %65 = load %struct.rt_msghdr*, %struct.rt_msghdr** %7, align 8
  %66 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @RTF_UP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64, %55
  br label %91

72:                                               ; preds = %64
  %73 = load %struct.rt_msghdr*, %struct.rt_msghdr** %7, align 8
  %74 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.rt_msghdr*, %struct.rt_msghdr** %7, align 8
  %77 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %76, i64 1
  %78 = bitcast %struct.rt_msghdr* %77 to %struct.sroute*
  %79 = call i32 @mib_extract_addrs(i32 %75, %struct.sroute* %78, %struct.sockaddr** %14)
  %80 = load %struct.rt_msghdr*, %struct.rt_msghdr** %7, align 8
  %81 = load i64, i64* @RTAX_GATEWAY, align 8
  %82 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %14, i64 %81
  %83 = load %struct.sockaddr*, %struct.sockaddr** %82, align 8
  %84 = load i64, i64* @RTAX_DST, align 8
  %85 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %14, i64 %84
  %86 = load %struct.sockaddr*, %struct.sockaddr** %85, align 8
  %87 = load i64, i64* @RTAX_NETMASK, align 8
  %88 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %14, i64 %87
  %89 = load %struct.sockaddr*, %struct.sockaddr** %88, align 8
  %90 = call i32 @mib_sroute_process(%struct.rt_msghdr* %80, %struct.sockaddr* %83, %struct.sockaddr* %86, %struct.sockaddr* %89)
  br label %91

91:                                               ; preds = %72, %71
  %92 = load %struct.rt_msghdr*, %struct.rt_msghdr** %7, align 8
  %93 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.sroute*, %struct.sroute** %3, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds %struct.sroute, %struct.sroute* %95, i64 %96
  store %struct.sroute* %97, %struct.sroute** %3, align 8
  br label %49

98:                                               ; preds = %49
  %99 = load %struct.sroute*, %struct.sroute** %2, align 8
  %100 = call i32 @free(%struct.sroute* %99)
  %101 = call i64 (...) @get_ticks()
  store i64 %101, i64* @route_tick, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %102

102:                                              ; preds = %98, %45, %23
  %103 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %1, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sroute* @RB_MIN(i32, i32*) #2

declare dso_local %struct.sroute* @RB_NEXT(i32, i32*, %struct.sroute*) #2

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.sroute*) #2

declare dso_local i32 @free(%struct.sroute*) #2

declare dso_local %struct.sroute* @mib_fetch_rtab(i32, i32, i32, i64*) #2

declare dso_local i32 @mib_extract_addrs(i32, %struct.sroute*, %struct.sockaddr**) #2

declare dso_local i32 @mib_sroute_process(%struct.rt_msghdr*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*) #2

declare dso_local i64 @get_ticks(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
