; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_leave_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_leave_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ip_mreqn = type { i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.inet_sock = type { %struct.ip_mc_socklist* }
%struct.ip_mc_socklist = type { i32, %struct.ip_mc_socklist*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.in_device = type { i32 }
%struct.net = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ip_mc_socklist_reclaim = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_mc_leave_group(%struct.sock* %0, %struct.ip_mreqn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.ip_mreqn*, align 8
  %6 = alloca %struct.inet_sock*, align 8
  %7 = alloca %struct.ip_mc_socklist*, align 8
  %8 = alloca %struct.ip_mc_socklist**, align 8
  %9 = alloca %struct.in_device*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.ip_mreqn* %1, %struct.ip_mreqn** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.inet_sock* @inet_sk(%struct.sock* %14)
  store %struct.inet_sock* %15, %struct.inet_sock** %6, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.net* @sock_net(%struct.sock* %16)
  store %struct.net* %17, %struct.net** %10, align 8
  %18 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %19 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* @EADDRNOTAVAIL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  %24 = call i32 (...) @rtnl_lock()
  %25 = load %struct.net*, %struct.net** %10, align 8
  %26 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %27 = call %struct.in_device* @ip_mc_find_dev(%struct.net* %25, %struct.ip_mreqn* %26)
  store %struct.in_device* %27, %struct.in_device** %9, align 8
  %28 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %29 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %32 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %31, i32 0, i32 0
  store %struct.ip_mc_socklist** %32, %struct.ip_mc_socklist*** %8, align 8
  br label %33

33:                                               ; preds = %103, %2
  %34 = load %struct.ip_mc_socklist**, %struct.ip_mc_socklist*** %8, align 8
  %35 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %34, align 8
  store %struct.ip_mc_socklist* %35, %struct.ip_mc_socklist** %7, align 8
  %36 = icmp ne %struct.ip_mc_socklist* %35, null
  br i1 %36, label %37, label %106

37:                                               ; preds = %33
  %38 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %7, align 8
  %39 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %103

46:                                               ; preds = %37
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %7, align 8
  %51 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %103

57:                                               ; preds = %49
  br label %77

58:                                               ; preds = %46
  %59 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %60 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %66 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %7, align 8
  %70 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %68, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %103

76:                                               ; preds = %64, %58
  br label %77

77:                                               ; preds = %76, %57
  %78 = load %struct.sock*, %struct.sock** %4, align 8
  %79 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %7, align 8
  %80 = load %struct.in_device*, %struct.in_device** %9, align 8
  %81 = call i32 @ip_mc_leave_src(%struct.sock* %78, %struct.ip_mc_socklist* %79, %struct.in_device* %80)
  %82 = load %struct.ip_mc_socklist**, %struct.ip_mc_socklist*** %8, align 8
  %83 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %82, align 8
  %84 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %7, align 8
  %85 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %84, i32 0, i32 1
  %86 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %85, align 8
  %87 = call i32 @rcu_assign_pointer(%struct.ip_mc_socklist* %83, %struct.ip_mc_socklist* %86)
  %88 = load %struct.in_device*, %struct.in_device** %9, align 8
  %89 = icmp ne %struct.in_device* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load %struct.in_device*, %struct.in_device** %9, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @ip_mc_dec_group(%struct.in_device* %91, i64 %92)
  br label %94

94:                                               ; preds = %90, %77
  %95 = call i32 (...) @rtnl_unlock()
  %96 = load %struct.sock*, %struct.sock** %4, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 0
  %98 = call i32 @atomic_sub(i32 40, i32* %97)
  %99 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %7, align 8
  %100 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %99, i32 0, i32 0
  %101 = load i32, i32* @ip_mc_socklist_reclaim, align 4
  %102 = call i32 @call_rcu(i32* %100, i32 %101)
  store i32 0, i32* %3, align 4
  br label %115

103:                                              ; preds = %75, %56, %45
  %104 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %7, align 8
  %105 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %104, i32 0, i32 1
  store %struct.ip_mc_socklist** %105, %struct.ip_mc_socklist*** %8, align 8
  br label %33

106:                                              ; preds = %33
  %107 = load %struct.in_device*, %struct.in_device** %9, align 8
  %108 = icmp ne %struct.in_device* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = call i32 (...) @rtnl_unlock()
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %94
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.in_device* @ip_mc_find_dev(%struct.net*, %struct.ip_mreqn*) #1

declare dso_local i32 @ip_mc_leave_src(%struct.sock*, %struct.ip_mc_socklist*, %struct.in_device*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.ip_mc_socklist*, %struct.ip_mc_socklist*) #1

declare dso_local i32 @ip_mc_dec_group(%struct.in_device*, i64) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
