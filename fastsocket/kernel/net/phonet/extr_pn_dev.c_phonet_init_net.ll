; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pn_dev.c_phonet_init_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pn_dev.c_phonet_init_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.phonet_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"phonet\00", align 1
@pn_sock_seq_fops = common dso_local global i32 0, align 4
@phonet_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @phonet_init_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phonet_init_net(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.phonet_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.phonet_net* @kmalloc(i32 8, i32 %5)
  store %struct.phonet_net* %6, %struct.phonet_net** %4, align 8
  %7 = load %struct.phonet_net*, %struct.phonet_net** %4, align 8
  %8 = icmp ne %struct.phonet_net* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.net*, %struct.net** %3, align 8
  %14 = call i32 @proc_net_fops_create(%struct.net* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32* @pn_sock_seq_fops)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load %struct.phonet_net*, %struct.phonet_net** %4, align 8
  %18 = call i32 @kfree(%struct.phonet_net* %17)
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %12
  %22 = load %struct.phonet_net*, %struct.phonet_net** %4, align 8
  %23 = getelementptr inbounds %struct.phonet_net, %struct.phonet_net* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.phonet_net*, %struct.phonet_net** %4, align 8
  %27 = getelementptr inbounds %struct.phonet_net, %struct.phonet_net* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.net*, %struct.net** %3, align 8
  %31 = load i32, i32* @phonet_net_id, align 4
  %32 = load %struct.phonet_net*, %struct.phonet_net** %4, align 8
  %33 = call i32 @net_assign_generic(%struct.net* %30, i32 %31, %struct.phonet_net* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %21, %16, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.phonet_net* @kmalloc(i32, i32) #1

declare dso_local i32 @proc_net_fops_create(%struct.net*, i8*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.phonet_net*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @net_assign_generic(%struct.net*, i32, %struct.phonet_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
