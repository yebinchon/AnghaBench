; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_qdisc_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_qdisc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32, %struct.netdev_queue*, i32, i32, %struct.Qdisc_ops*, i32, i32 }
%struct.netdev_queue = type { i32 }
%struct.Qdisc_ops = type { i32, i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@QDISC_ALIGNTO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Qdisc* @qdisc_alloc(%struct.netdev_queue* %0, %struct.Qdisc_ops* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  %5 = alloca %struct.Qdisc_ops*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.netdev_queue* %0, %struct.netdev_queue** %4, align 8
  store %struct.Qdisc_ops* %1, %struct.Qdisc_ops** %5, align 8
  %10 = load i32, i32* @ENOBUFS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = call i32 @QDISC_ALIGN(i64 40)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %5, align 8
  %14 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @QDISC_ALIGNTO, align 4
  %17 = sub nsw i32 %16, 1
  %18 = add nsw i32 %15, %17
  %19 = load i32, i32* %8, align 4
  %20 = add i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %71

27:                                               ; preds = %2
  %28 = load i8*, i8** %6, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = call i32 @QDISC_ALIGN(i64 %29)
  %31 = zext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.Qdisc*
  store %struct.Qdisc* %32, %struct.Qdisc** %7, align 8
  %33 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %34 = bitcast %struct.Qdisc* %33 to i8*
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %41 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %43 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %42, i32 0, i32 7
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %46 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %45, i32 0, i32 6
  %47 = call i32 @skb_queue_head_init(i32* %46)
  %48 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %5, align 8
  %49 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %50 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %49, i32 0, i32 5
  store %struct.Qdisc_ops* %48, %struct.Qdisc_ops** %50, align 8
  %51 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %5, align 8
  %52 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %55 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %5, align 8
  %57 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %60 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %62 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %63 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %62, i32 0, i32 2
  store %struct.netdev_queue* %61, %struct.netdev_queue** %63, align 8
  %64 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %65 = call i32 @qdisc_dev(%struct.Qdisc* %64)
  %66 = call i32 @dev_hold(i32 %65)
  %67 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %68 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %67, i32 0, i32 1
  %69 = call i32 @atomic_set(i32* %68, i32 1)
  %70 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  store %struct.Qdisc* %70, %struct.Qdisc** %3, align 8
  br label %74

71:                                               ; preds = %26
  %72 = load i32, i32* %9, align 4
  %73 = call %struct.Qdisc* @ERR_PTR(i32 %72)
  store %struct.Qdisc* %73, %struct.Qdisc** %3, align 8
  br label %74

74:                                               ; preds = %71, %27
  %75 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  ret %struct.Qdisc* %75
}

declare dso_local i32 @QDISC_ALIGN(i64) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @dev_hold(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.Qdisc* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
