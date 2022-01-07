; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_dump_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_dump_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32 }
%struct.rt6_rtnl_dump_arg = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rtmsg = type { i32 }
%struct.TYPE_7__ = type { i32 }

@RTM_F_PREFIX = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt6_dump_route(%struct.rt6_info* %0, i8* %1) #0 {
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rt6_rtnl_dump_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtmsg*, align 8
  %8 = alloca %struct.TYPE_7__, align 4
  store %struct.rt6_info* %0, %struct.rt6_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rt6_rtnl_dump_arg*
  store %struct.rt6_rtnl_dump_arg* %10, %struct.rt6_rtnl_dump_arg** %5, align 8
  %11 = load %struct.rt6_rtnl_dump_arg*, %struct.rt6_rtnl_dump_arg** %5, align 8
  %12 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, %struct.rt6_rtnl_dump_arg* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = call i32 @nlmsg_len(%struct.TYPE_6__* %15)
  %17 = sext i32 %16 to i64
  %18 = icmp uge i64 %17, 4
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.rt6_rtnl_dump_arg*, %struct.rt6_rtnl_dump_arg** %5, align 8
  %21 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, %struct.rt6_rtnl_dump_arg* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call %struct.rtmsg* @nlmsg_data(%struct.TYPE_6__* %24)
  store %struct.rtmsg* %25, %struct.rtmsg** %7, align 8
  %26 = load %struct.rtmsg*, %struct.rtmsg** %7, align 8
  %27 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RTM_F_PREFIX, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  br label %34

33:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.rt6_rtnl_dump_arg*, %struct.rt6_rtnl_dump_arg** %5, align 8
  %36 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, %struct.rt6_rtnl_dump_arg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rt6_rtnl_dump_arg*, %struct.rt6_rtnl_dump_arg** %5, align 8
  %39 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, %struct.rt6_rtnl_dump_arg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %42 = load i32, i32* @RTM_NEWROUTE, align 4
  %43 = load %struct.rt6_rtnl_dump_arg*, %struct.rt6_rtnl_dump_arg** %5, align 8
  %44 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, %struct.rt6_rtnl_dump_arg* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @NETLINK_CB(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rt6_rtnl_dump_arg*, %struct.rt6_rtnl_dump_arg** %5, align 8
  %53 = getelementptr inbounds %struct.rt6_rtnl_dump_arg, %struct.rt6_rtnl_dump_arg* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @NLM_F_MULTI, align 4
  %61 = call i32 @rt6_fill_node(i32 %37, i32 %40, %struct.rt6_info* %41, i32* null, i32* null, i32 0, i32 %42, i32 %51, i32 %58, i32 %59, i32 0, i32 %60)
  ret i32 %61
}

declare dso_local i32 @nlmsg_len(%struct.TYPE_6__*) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.TYPE_6__*) #1

declare dso_local i32 @rt6_fill_node(i32, i32, %struct.rt6_info*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
