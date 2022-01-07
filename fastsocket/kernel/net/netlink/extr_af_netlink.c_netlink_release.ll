; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i32* }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.netlink_sock = type { i32*, i64, i32, i64, i32 }
%struct.netlink_notify = type { i64, i64, i32 }

@netlink_chain = common dso_local global i32 0, align 4
@NETLINK_URELEASE = common dso_local global i32 0, align 4
@nl_table = common dso_local global %struct.TYPE_2__* null, align 8
@netlink_proto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @netlink_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.netlink_sock*, align 8
  %6 = alloca %struct.netlink_notify, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = icmp ne %struct.sock* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %126

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @netlink_remove(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i32 @sock_orphan(%struct.sock* %16)
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %18)
  store %struct.netlink_sock* %19, %struct.netlink_sock** %5, align 8
  %20 = load %struct.socket*, %struct.socket** %3, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %21, align 8
  %22 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %23 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %22, i32 0, i32 4
  %24 = call i32 @wake_up_interruptible_all(i32* %23)
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = call i32 @skb_queue_purge(i32* %26)
  %28 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %29 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %13
  %33 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %34 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %6, i32 0, i32 0
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %38, align 8
  %42 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %6, i32 0, i32 1
  %43 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %44 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %42, align 8
  %46 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %6, i32 0, i32 2
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = call i32 @sock_net(%struct.sock* %47)
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @NETLINK_URELEASE, align 4
  %50 = call i32 @atomic_notifier_call_chain(i32* @netlink_chain, i32 %49, %struct.netlink_notify* %6)
  br label %51

51:                                               ; preds = %37, %32, %13
  %52 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %53 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @module_put(i32 %54)
  %56 = call i32 (...) @netlink_table_grab()
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = call i64 @netlink_is_kernel(%struct.sock* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %51
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* %76, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %60
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @kfree(i32* %87)
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %90 = load %struct.sock*, %struct.sock** %4, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32* null, i32** %94, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %96 = load %struct.sock*, %struct.sock** %4, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %80, %60
  br label %111

102:                                              ; preds = %51
  %103 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %104 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.sock*, %struct.sock** %4, align 8
  %109 = call i32 @netlink_update_listeners(%struct.sock* %108)
  br label %110

110:                                              ; preds = %107, %102
  br label %111

111:                                              ; preds = %110, %101
  %112 = call i32 (...) @netlink_table_ungrab()
  %113 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %114 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @kfree(i32* %115)
  %117 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %118 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  %119 = call i32 (...) @local_bh_disable()
  %120 = load %struct.sock*, %struct.sock** %4, align 8
  %121 = call i32 @sock_net(%struct.sock* %120)
  %122 = call i32 @sock_prot_inuse_add(i32 %121, i32* @netlink_proto, i32 -1)
  %123 = call i32 (...) @local_bh_enable()
  %124 = load %struct.sock*, %struct.sock** %4, align 8
  %125 = call i32 @sock_put(%struct.sock* %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %111, %12
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @netlink_remove(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.netlink_notify*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @netlink_table_grab(...) #1

declare dso_local i64 @netlink_is_kernel(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @netlink_update_listeners(%struct.sock*) #1

declare dso_local i32 @netlink_table_ungrab(...) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @sock_prot_inuse_add(i32, i32*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
