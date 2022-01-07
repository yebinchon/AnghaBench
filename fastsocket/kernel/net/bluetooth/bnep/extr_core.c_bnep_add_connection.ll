; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_add_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_add_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnep_connadd_req = type { i8*, i32 }
%struct.socket = type { i32 }
%struct.net_device = type { i32, i32, i32** }
%struct.bnep_session = type { i64, i32, %struct.TYPE_5__, i32, %struct.socket*, %struct.net_device*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32**, i32** }
%struct.TYPE_6__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"bnep%d\00", align 1
@bnep_net_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bnep_session_sem = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@bnep_type = common dso_local global i32 0, align 4
@bnep_session = common dso_local global i32 0, align 4
@CLONE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnep_add_connection(%struct.bnep_connadd_req* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnep_connadd_req*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.bnep_session*, align 8
  %8 = alloca %struct.bnep_session*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnep_connadd_req* %0, %struct.bnep_connadd_req** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %22 = bitcast i32* %17 to i8*
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_6__* @bt_sk(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = call i32 @baswap(i8* %22, i32* %27)
  %29 = bitcast i32* %20 to i8*
  %30 = load %struct.socket*, %struct.socket** %5, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_6__* @bt_sk(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @baswap(i8* %29, i32* %34)
  %36 = load %struct.bnep_connadd_req*, %struct.bnep_connadd_req** %4, align 8
  %37 = getelementptr inbounds %struct.bnep_connadd_req, %struct.bnep_connadd_req* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load %struct.bnep_connadd_req*, %struct.bnep_connadd_req** %4, align 8
  %44 = getelementptr inbounds %struct.bnep_connadd_req, %struct.bnep_connadd_req* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i8* [ %45, %42 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %46 ]
  %49 = load i32, i32* @bnep_net_setup, align 4
  %50 = call %struct.net_device* @alloc_netdev(i32 56, i8* %48, i32 %49)
  store %struct.net_device* %50, %struct.net_device** %6, align 8
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = icmp ne %struct.net_device* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %153

56:                                               ; preds = %47
  %57 = call i32 @down_write(i32* @bnep_session_sem)
  %58 = call %struct.bnep_session* @__bnep_get_session(i32* %17)
  store %struct.bnep_session* %58, %struct.bnep_session** %8, align 8
  %59 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %60 = icmp ne %struct.bnep_session* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %63 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BT_CONNECTED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EEXIST, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %148

70:                                               ; preds = %61, %56
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = call %struct.bnep_session* @netdev_priv(%struct.net_device* %71)
  store %struct.bnep_session* %72, %struct.bnep_session** %7, align 8
  %73 = load %struct.bnep_session*, %struct.bnep_session** %7, align 8
  %74 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = bitcast i32* %20 to i32**
  %78 = load i32, i32* @ETH_ALEN, align 4
  %79 = call i32 @memcpy(i32** %76, i32** %77, i32 %78)
  %80 = load %struct.bnep_session*, %struct.bnep_session** %7, align 8
  %81 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32**, i32*** %82, align 8
  %84 = bitcast i32* %17 to i32**
  %85 = load i32, i32* @ETH_ALEN, align 4
  %86 = call i32 @memcpy(i32** %83, i32** %84, i32 %85)
  %87 = load %struct.net_device*, %struct.net_device** %6, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 2
  %89 = load i32**, i32*** %88, align 8
  %90 = load %struct.bnep_session*, %struct.bnep_session** %7, align 8
  %91 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* @ETH_ALEN, align 4
  %95 = call i32 @memcpy(i32** %89, i32** %93, i32 %94)
  %96 = load %struct.net_device*, %struct.net_device** %6, align 8
  %97 = load %struct.bnep_session*, %struct.bnep_session** %7, align 8
  %98 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %97, i32 0, i32 5
  store %struct.net_device* %96, %struct.net_device** %98, align 8
  %99 = load %struct.socket*, %struct.socket** %5, align 8
  %100 = load %struct.bnep_session*, %struct.bnep_session** %7, align 8
  %101 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %100, i32 0, i32 4
  store %struct.socket* %99, %struct.socket** %101, align 8
  %102 = load %struct.bnep_connadd_req*, %struct.bnep_connadd_req** %4, align 8
  %103 = getelementptr inbounds %struct.bnep_connadd_req, %struct.bnep_connadd_req* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.bnep_session*, %struct.bnep_session** %7, align 8
  %106 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load i64, i64* @BT_CONNECTED, align 8
  %108 = load %struct.bnep_session*, %struct.bnep_session** %7, align 8
  %109 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i32, i32* @MSG_NOSIGNAL, align 4
  %111 = load %struct.bnep_session*, %struct.bnep_session** %7, align 8
  %112 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.net_device*, %struct.net_device** %6, align 8
  %115 = load %struct.bnep_session*, %struct.bnep_session** %7, align 8
  %116 = call i32 @bnep_get_device(%struct.bnep_session* %115)
  %117 = call i32 @SET_NETDEV_DEV(%struct.net_device* %114, i32 %116)
  %118 = load %struct.net_device*, %struct.net_device** %6, align 8
  %119 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %118, i32* @bnep_type)
  %120 = load %struct.net_device*, %struct.net_device** %6, align 8
  %121 = call i32 @register_netdev(%struct.net_device* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %70
  br label %148

125:                                              ; preds = %70
  %126 = load %struct.bnep_session*, %struct.bnep_session** %7, align 8
  %127 = call i32 @__bnep_link_session(%struct.bnep_session* %126)
  %128 = load i32, i32* @bnep_session, align 4
  %129 = load %struct.bnep_session*, %struct.bnep_session** %7, align 8
  %130 = load i32, i32* @CLONE_KERNEL, align 4
  %131 = call i32 @kernel_thread(i32 %128, %struct.bnep_session* %129, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %125
  %135 = load %struct.net_device*, %struct.net_device** %6, align 8
  %136 = call i32 @unregister_netdev(%struct.net_device* %135)
  %137 = load %struct.bnep_session*, %struct.bnep_session** %7, align 8
  %138 = call i32 @__bnep_unlink_session(%struct.bnep_session* %137)
  br label %148

139:                                              ; preds = %125
  %140 = call i32 @up_write(i32* @bnep_session_sem)
  %141 = load %struct.bnep_connadd_req*, %struct.bnep_connadd_req** %4, align 8
  %142 = getelementptr inbounds %struct.bnep_connadd_req, %struct.bnep_connadd_req* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.net_device*, %struct.net_device** %6, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @strcpy(i8* %143, i32 %146)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %153

148:                                              ; preds = %134, %124, %67
  %149 = call i32 @up_write(i32* @bnep_session_sem)
  %150 = load %struct.net_device*, %struct.net_device** %6, align 8
  %151 = call i32 @free_netdev(%struct.net_device* %150)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %153

153:                                              ; preds = %148, %139, %53
  %154 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BT_DBG(i8*) #2

declare dso_local i32 @baswap(i8*, i32*) #2

declare dso_local %struct.TYPE_6__* @bt_sk(i32) #2

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #2

declare dso_local i32 @down_write(i32*) #2

declare dso_local %struct.bnep_session* @__bnep_get_session(i32*) #2

declare dso_local %struct.bnep_session* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @memcpy(i32**, i32**, i32) #2

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #2

declare dso_local i32 @bnep_get_device(%struct.bnep_session*) #2

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #2

declare dso_local i32 @register_netdev(%struct.net_device*) #2

declare dso_local i32 @__bnep_link_session(%struct.bnep_session*) #2

declare dso_local i32 @kernel_thread(i32, %struct.bnep_session*, i32) #2

declare dso_local i32 @unregister_netdev(%struct.net_device*) #2

declare dso_local i32 @__bnep_unlink_session(%struct.bnep_session*) #2

declare dso_local i32 @up_write(i32*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
