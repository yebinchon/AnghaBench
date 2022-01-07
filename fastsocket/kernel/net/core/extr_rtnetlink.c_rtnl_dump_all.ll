; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_dump_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_dump_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (%struct.sk_buff*, %struct.netlink_callback*)* }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RTNL_FAMILY_MAX = common dso_local global i32 0, align 4
@RTM_BASE = common dso_local global i32 0, align 4
@PF_PACKET = common dso_local global i32 0, align 4
@rtnl_msg_handlers = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @rtnl_dump_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_dump_all(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %8 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %9 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %2
  store i32 1, i32* %5, align 4
  br label %15

15:                                               ; preds = %82, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @RTNL_FAMILY_MAX, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %85

19:                                               ; preds = %15
  %20 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %21 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RTM_BASE, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PF_PACKET, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %19
  br label %82

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @rtnl_msg_handlers, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp eq %struct.TYPE_4__* %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @rtnl_msg_handlers, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64 (%struct.sk_buff*, %struct.netlink_callback*)*, i64 (%struct.sk_buff*, %struct.netlink_callback*)** %51, align 8
  %53 = icmp eq i64 (%struct.sk_buff*, %struct.netlink_callback*)* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %42, %35
  br label %82

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %61 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = call i32 @memset(i32* %63, i32 0, i32 8)
  br label %65

65:                                               ; preds = %59, %55
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @rtnl_msg_handlers, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %66, i64 %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64 (%struct.sk_buff*, %struct.netlink_callback*)*, i64 (%struct.sk_buff*, %struct.netlink_callback*)** %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %78 = call i64 %75(%struct.sk_buff* %76, %struct.netlink_callback* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %85

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %54, %34
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %15

85:                                               ; preds = %80, %15
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %88 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  ret i32 %91
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
