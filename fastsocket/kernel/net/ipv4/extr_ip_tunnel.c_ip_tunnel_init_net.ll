; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_init_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_init_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rtnl_link_ops = type { i32 }
%struct.ip_tunnel_net = type { i32*, i32 }
%struct.ip_tunnel_parm = type { i32 }

@IP_TNL_HASH_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_tunnel_init_net(%struct.net* %0, i32 %1, %struct.rtnl_link_ops* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtnl_link_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ip_tunnel_net*, align 8
  %11 = alloca %struct.ip_tunnel_parm, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.rtnl_link_ops* %2, %struct.rtnl_link_ops** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %12, i32 %13)
  store %struct.ip_tunnel_net* %14, %struct.ip_tunnel_net** %10, align 8
  %15 = load i32, i32* @IP_TNL_HASH_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @kzalloc(i32 %18, i32 %19)
  %21 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %24 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %69

30:                                               ; preds = %4
  %31 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %8, align 8
  %32 = icmp ne %struct.rtnl_link_ops* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %35 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  store i32 0, i32* %5, align 4
  br label %69

36:                                               ; preds = %30
  %37 = call i32 @memset(%struct.ip_tunnel_parm* %11, i32 0, i32 4)
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %11, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* @IFNAMSIZ, align 4
  %45 = call i32 @strlcpy(i32 %42, i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %36
  %47 = call i32 (...) @rtnl_lock()
  %48 = load %struct.net*, %struct.net** %6, align 8
  %49 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %8, align 8
  %50 = call i32* @__ip_tunnel_create(%struct.net* %48, %struct.rtnl_link_ops* %49, %struct.ip_tunnel_parm* %11)
  %51 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = call i32 (...) @rtnl_unlock()
  %54 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %55 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @IS_ERR(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %46
  %60 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %61 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @kfree(i32 %62)
  %64 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %65 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @PTR_ERR(i32* %66)
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %59, %33, %27
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ip_tunnel_parm*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32* @__ip_tunnel_create(%struct.net*, %struct.rtnl_link_ops*, %struct.ip_tunnel_parm*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
