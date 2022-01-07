; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c___ipv6_ifa_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c___ipv6_ifa_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { %struct.TYPE_8__*, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.inet6_ifaddr*)* @__ipv6_ifa_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipv6_ifa_notify(i32 %0, %struct.inet6_ifaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet6_ifaddr*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.inet6_ifaddr* %1, %struct.inet6_ifaddr** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %7
  %10 = phi i32 [ %5, %7 ], [ 128, %8 ]
  %11 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %12 = call i32 @inet6_ifa_notify(i32 %10, %struct.inet6_ifaddr* %11)
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %75 [
    i32 128, label %14
    i32 129, label %38
  ]

14:                                               ; preds = %9
  %15 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %16 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %23 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @ip6_ins_rt(%struct.TYPE_8__* %24)
  br label %26

26:                                               ; preds = %21, %14
  %27 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %28 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %36 = call i32 @addrconf_join_anycast(%struct.inet6_ifaddr* %35)
  br label %37

37:                                               ; preds = %34, %26
  br label %75

38:                                               ; preds = %9
  %39 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %40 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %39, i32 0, i32 2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %48 = call i32 @addrconf_leave_anycast(%struct.inet6_ifaddr* %47)
  br label %49

49:                                               ; preds = %46, %38
  %50 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %51 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %54 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %53, i32 0, i32 1
  %55 = call i32 @addrconf_leave_solict(%struct.TYPE_9__* %52, i32* %54)
  %56 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %57 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = call i32 @dst_hold(i32* %60)
  %62 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %63 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = call i32 @ip6_del_rt(%struct.TYPE_8__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %49
  %68 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %69 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @dst_free(i32* %72)
  br label %74

74:                                               ; preds = %67, %49
  br label %75

75:                                               ; preds = %9, %74, %37
  ret void
}

declare dso_local i32 @inet6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @ip6_ins_rt(%struct.TYPE_8__*) #1

declare dso_local i32 @addrconf_join_anycast(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_leave_anycast(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_leave_solict(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @dst_hold(i32*) #1

declare dso_local i32 @ip6_del_rt(%struct.TYPE_8__*) #1

declare dso_local i32 @dst_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
