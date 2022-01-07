; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_init_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_init_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ip6_tnl_net = type { i32, i32, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ip6_tnl_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ip6tnl0\00", align 1
@ip6_tnl_dev_setup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @ip6_tnl_init_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_tnl_init_net(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip6_tnl_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ip6_tnl_net* @kzalloc(i32 24, i32 %8)
  store %struct.ip6_tnl_net* %9, %struct.ip6_tnl_net** %5, align 8
  %10 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %11 = icmp eq %struct.ip6_tnl_net* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = load i32, i32* @ip6_tnl_net_id, align 4
  %16 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %17 = call i32 @net_assign_generic(%struct.net* %14, i32 %15, %struct.ip6_tnl_net* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %71

21:                                               ; preds = %13
  %22 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %23 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %26 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %30 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %33 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @ip6_tnl_dev_setup, align 4
  %39 = call i32 @alloc_netdev(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %41 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %43 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %21
  br label %70

47:                                               ; preds = %21
  %48 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %49 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.net*, %struct.net** %3, align 8
  %52 = call i32 @dev_net_set(i32 %50, %struct.net* %51)
  %53 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %54 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ip6_fb_tnl_dev_init(i32 %55)
  %57 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %58 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @register_netdev(i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %65

64:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %76

65:                                               ; preds = %63
  %66 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %67 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @free_netdev(i32 %68)
  br label %70

70:                                               ; preds = %65, %46
  br label %71

71:                                               ; preds = %70, %20
  %72 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %5, align 8
  %73 = call i32 @kfree(%struct.ip6_tnl_net* %72)
  br label %74

74:                                               ; preds = %71, %12
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %64
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.ip6_tnl_net* @kzalloc(i32, i32) #1

declare dso_local i32 @net_assign_generic(%struct.net*, i32, %struct.ip6_tnl_net*) #1

declare dso_local i32 @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @dev_net_set(i32, %struct.net*) #1

declare dso_local i32 @ip6_fb_tnl_dev_init(i32) #1

declare dso_local i32 @register_netdev(i32) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @kfree(%struct.ip6_tnl_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
