; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netdev_create_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netdev_create_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }

@NETDEV_HASHENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* ()* @netdev_create_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @netdev_create_hash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hlist_head*, align 8
  %3 = load i32, i32* @NETDEV_HASHENTRIES, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 4, %4
  %6 = trunc i64 %5 to i32
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.hlist_head* @kmalloc(i32 %6, i32 %7)
  store %struct.hlist_head* %8, %struct.hlist_head** %2, align 8
  %9 = load %struct.hlist_head*, %struct.hlist_head** %2, align 8
  %10 = icmp ne %struct.hlist_head* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %22, %11
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @NETDEV_HASHENTRIES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.hlist_head*, %struct.hlist_head** %2, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %17, i64 %19
  %21 = call i32 @INIT_HLIST_HEAD(%struct.hlist_head* %20)
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %12

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %0
  %27 = load %struct.hlist_head*, %struct.hlist_head** %2, align 8
  ret %struct.hlist_head* %27
}

declare dso_local %struct.hlist_head* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(%struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
