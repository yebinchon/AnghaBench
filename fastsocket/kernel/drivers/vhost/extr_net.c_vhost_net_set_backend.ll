; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_set_backend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_set_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { %struct.TYPE_2__, %struct.vhost_virtqueue* }
%struct.TYPE_2__ = type { i32 }
%struct.vhost_virtqueue = type { i32, %struct.vhost_ubuf_ref*, %struct.vhost_ubuf_ref* }
%struct.vhost_ubuf_ref = type { i32 }
%struct.socket = type { i32 }

@VHOST_NET_VQ_MAX = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vhost_net*, i32, i32)* @vhost_net_set_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vhost_net_set_backend(%struct.vhost_net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.vhost_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.vhost_virtqueue*, align 8
  %11 = alloca %struct.vhost_ubuf_ref*, align 8
  %12 = alloca %struct.vhost_ubuf_ref*, align 8
  %13 = alloca i32, align 4
  store %struct.vhost_net* %0, %struct.vhost_net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.vhost_ubuf_ref* null, %struct.vhost_ubuf_ref** %12, align 8
  %14 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %15 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %19 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %18, i32 0, i32 0
  %20 = call i32 @vhost_dev_check_owner(%struct.TYPE_2__* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %153

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @VHOST_NET_VQ_MAX, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOBUFS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %13, align 4
  br label %153

31:                                               ; preds = %24
  %32 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %33 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %32, i32 0, i32 1
  %34 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %34, i64 %36
  store %struct.vhost_virtqueue* %37, %struct.vhost_virtqueue** %10, align 8
  %38 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %39 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %42 = call i32 @vhost_vq_access_ok(%struct.vhost_virtqueue* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %149

47:                                               ; preds = %31
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.vhost_ubuf_ref* @get_socket(i32 %48)
  %50 = bitcast %struct.vhost_ubuf_ref* %49 to %struct.socket*
  store %struct.socket* %50, %struct.socket** %8, align 8
  %51 = load %struct.socket*, %struct.socket** %8, align 8
  %52 = bitcast %struct.socket* %51 to %struct.vhost_ubuf_ref*
  %53 = call i64 @IS_ERR(%struct.vhost_ubuf_ref* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.socket*, %struct.socket** %8, align 8
  %57 = bitcast %struct.socket* %56 to %struct.vhost_ubuf_ref*
  %58 = call i32 @PTR_ERR(%struct.vhost_ubuf_ref* %57)
  store i32 %58, i32* %13, align 4
  br label %149

59:                                               ; preds = %47
  %60 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %61 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %60, i32 0, i32 1
  %62 = load %struct.vhost_ubuf_ref*, %struct.vhost_ubuf_ref** %61, align 8
  %63 = bitcast %struct.vhost_ubuf_ref* %62 to %struct.socket*
  store %struct.socket* %63, %struct.socket** %9, align 8
  %64 = load %struct.socket*, %struct.socket** %8, align 8
  %65 = load %struct.socket*, %struct.socket** %9, align 8
  %66 = icmp ne %struct.socket* %64, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %59
  %68 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %69 = load %struct.socket*, %struct.socket** %8, align 8
  %70 = icmp ne %struct.socket* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.socket*, %struct.socket** %8, align 8
  %73 = bitcast %struct.socket* %72 to %struct.vhost_ubuf_ref*
  %74 = call i64 @vhost_sock_zcopy(%struct.vhost_ubuf_ref* %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %71, %67
  %77 = phi i1 [ false, %67 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = call %struct.vhost_ubuf_ref* @vhost_ubuf_alloc(%struct.vhost_virtqueue* %68, i32 %78)
  store %struct.vhost_ubuf_ref* %79, %struct.vhost_ubuf_ref** %11, align 8
  %80 = load %struct.vhost_ubuf_ref*, %struct.vhost_ubuf_ref** %11, align 8
  %81 = call i64 @IS_ERR(%struct.vhost_ubuf_ref* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.vhost_ubuf_ref*, %struct.vhost_ubuf_ref** %11, align 8
  %85 = call i32 @PTR_ERR(%struct.vhost_ubuf_ref* %84)
  store i32 %85, i32* %13, align 4
  br label %144

86:                                               ; preds = %76
  %87 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %88 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %87, i32 0, i32 2
  %89 = load %struct.vhost_ubuf_ref*, %struct.vhost_ubuf_ref** %88, align 8
  store %struct.vhost_ubuf_ref* %89, %struct.vhost_ubuf_ref** %12, align 8
  %90 = load %struct.vhost_ubuf_ref*, %struct.vhost_ubuf_ref** %11, align 8
  %91 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %92 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %91, i32 0, i32 2
  store %struct.vhost_ubuf_ref* %90, %struct.vhost_ubuf_ref** %92, align 8
  %93 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %94 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %95 = call i32 @vhost_net_disable_vq(%struct.vhost_net* %93, %struct.vhost_virtqueue* %94)
  %96 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %97 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %96, i32 0, i32 1
  %98 = load %struct.vhost_ubuf_ref*, %struct.vhost_ubuf_ref** %97, align 8
  %99 = load %struct.socket*, %struct.socket** %8, align 8
  %100 = bitcast %struct.socket* %99 to %struct.vhost_ubuf_ref*
  %101 = call i32 @rcu_assign_pointer(%struct.vhost_ubuf_ref* %98, %struct.vhost_ubuf_ref* %100)
  %102 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %103 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %104 = call i32 @vhost_net_enable_vq(%struct.vhost_net* %102, %struct.vhost_virtqueue* %103)
  %105 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %106 = call i32 @vhost_init_used(%struct.vhost_virtqueue* %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %86
  br label %149

110:                                              ; preds = %86
  br label %111

111:                                              ; preds = %110, %59
  %112 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %113 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load %struct.vhost_ubuf_ref*, %struct.vhost_ubuf_ref** %12, align 8
  %116 = icmp ne %struct.vhost_ubuf_ref* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.vhost_ubuf_ref*, %struct.vhost_ubuf_ref** %12, align 8
  %119 = call i32 @vhost_ubuf_put_and_wait(%struct.vhost_ubuf_ref* %118)
  %120 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %121 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %120, i32 0, i32 0
  %122 = call i32 @mutex_lock(i32* %121)
  %123 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %124 = call i32 @vhost_zerocopy_signal_used(%struct.vhost_virtqueue* %123)
  %125 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %126 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  br label %128

128:                                              ; preds = %117, %111
  %129 = load %struct.socket*, %struct.socket** %9, align 8
  %130 = icmp ne %struct.socket* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @vhost_net_flush_vq(%struct.vhost_net* %132, i32 %133)
  %135 = load %struct.socket*, %struct.socket** %9, align 8
  %136 = getelementptr inbounds %struct.socket, %struct.socket* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @fput(i32 %137)
  br label %139

139:                                              ; preds = %131, %128
  %140 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %141 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = call i32 @mutex_unlock(i32* %142)
  store i64 0, i64* %4, align 8
  br label %160

144:                                              ; preds = %83
  %145 = load %struct.socket*, %struct.socket** %8, align 8
  %146 = getelementptr inbounds %struct.socket, %struct.socket* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @fput(i32 %147)
  br label %149

149:                                              ; preds = %144, %109, %55, %44
  %150 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %151 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  br label %153

153:                                              ; preds = %149, %28, %23
  %154 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %155 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %4, align 8
  br label %160

160:                                              ; preds = %153, %139
  %161 = load i64, i64* %4, align 8
  ret i64 %161
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vhost_dev_check_owner(%struct.TYPE_2__*) #1

declare dso_local i32 @vhost_vq_access_ok(%struct.vhost_virtqueue*) #1

declare dso_local %struct.vhost_ubuf_ref* @get_socket(i32) #1

declare dso_local i64 @IS_ERR(%struct.vhost_ubuf_ref*) #1

declare dso_local i32 @PTR_ERR(%struct.vhost_ubuf_ref*) #1

declare dso_local %struct.vhost_ubuf_ref* @vhost_ubuf_alloc(%struct.vhost_virtqueue*, i32) #1

declare dso_local i64 @vhost_sock_zcopy(%struct.vhost_ubuf_ref*) #1

declare dso_local i32 @vhost_net_disable_vq(%struct.vhost_net*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.vhost_ubuf_ref*, %struct.vhost_ubuf_ref*) #1

declare dso_local i32 @vhost_net_enable_vq(%struct.vhost_net*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_init_used(%struct.vhost_virtqueue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vhost_ubuf_put_and_wait(%struct.vhost_ubuf_ref*) #1

declare dso_local i32 @vhost_zerocopy_signal_used(%struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_net_flush_vq(%struct.vhost_net*, i32) #1

declare dso_local i32 @fput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
