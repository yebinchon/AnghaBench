; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_set_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@VIRTIO_NET_F_MRG_RXBUF = common dso_local global i32 0, align 4
@VHOST_NET_F_VIRTIO_NET_HDR = common dso_local global i32 0, align 4
@VHOST_F_LOG_ALL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VHOST_NET_VQ_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_net*, i32)* @vhost_net_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_net_set_features(%struct.vhost_net* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vhost_net* %0, %struct.vhost_net** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @VIRTIO_NET_F_MRG_RXBUF, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i64 4, i64 4
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @VHOST_NET_F_VIRTIO_NET_HDR, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %26

24:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %28 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VHOST_F_LOG_ALL, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %38 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %37, i32 0, i32 0
  %39 = call i32 @vhost_log_access_ok(%struct.TYPE_4__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %43 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %101

48:                                               ; preds = %36, %26
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %51 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = call i32 (...) @smp_wmb()
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %91, %48
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @VHOST_NET_VQ_MAX, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %60 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %69 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i64 %67, i64* %74, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %77 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i64 %75, i64* %82, align 8
  %83 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %84 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = call i32 @mutex_unlock(i32* %89)
  br label %91

91:                                               ; preds = %58
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %54

94:                                               ; preds = %54
  %95 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %96 = call i32 @vhost_net_flush(%struct.vhost_net* %95)
  %97 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %98 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %41
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vhost_log_access_ok(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @vhost_net_flush(%struct.vhost_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
