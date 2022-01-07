; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_log.c_instance_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_log.c_instance_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfulnl_instance = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@instances_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@nfulnl_timer = common dso_local global i32 0, align 4
@NFULNL_QTHRESH_DEFAULT = common dso_local global i32 0, align 4
@NFULNL_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@NFULNL_NLBUFSIZ_DEFAULT = common dso_local global i32 0, align 4
@NFULNL_COPY_PACKET = common dso_local global i32 0, align 4
@NFULNL_COPY_RANGE_MAX = common dso_local global i32 0, align 4
@instance_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfulnl_instance* (i32, i32)* @instance_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfulnl_instance* @instance_create(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.nfulnl_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfulnl_instance*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call i32 @write_lock_bh(i32* @instances_lock)
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @__instance_lookup(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EEXIST, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %78

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.nfulnl_instance* @kzalloc(i32 44, i32 %16)
  store %struct.nfulnl_instance* %17, %struct.nfulnl_instance** %6, align 8
  %18 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %19 = icmp ne %struct.nfulnl_instance* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %78

23:                                               ; preds = %15
  %24 = load i32, i32* @THIS_MODULE, align 4
  %25 = call i32 @try_module_get(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %29 = call i32 @kfree(%struct.nfulnl_instance* %28)
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %78

32:                                               ; preds = %23
  %33 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %34 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %33, i32 0, i32 1
  %35 = call i32 @INIT_HLIST_NODE(i32* %34)
  %36 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %37 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %36, i32 0, i32 10
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %40 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %39, i32 0, i32 9
  %41 = call i32 @atomic_set(i32* %40, i32 2)
  %42 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %43 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %42, i32 0, i32 8
  %44 = load i32, i32* @nfulnl_timer, align 4
  %45 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %46 = ptrtoint %struct.nfulnl_instance* %45 to i64
  %47 = call i32 @setup_timer(i32* %43, i32 %44, i64 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %50 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %53 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @NFULNL_QTHRESH_DEFAULT, align 4
  %55 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %56 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @NFULNL_TIMEOUT_DEFAULT, align 4
  %58 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %59 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @NFULNL_NLBUFSIZ_DEFAULT, align 4
  %61 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %62 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @NFULNL_COPY_PACKET, align 4
  %64 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %65 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @NFULNL_COPY_RANGE_MAX, align 4
  %67 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %68 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  %70 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %69, i32 0, i32 1
  %71 = load i32*, i32** @instance_table, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @instance_hashfn(i32 %72)
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @hlist_add_head(i32* %70, i32* %74)
  %76 = call i32 @write_unlock_bh(i32* @instances_lock)
  %77 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %6, align 8
  store %struct.nfulnl_instance* %77, %struct.nfulnl_instance** %3, align 8
  br label %82

78:                                               ; preds = %27, %20, %12
  %79 = call i32 @write_unlock_bh(i32* @instances_lock)
  %80 = load i32, i32* %7, align 4
  %81 = call %struct.nfulnl_instance* @ERR_PTR(i32 %80)
  store %struct.nfulnl_instance* %81, %struct.nfulnl_instance** %3, align 8
  br label %82

82:                                               ; preds = %78, %32
  %83 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %3, align 8
  ret %struct.nfulnl_instance* %83
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @__instance_lookup(i32) #1

declare dso_local %struct.nfulnl_instance* @kzalloc(i32, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @kfree(%struct.nfulnl_instance*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i64 @instance_hashfn(i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local %struct.nfulnl_instance* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
