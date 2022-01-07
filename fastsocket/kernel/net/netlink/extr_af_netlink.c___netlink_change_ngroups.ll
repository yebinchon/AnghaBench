; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c___netlink_change_ngroups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c___netlink_change_ngroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_table = type { i32, i64* }
%struct.sock = type { i64 }
%struct.listeners_rcu_head = type { i64*, i32 }

@nl_table = common dso_local global %struct.netlink_table* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@netlink_free_old_listeners = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__netlink_change_ngroups(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.listeners_rcu_head*, align 8
  %9 = alloca %struct.netlink_table*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* null, i64** %7, align 8
  %10 = load %struct.netlink_table*, %struct.netlink_table** @nl_table, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.netlink_table, %struct.netlink_table* %10, i64 %13
  store %struct.netlink_table* %14, %struct.netlink_table** %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, 32
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 32, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %2
  %19 = load %struct.netlink_table*, %struct.netlink_table** %9, align 8
  %20 = getelementptr inbounds %struct.netlink_table, %struct.netlink_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @NLGRPSZ(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @NLGRPSZ(i32 %23)
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @NLGRPSZ(i32 %27)
  %29 = add i64 %28, 16
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call i64* @kzalloc(i64 %29, i32 %30)
  store i64* %31, i64** %6, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %75

37:                                               ; preds = %26
  %38 = load %struct.netlink_table*, %struct.netlink_table** %9, align 8
  %39 = getelementptr inbounds %struct.netlink_table, %struct.netlink_table* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  store i64* %40, i64** %7, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = load %struct.netlink_table*, %struct.netlink_table** %9, align 8
  %44 = getelementptr inbounds %struct.netlink_table, %struct.netlink_table* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @NLGRPSZ(i32 %45)
  %47 = call i32 @memcpy(i64* %41, i64* %42, i64 %46)
  %48 = load %struct.netlink_table*, %struct.netlink_table** %9, align 8
  %49 = getelementptr inbounds %struct.netlink_table, %struct.netlink_table* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64*, i64** %6, align 8
  %52 = call i32 @rcu_assign_pointer(i64* %50, i64* %51)
  %53 = load %struct.netlink_table*, %struct.netlink_table** %9, align 8
  %54 = getelementptr inbounds %struct.netlink_table, %struct.netlink_table* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.netlink_table*, %struct.netlink_table** %9, align 8
  %57 = getelementptr inbounds %struct.netlink_table, %struct.netlink_table* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @NLGRPLONGS(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %55, i64 %60
  %62 = bitcast i64* %61 to i8*
  %63 = bitcast i8* %62 to %struct.listeners_rcu_head*
  store %struct.listeners_rcu_head* %63, %struct.listeners_rcu_head** %8, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = load %struct.listeners_rcu_head*, %struct.listeners_rcu_head** %8, align 8
  %66 = getelementptr inbounds %struct.listeners_rcu_head, %struct.listeners_rcu_head* %65, i32 0, i32 0
  store i64* %64, i64** %66, align 8
  %67 = load %struct.listeners_rcu_head*, %struct.listeners_rcu_head** %8, align 8
  %68 = getelementptr inbounds %struct.listeners_rcu_head, %struct.listeners_rcu_head* %67, i32 0, i32 1
  %69 = load i32, i32* @netlink_free_old_listeners, align 4
  %70 = call i32 @call_rcu(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %37, %18
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.netlink_table*, %struct.netlink_table** %9, align 8
  %74 = getelementptr inbounds %struct.netlink_table, %struct.netlink_table* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %34
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @NLGRPSZ(i32) #1

declare dso_local i64* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @rcu_assign_pointer(i64*, i64*) #1

declare dso_local i32 @NLGRPLONGS(i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
