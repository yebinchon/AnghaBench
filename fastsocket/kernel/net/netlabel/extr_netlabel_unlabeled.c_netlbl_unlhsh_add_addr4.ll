; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_add_addr4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_add_addr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_unlhsh_iface = type { i32 }
%struct.in_addr = type { i32 }
%struct.netlbl_unlhsh_addr4 = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@netlbl_unlhsh_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlbl_unlhsh_iface*, %struct.in_addr*, %struct.in_addr*, i32)* @netlbl_unlhsh_add_addr4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_unlhsh_add_addr4(%struct.netlbl_unlhsh_iface* %0, %struct.in_addr* %1, %struct.in_addr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlbl_unlhsh_iface*, align 8
  %7 = alloca %struct.in_addr*, align 8
  %8 = alloca %struct.in_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlbl_unlhsh_addr4*, align 8
  store %struct.netlbl_unlhsh_iface* %0, %struct.netlbl_unlhsh_iface** %6, align 8
  store %struct.in_addr* %1, %struct.in_addr** %7, align 8
  store %struct.in_addr* %2, %struct.in_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.netlbl_unlhsh_addr4* @kzalloc(i32 20, i32 %12)
  store %struct.netlbl_unlhsh_addr4* %13, %struct.netlbl_unlhsh_addr4** %11, align 8
  %14 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %11, align 8
  %15 = icmp eq %struct.netlbl_unlhsh_addr4* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %59

19:                                               ; preds = %4
  %20 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %11, align 8
  %28 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, %struct.netlbl_unlhsh_addr4* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %31 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %11, align 8
  %34 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, %struct.netlbl_unlhsh_addr4* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %11, align 8
  %37 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, %struct.netlbl_unlhsh_addr4* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 1, i32* %38, align 4
  %39 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %11, align 8
  %40 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, %struct.netlbl_unlhsh_addr4* %39, i32 0, i32 2
  %41 = call i32 @INIT_RCU_HEAD(i32* %40)
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %11, align 8
  %44 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, %struct.netlbl_unlhsh_addr4* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = call i32 @spin_lock(i32* @netlbl_unlhsh_lock)
  %46 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %11, align 8
  %47 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, %struct.netlbl_unlhsh_addr4* %46, i32 0, i32 0
  %48 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %6, align 8
  %49 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %48, i32 0, i32 0
  %50 = call i32 @netlbl_af4list_add(%struct.TYPE_2__* %47, i32* %49)
  store i32 %50, i32* %10, align 4
  %51 = call i32 @spin_unlock(i32* @netlbl_unlhsh_lock)
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %19
  %55 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %11, align 8
  %56 = call i32 @kfree(%struct.netlbl_unlhsh_addr4* %55)
  br label %57

57:                                               ; preds = %54, %19
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %16
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.netlbl_unlhsh_addr4* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_RCU_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netlbl_af4list_add(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.netlbl_unlhsh_addr4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
