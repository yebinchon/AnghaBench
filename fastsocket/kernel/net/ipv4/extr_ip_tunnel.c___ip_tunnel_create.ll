; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c___ip_tunnel_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c___ip_tunnel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.rtnl_link_ops* }
%struct.net = type { i32 }
%struct.rtnl_link_ops = type { i32, i32, i64* }
%struct.ip_tunnel_parm = type { i64* }
%struct.ip_tunnel = type { %struct.ip_tunnel_parm }

@IFNAMSIZ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.net*, %struct.rtnl_link_ops*, %struct.ip_tunnel_parm*)* @__ip_tunnel_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @__ip_tunnel_create(%struct.net* %0, %struct.rtnl_link_ops* %1, %struct.ip_tunnel_parm* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.rtnl_link_ops*, align 8
  %7 = alloca %struct.ip_tunnel_parm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_tunnel*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.rtnl_link_ops* %1, %struct.rtnl_link_ops** %6, align 8
  store %struct.ip_tunnel_parm* %2, %struct.ip_tunnel_parm** %7, align 8
  %14 = load i32, i32* @IFNAMSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* @IFNAMSIZ, align 4
  %29 = call i32 @strlcpy(i8* %17, i64* %27, i32 %28)
  br label %48

30:                                               ; preds = %3
  %31 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %6, align 8
  %32 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = call i32 @strlen(i64* %33)
  %35 = load i32, i32* @IFNAMSIZ, align 4
  %36 = sub nsw i32 %35, 3
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @E2BIG, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %96

41:                                               ; preds = %30
  %42 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %6, align 8
  %43 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* @IFNAMSIZ, align 4
  %46 = call i32 @strlcpy(i8* %17, i64* %44, i32 %45)
  %47 = call i32 @strncat(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %48

48:                                               ; preds = %41, %24
  %49 = call i32 (...) @ASSERT_RTNL()
  %50 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %6, align 8
  %51 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %6, align 8
  %54 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.net_device* @alloc_netdev(i32 %52, i8* %17, i32 %55)
  store %struct.net_device* %56, %struct.net_device** %10, align 8
  %57 = load %struct.net_device*, %struct.net_device** %10, align 8
  %58 = icmp ne %struct.net_device* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %96

62:                                               ; preds = %48
  %63 = load %struct.net_device*, %struct.net_device** %10, align 8
  %64 = load %struct.net*, %struct.net** %5, align 8
  %65 = call i32 @dev_net_set(%struct.net_device* %63, %struct.net* %64)
  %66 = call i64 @strchr(i8* %17, i8 signext 37)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.net_device*, %struct.net_device** %10, align 8
  %70 = call i32 @dev_alloc_name(%struct.net_device* %69, i8* %17)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %96

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %62
  %76 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %6, align 8
  %77 = load %struct.net_device*, %struct.net_device** %10, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  store %struct.rtnl_link_ops* %76, %struct.rtnl_link_ops** %78, align 8
  %79 = load %struct.net_device*, %struct.net_device** %10, align 8
  %80 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %79)
  store %struct.ip_tunnel* %80, %struct.ip_tunnel** %9, align 8
  %81 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %82 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %81, i32 0, i32 0
  %83 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %84 = bitcast %struct.ip_tunnel_parm* %82 to i8*
  %85 = bitcast %struct.ip_tunnel_parm* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 8, i1 false)
  %86 = load %struct.net_device*, %struct.net_device** %10, align 8
  %87 = call i32 @register_netdevice(%struct.net_device* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %75
  br label %93

91:                                               ; preds = %75
  %92 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %92, %struct.net_device** %4, align 8
  store i32 1, i32* %13, align 4
  br label %99

93:                                               ; preds = %90
  %94 = load %struct.net_device*, %struct.net_device** %10, align 8
  %95 = call i32 @free_netdev(%struct.net_device* %94)
  br label %96

96:                                               ; preds = %93, %73, %59, %38
  %97 = load i32, i32* %8, align 4
  %98 = call %struct.net_device* @ERR_PTR(i32 %97)
  store %struct.net_device* %98, %struct.net_device** %4, align 8
  store i32 1, i32* %13, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i64*, i32) #2

declare dso_local i32 @strlen(i64*) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

declare dso_local i32 @ASSERT_RTNL(...) #2

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #2

declare dso_local i32 @dev_net_set(%struct.net_device*, %struct.net*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @dev_alloc_name(%struct.net_device*, i8*) #2

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @register_netdevice(%struct.net_device*) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

declare dso_local %struct.net_device* @ERR_PTR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
