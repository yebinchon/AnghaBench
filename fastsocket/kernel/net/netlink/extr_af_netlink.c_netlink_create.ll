; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mutex*, %struct.module*, i64 }
%struct.mutex = type { i32 }
%struct.module = type { i32 }
%struct.net = type { i32 }
%struct.socket = type { i64, i32, i32 }
%struct.netlink_sock = type { %struct.module* }

@SS_UNCONNECTED = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@MAX_LINKS = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@nl_table = common dso_local global %struct.TYPE_2__* null, align 8
@netlink_proto = common dso_local global i32 0, align 4
@PF_NETLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @netlink_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.module*, align 8
  %11 = alloca %struct.mutex*, align 8
  %12 = alloca %struct.netlink_sock*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.module* null, %struct.module** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @SS_UNCONNECTED, align 4
  %15 = load %struct.socket*, %struct.socket** %7, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.socket*, %struct.socket** %7, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOCK_RAW, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.socket*, %struct.socket** %7, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SOCK_DGRAM, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %106

31:                                               ; preds = %22, %4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @MAX_LINKS, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %31
  %39 = load i32, i32* @EPROTONOSUPPORT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %106

41:                                               ; preds = %34
  %42 = call i32 (...) @netlink_lock_table()
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %41
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load %struct.module*, %struct.module** %55, align 8
  %57 = call i64 @try_module_get(%struct.module* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load %struct.module*, %struct.module** %64, align 8
  store %struct.module* %65, %struct.module** %10, align 8
  br label %69

66:                                               ; preds = %50, %41
  %67 = load i32, i32* @EPROTONOSUPPORT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.mutex*, %struct.mutex** %74, align 8
  store %struct.mutex* %75, %struct.mutex** %11, align 8
  %76 = call i32 (...) @netlink_unlock_table()
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %101

80:                                               ; preds = %69
  %81 = load %struct.net*, %struct.net** %6, align 8
  %82 = load %struct.socket*, %struct.socket** %7, align 8
  %83 = load %struct.mutex*, %struct.mutex** %11, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @__netlink_create(%struct.net* %81, %struct.socket* %82, %struct.mutex* %83, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %103

89:                                               ; preds = %80
  %90 = call i32 (...) @local_bh_disable()
  %91 = load %struct.net*, %struct.net** %6, align 8
  %92 = call i32 @sock_prot_inuse_add(%struct.net* %91, i32* @netlink_proto, i32 1)
  %93 = call i32 (...) @local_bh_enable()
  %94 = load %struct.socket*, %struct.socket** %7, align 8
  %95 = getelementptr inbounds %struct.socket, %struct.socket* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.netlink_sock* @nlk_sk(i32 %96)
  store %struct.netlink_sock* %97, %struct.netlink_sock** %12, align 8
  %98 = load %struct.module*, %struct.module** %10, align 8
  %99 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %100 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %99, i32 0, i32 0
  store %struct.module* %98, %struct.module** %100, align 8
  br label %101

101:                                              ; preds = %103, %89, %79
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %5, align 4
  br label %106

103:                                              ; preds = %88
  %104 = load %struct.module*, %struct.module** %10, align 8
  %105 = call i32 @module_put(%struct.module* %104)
  br label %101

106:                                              ; preds = %101, %38, %28
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @netlink_lock_table(...) #1

declare dso_local i64 @try_module_get(%struct.module*) #1

declare dso_local i32 @netlink_unlock_table(...) #1

declare dso_local i32 @__netlink_create(%struct.net*, %struct.socket*, %struct.mutex*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @sock_prot_inuse_add(%struct.net*, i32*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local %struct.netlink_sock* @nlk_sk(i32) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
