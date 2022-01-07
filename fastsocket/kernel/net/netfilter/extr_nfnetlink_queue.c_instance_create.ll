; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_queue.c_instance_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_queue.c_instance_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfqnl_instance = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@instances_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFQNL_QMAX_DEFAULT = common dso_local global i32 0, align 4
@NFQNL_COPY_NONE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@instance_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfqnl_instance* (i32, i32)* @instance_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfqnl_instance* @instance_create(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.nfqnl_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfqnl_instance*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = call i32 @spin_lock(i32* @instances_lock)
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @instance_lookup(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EEXIST, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  br label %69

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.nfqnl_instance* @kzalloc(i32 36, i32 %17)
  store %struct.nfqnl_instance* %18, %struct.nfqnl_instance** %6, align 8
  %19 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %20 = icmp ne %struct.nfqnl_instance* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %69

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %27 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %30 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @NFQNL_QMAX_DEFAULT, align 4
  %32 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %33 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %35 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %34, i32 0, i32 1
  store i32 1048575, i32* %35, align 4
  %36 = load i32, i32* @NFQNL_COPY_NONE, align 4
  %37 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %38 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %40 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %39, i32 0, i32 5
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %43 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %42, i32 0, i32 4
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %46 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %45, i32 0, i32 3
  %47 = call i32 @INIT_RCU_HEAD(i32* %46)
  %48 = load i32, i32* @THIS_MODULE, align 4
  %49 = call i32 @try_module_get(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %24
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %66

54:                                               ; preds = %24
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @instance_hashfn(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %58 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %57, i32 0, i32 2
  %59 = load i32*, i32** @instance_table, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @hlist_add_head_rcu(i32* %58, i32* %62)
  %64 = call i32 @spin_unlock(i32* @instances_lock)
  %65 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  store %struct.nfqnl_instance* %65, %struct.nfqnl_instance** %3, align 8
  br label %73

66:                                               ; preds = %51
  %67 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %68 = call i32 @kfree(%struct.nfqnl_instance* %67)
  br label %69

69:                                               ; preds = %66, %21, %13
  %70 = call i32 @spin_unlock(i32* @instances_lock)
  %71 = load i32, i32* %8, align 4
  %72 = call %struct.nfqnl_instance* @ERR_PTR(i32 %71)
  store %struct.nfqnl_instance* %72, %struct.nfqnl_instance** %3, align 8
  br label %73

73:                                               ; preds = %69, %54
  %74 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %3, align 8
  ret %struct.nfqnl_instance* %74
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @instance_lookup(i32) #1

declare dso_local %struct.nfqnl_instance* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_RCU_HEAD(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @instance_hashfn(i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.nfqnl_instance*) #1

declare dso_local %struct.nfqnl_instance* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
