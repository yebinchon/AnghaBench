; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_init_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_init_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ipip_net = type { i32, i32, i32*, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ipip_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"tunl0\00", align 1
@ipip_tunnel_setup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @ipip_init_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip_init_net(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipip_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ipip_net* @kzalloc(i32 32, i32 %8)
  store %struct.ipip_net* %9, %struct.ipip_net** %5, align 8
  %10 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %11 = icmp eq %struct.ipip_net* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %87

13:                                               ; preds = %1
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = load i32, i32* @ipip_net_id, align 4
  %16 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %17 = call i32 @net_assign_generic(%struct.net* %14, i32 %15, %struct.ipip_net* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %84

21:                                               ; preds = %13
  %22 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %23 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %26 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %30 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %33 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %37 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %40 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %38, i32* %42, align 4
  %43 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %44 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %47 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @ipip_tunnel_setup, align 4
  %51 = call i32 @alloc_netdev(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %53 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %55 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %21
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %83

61:                                               ; preds = %21
  %62 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %63 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.net*, %struct.net** %3, align 8
  %66 = call i32 @dev_net_set(i32 %64, %struct.net* %65)
  %67 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %68 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ipip_fb_tunnel_init(i32 %69)
  %71 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %72 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @register_netdev(i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %78

77:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %89

78:                                               ; preds = %76
  %79 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %80 = getelementptr inbounds %struct.ipip_net, %struct.ipip_net* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @free_netdev(i32 %81)
  br label %83

83:                                               ; preds = %78, %58
  br label %84

84:                                               ; preds = %83, %20
  %85 = load %struct.ipip_net*, %struct.ipip_net** %5, align 8
  %86 = call i32 @kfree(%struct.ipip_net* %85)
  br label %87

87:                                               ; preds = %84, %12
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %77
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.ipip_net* @kzalloc(i32, i32) #1

declare dso_local i32 @net_assign_generic(%struct.net*, i32, %struct.ipip_net*) #1

declare dso_local i32 @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @dev_net_set(i32, %struct.net*) #1

declare dso_local i32 @ipip_fb_tunnel_init(i32) #1

declare dso_local i32 @register_netdev(i32) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @kfree(%struct.ipip_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
