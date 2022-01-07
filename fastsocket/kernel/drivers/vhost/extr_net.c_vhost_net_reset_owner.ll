; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_reset_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_reset_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.socket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vhost_net*)* @vhost_net_reset_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vhost_net_reset_owner(%struct.vhost_net* %0) #0 {
  %2 = alloca %struct.vhost_net*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i64, align 8
  store %struct.vhost_net* %0, %struct.vhost_net** %2, align 8
  store %struct.socket* null, %struct.socket** %3, align 8
  store %struct.socket* null, %struct.socket** %4, align 8
  %6 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %7 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %11 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %10, i32 0, i32 0
  %12 = call i64 @vhost_dev_check_owner(%struct.TYPE_3__* %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %18 = call i32 @vhost_net_stop(%struct.vhost_net* %17, %struct.socket** %3, %struct.socket** %4)
  %19 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %20 = call i32 @vhost_net_flush(%struct.vhost_net* %19)
  %21 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %22 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %21, i32 0, i32 0
  %23 = call i64 @vhost_dev_reset_owner(%struct.TYPE_3__* %22)
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %16, %15
  %25 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %26 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.socket*, %struct.socket** %3, align 8
  %30 = icmp ne %struct.socket* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @fput(i32 %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.socket*, %struct.socket** %4, align 8
  %38 = icmp ne %struct.socket* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.socket*, %struct.socket** %4, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fput(i32 %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vhost_dev_check_owner(%struct.TYPE_3__*) #1

declare dso_local i32 @vhost_net_stop(%struct.vhost_net*, %struct.socket**, %struct.socket**) #1

declare dso_local i32 @vhost_net_flush(%struct.vhost_net*) #1

declare dso_local i64 @vhost_dev_reset_owner(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
