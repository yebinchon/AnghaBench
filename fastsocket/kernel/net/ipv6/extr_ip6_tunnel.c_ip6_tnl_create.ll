; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { %struct.ip6_tnl_parm }
%struct.ip6_tnl_parm = type { i64* }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.ip6_tnl_net = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@ip6_tnl_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ip6tnl%%d\00", align 1
@ip6_tnl_dev_setup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip6_tnl* (%struct.net*, %struct.ip6_tnl_parm*)* @ip6_tnl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip6_tnl* @ip6_tnl_create(%struct.net* %0, %struct.ip6_tnl_parm* %1) #0 {
  %3 = alloca %struct.ip6_tnl*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.ip6_tnl_parm*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ip6_tnl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ip6_tnl_net*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.ip6_tnl_parm* %1, %struct.ip6_tnl_parm** %5, align 8
  %13 = load i32, i32* @IFNAMSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.net*, %struct.net** %4, align 8
  %18 = load i32, i32* @ip6_tnl_net_id, align 4
  %19 = call %struct.ip6_tnl_net* @net_generic(%struct.net* %17, i32 %18)
  store %struct.ip6_tnl_net* %19, %struct.ip6_tnl_net** %11, align 8
  %20 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %5, align 8
  %21 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %5, align 8
  %28 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* @IFNAMSIZ, align 4
  %31 = call i32 @strlcpy(i8* %16, i64* %29, i32 %30)
  br label %34

32:                                               ; preds = %2
  %33 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* @ip6_tnl_dev_setup, align 4
  %36 = call %struct.net_device* @alloc_netdev(i32 8, i8* %16, i32 %35)
  store %struct.net_device* %36, %struct.net_device** %6, align 8
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = icmp eq %struct.net_device* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %76

40:                                               ; preds = %34
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = load %struct.net*, %struct.net** %4, align 8
  %43 = call i32 @dev_net_set(%struct.net_device* %41, %struct.net* %42)
  %44 = call i64 @strchr(i8* %16, i8 signext 37)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = call i64 @dev_alloc_name(%struct.net_device* %47, i8* %16)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %73

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %40
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %53)
  store %struct.ip6_tnl* %54, %struct.ip6_tnl** %7, align 8
  %55 = load %struct.ip6_tnl*, %struct.ip6_tnl** %7, align 8
  %56 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %55, i32 0, i32 0
  %57 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %5, align 8
  %58 = bitcast %struct.ip6_tnl_parm* %56 to i8*
  %59 = bitcast %struct.ip6_tnl_parm* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 8, i1 false)
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = call i32 @ip6_tnl_dev_init(%struct.net_device* %60)
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = call i32 @register_netdevice(%struct.net_device* %62)
  store i32 %63, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %73

66:                                               ; preds = %52
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = call i32 @dev_hold(%struct.net_device* %67)
  %69 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %11, align 8
  %70 = load %struct.ip6_tnl*, %struct.ip6_tnl** %7, align 8
  %71 = call i32 @ip6_tnl_link(%struct.ip6_tnl_net* %69, %struct.ip6_tnl* %70)
  %72 = load %struct.ip6_tnl*, %struct.ip6_tnl** %7, align 8
  store %struct.ip6_tnl* %72, %struct.ip6_tnl** %3, align 8
  store i32 1, i32* %12, align 4
  br label %77

73:                                               ; preds = %65, %50
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = call i32 @free_netdev(%struct.net_device* %74)
  br label %76

76:                                               ; preds = %73, %39
  store %struct.ip6_tnl* null, %struct.ip6_tnl** %3, align 8
  store i32 1, i32* %12, align 4
  br label %77

77:                                               ; preds = %76, %66
  %78 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  ret %struct.ip6_tnl* %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ip6_tnl_net* @net_generic(%struct.net*, i32) #2

declare dso_local i32 @strlcpy(i8*, i64*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*) #2

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #2

declare dso_local i32 @dev_net_set(%struct.net_device*, %struct.net*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i64 @dev_alloc_name(%struct.net_device*, i8*) #2

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ip6_tnl_dev_init(%struct.net_device*) #2

declare dso_local i32 @register_netdevice(%struct.net_device*) #2

declare dso_local i32 @dev_hold(%struct.net_device*) #2

declare dso_local i32 @ip6_tnl_link(%struct.ip6_tnl_net*, %struct.ip6_tnl*) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

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
