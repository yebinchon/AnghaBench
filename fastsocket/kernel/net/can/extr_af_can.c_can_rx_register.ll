; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_af_can.c_can_rx_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_af_can.c_can_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.sk_buff = type opaque
%struct.receiver = type { void (%struct.sk_buff.0*, i8*)*, i8*, i32, i8*, i64, i8*, i8* }
%struct.sk_buff.0 = type opaque
%struct.hlist_head = type { i32 }
%struct.dev_rcv_lists = type { i32 }

@rcv_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@can_rcvlists_lock = common dso_local global i32 0, align 4
@can_pstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_rx_register(%struct.net_device* %0, i8* %1, i8* %2, void (%struct.sk_buff*, i8*)* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca void (%struct.sk_buff*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.receiver*, align 8
  %15 = alloca %struct.hlist_head*, align 8
  %16 = alloca %struct.dev_rcv_lists*, align 8
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store void (%struct.sk_buff*, i8*)* %3, void (%struct.sk_buff*, i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @rcv_cache, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.receiver* @kmem_cache_alloc(i32 %18, i32 %19)
  store %struct.receiver* %20, %struct.receiver** %14, align 8
  %21 = load %struct.receiver*, %struct.receiver** %14, align 8
  %22 = icmp ne %struct.receiver* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %78

26:                                               ; preds = %6
  %27 = call i32 @spin_lock(i32* @can_rcvlists_lock)
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = call %struct.dev_rcv_lists* @find_dev_rcv_lists(%struct.net_device* %28)
  store %struct.dev_rcv_lists* %29, %struct.dev_rcv_lists** %16, align 8
  %30 = load %struct.dev_rcv_lists*, %struct.dev_rcv_lists** %16, align 8
  %31 = icmp ne %struct.dev_rcv_lists* %30, null
  br i1 %31, label %32, label %69

32:                                               ; preds = %26
  %33 = load %struct.dev_rcv_lists*, %struct.dev_rcv_lists** %16, align 8
  %34 = call %struct.hlist_head* @find_rcv_list(i8** %9, i8** %10, %struct.dev_rcv_lists* %33)
  store %struct.hlist_head* %34, %struct.hlist_head** %15, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.receiver*, %struct.receiver** %14, align 8
  %37 = getelementptr inbounds %struct.receiver, %struct.receiver* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.receiver*, %struct.receiver** %14, align 8
  %40 = getelementptr inbounds %struct.receiver, %struct.receiver* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load %struct.receiver*, %struct.receiver** %14, align 8
  %42 = getelementptr inbounds %struct.receiver, %struct.receiver* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load void (%struct.sk_buff*, i8*)*, void (%struct.sk_buff*, i8*)** %11, align 8
  %44 = bitcast void (%struct.sk_buff*, i8*)* %43 to void (%struct.sk_buff.0*, i8*)*
  %45 = load %struct.receiver*, %struct.receiver** %14, align 8
  %46 = getelementptr inbounds %struct.receiver, %struct.receiver* %45, i32 0, i32 0
  store void (%struct.sk_buff.0*, i8*)* %44, void (%struct.sk_buff.0*, i8*)** %46, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.receiver*, %struct.receiver** %14, align 8
  %49 = getelementptr inbounds %struct.receiver, %struct.receiver* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load %struct.receiver*, %struct.receiver** %14, align 8
  %52 = getelementptr inbounds %struct.receiver, %struct.receiver* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.receiver*, %struct.receiver** %14, align 8
  %54 = getelementptr inbounds %struct.receiver, %struct.receiver* %53, i32 0, i32 2
  %55 = load %struct.hlist_head*, %struct.hlist_head** %15, align 8
  %56 = call i32 @hlist_add_head_rcu(i32* %54, %struct.hlist_head* %55)
  %57 = load %struct.dev_rcv_lists*, %struct.dev_rcv_lists** %16, align 8
  %58 = getelementptr inbounds %struct.dev_rcv_lists, %struct.dev_rcv_lists* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_pstats, i32 0, i32 0), align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_pstats, i32 0, i32 0), align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_pstats, i32 0, i32 1), align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_pstats, i32 0, i32 0), align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %32
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_pstats, i32 0, i32 0), align 8
  store i64 %67, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_pstats, i32 0, i32 1), align 8
  br label %68

68:                                               ; preds = %66, %32
  br label %75

69:                                               ; preds = %26
  %70 = load i32, i32* @rcv_cache, align 4
  %71 = load %struct.receiver*, %struct.receiver** %14, align 8
  %72 = call i32 @kmem_cache_free(i32 %70, %struct.receiver* %71)
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %69, %68
  %76 = call i32 @spin_unlock(i32* @can_rcvlists_lock)
  %77 = load i32, i32* %17, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %23
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local %struct.receiver* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dev_rcv_lists* @find_dev_rcv_lists(%struct.net_device*) #1

declare dso_local %struct.hlist_head* @find_rcv_list(i8**, i8**, %struct.dev_rcv_lists*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.receiver*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
