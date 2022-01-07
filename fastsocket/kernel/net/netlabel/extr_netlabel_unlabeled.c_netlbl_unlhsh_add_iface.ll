; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_add_iface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_add_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_unlhsh_iface = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@netlbl_unlhsh_lock = common dso_local global i32 0, align 4
@netlbl_unlhsh = common dso_local global i32 0, align 4
@netlbl_unlhsh_def = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netlbl_unlhsh_iface* (i32)* @netlbl_unlhsh_add_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netlbl_unlhsh_iface* @netlbl_unlhsh_add_iface(i32 %0) #0 {
  %2 = alloca %struct.netlbl_unlhsh_iface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.netlbl_unlhsh_iface*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.netlbl_unlhsh_iface* @kzalloc(i32 24, i32 %6)
  store %struct.netlbl_unlhsh_iface* %7, %struct.netlbl_unlhsh_iface** %5, align 8
  %8 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %9 = icmp eq %struct.netlbl_unlhsh_iface* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.netlbl_unlhsh_iface* null, %struct.netlbl_unlhsh_iface** %2, align 8
  br label %65

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %14 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %16 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %15, i32 0, i32 5
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %19 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %18, i32 0, i32 4
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %22 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %24 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %23, i32 0, i32 3
  %25 = call i32 @INIT_RCU_HEAD(i32* %24)
  %26 = call i32 @spin_lock(i32* @netlbl_unlhsh_lock)
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %11
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @netlbl_unlhsh_hash(i32 %30)
  store i64 %31, i64* %4, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32* @netlbl_unlhsh_search_iface(i32 %32)
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %61

36:                                               ; preds = %29
  %37 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %38 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %37, i32 0, i32 2
  %39 = load i32, i32* @netlbl_unlhsh, align 4
  %40 = call %struct.TYPE_2__* @rcu_dereference(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = call i32 @list_add_tail_rcu(i32* %38, i32* %44)
  br label %58

46:                                               ; preds = %11
  %47 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %48 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %47, i32 0, i32 2
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load i32, i32* @netlbl_unlhsh_def, align 4
  %51 = call %struct.TYPE_2__* @rcu_dereference(i32 %50)
  %52 = icmp ne %struct.TYPE_2__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %61

54:                                               ; preds = %46
  %55 = load i32, i32* @netlbl_unlhsh_def, align 4
  %56 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %57 = call i32 @rcu_assign_pointer(i32 %55, %struct.netlbl_unlhsh_iface* %56)
  br label %58

58:                                               ; preds = %54, %36
  %59 = call i32 @spin_unlock(i32* @netlbl_unlhsh_lock)
  %60 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  store %struct.netlbl_unlhsh_iface* %60, %struct.netlbl_unlhsh_iface** %2, align 8
  br label %65

61:                                               ; preds = %53, %35
  %62 = call i32 @spin_unlock(i32* @netlbl_unlhsh_lock)
  %63 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %64 = call i32 @kfree(%struct.netlbl_unlhsh_iface* %63)
  store %struct.netlbl_unlhsh_iface* null, %struct.netlbl_unlhsh_iface** %2, align 8
  br label %65

65:                                               ; preds = %61, %58, %10
  %66 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %2, align 8
  ret %struct.netlbl_unlhsh_iface* %66
}

declare dso_local %struct.netlbl_unlhsh_iface* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_RCU_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @netlbl_unlhsh_hash(i32) #1

declare dso_local i32* @netlbl_unlhsh_search_iface(i32) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.netlbl_unlhsh_iface*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.netlbl_unlhsh_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
