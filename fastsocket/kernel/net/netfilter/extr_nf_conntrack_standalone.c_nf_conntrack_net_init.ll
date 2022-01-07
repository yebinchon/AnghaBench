; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_standalone.c_nf_conntrack_net_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_standalone.c_nf_conntrack_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @nf_conntrack_net_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_conntrack_net_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  %5 = load %struct.net*, %struct.net** %3, align 8
  %6 = call i32 @nf_conntrack_init(%struct.net* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = call i32 @nf_conntrack_standalone_init_proc(%struct.net* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %32

16:                                               ; preds = %10
  %17 = load %struct.net*, %struct.net** %3, align 8
  %18 = getelementptr inbounds %struct.net, %struct.net* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.net*, %struct.net** %3, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.net*, %struct.net** %3, align 8
  %24 = call i32 @nf_conntrack_standalone_init_sysctl(%struct.net* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %29

28:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %37

29:                                               ; preds = %27
  %30 = load %struct.net*, %struct.net** %3, align 8
  %31 = call i32 @nf_conntrack_standalone_fini_proc(%struct.net* %30)
  br label %32

32:                                               ; preds = %29, %15
  %33 = load %struct.net*, %struct.net** %3, align 8
  %34 = call i32 @nf_conntrack_cleanup(%struct.net* %33)
  br label %35

35:                                               ; preds = %32, %9
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @nf_conntrack_init(%struct.net*) #1

declare dso_local i32 @nf_conntrack_standalone_init_proc(%struct.net*) #1

declare dso_local i32 @nf_conntrack_standalone_init_sysctl(%struct.net*) #1

declare dso_local i32 @nf_conntrack_standalone_fini_proc(%struct.net*) #1

declare dso_local i32 @nf_conntrack_cleanup(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
