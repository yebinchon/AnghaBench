; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw.c_rds_iw_add_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw.c_rds_iw_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64, i32 }
%struct.rds_iw_device = type { i32, i32, i32*, i32*, i32, i32, i32, i32*, %struct.ib_device*, i32, i32, i32, i32 }
%struct.ib_device_attr = type { i32, i32, i32*, i32*, i32, i32, i32, i32*, %struct.ib_device*, i32, i32, i32, i32 }

@RDMA_NODE_RNIC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Query device failed for %s\0A\00", align 1
@IB_DEVICE_LOCAL_DMA_LKEY = common dso_local global i32 0, align 4
@RDS_IW_MAX_SGE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@rds_iw_devices = common dso_local global i32 0, align 4
@rds_iw_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @rds_iw_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_iw_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.rds_iw_device*, align 8
  %4 = alloca %struct.ib_device_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %5 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %6 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RDMA_NODE_RNIC, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %151

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.rds_iw_device* @kmalloc(i32 72, i32 %12)
  %14 = bitcast %struct.rds_iw_device* %13 to %struct.ib_device_attr*
  store %struct.ib_device_attr* %14, %struct.ib_device_attr** %4, align 8
  %15 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %16 = icmp ne %struct.ib_device_attr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %151

18:                                               ; preds = %11
  %19 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %20 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %21 = bitcast %struct.ib_device_attr* %20 to %struct.rds_iw_device*
  %22 = call i64 @ib_query_device(%struct.ib_device* %19, %struct.rds_iw_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @rdsdebug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %147

29:                                               ; preds = %18
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.rds_iw_device* @kmalloc(i32 72, i32 %30)
  store %struct.rds_iw_device* %31, %struct.rds_iw_device** %3, align 8
  %32 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %33 = icmp ne %struct.rds_iw_device* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %147

35:                                               ; preds = %29
  %36 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %37 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %36, i32 0, i32 12
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %40 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IB_DEVICE_LOCAL_DMA_LKEY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %49 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %51 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %54 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %53, i32 0, i32 11
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %56 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RDS_IW_MAX_SGE, align 4
  %59 = call i32 @min(i32 %57, i32 %58)
  %60 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %61 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %63 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %64 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %63, i32 0, i32 8
  store %struct.ib_device* %62, %struct.ib_device** %64, align 8
  %65 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %66 = call i32* @ib_alloc_pd(%struct.ib_device* %65)
  %67 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %68 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  %69 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %70 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @IS_ERR(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %35
  br label %144

75:                                               ; preds = %35
  %76 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %77 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %75
  %81 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %82 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %85 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %88 = or i32 %86, %87
  %89 = call i32* @ib_get_dma_mr(i32* %83, i32 %88)
  %90 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %91 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %90, i32 0, i32 3
  store i32* %89, i32** %91, align 8
  %92 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %93 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = call i64 @IS_ERR(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %80
  br label %139

98:                                               ; preds = %80
  br label %102

99:                                               ; preds = %75
  %100 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %101 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %100, i32 0, i32 3
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %99, %98
  %103 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %104 = call i32* @rds_iw_create_mr_pool(%struct.rds_iw_device* %103)
  %105 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %106 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %105, i32 0, i32 7
  store i32* %104, i32** %106, align 8
  %107 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %108 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @IS_ERR(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %114 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %113, i32 0, i32 7
  store i32* null, i32** %114, align 8
  br label %128

115:                                              ; preds = %102
  %116 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %117 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %116, i32 0, i32 6
  %118 = call i32 @INIT_LIST_HEAD(i32* %117)
  %119 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %120 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %119, i32 0, i32 5
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  %122 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %123 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %122, i32 0, i32 4
  %124 = call i32 @list_add_tail(i32* %123, i32* @rds_iw_devices)
  %125 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %126 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %127 = call i32 @ib_set_client_data(%struct.ib_device* %125, i32* @rds_iw_client, %struct.rds_iw_device* %126)
  br label %147

128:                                              ; preds = %112
  %129 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %130 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %135 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @ib_dereg_mr(i32* %136)
  br label %138

138:                                              ; preds = %133, %128
  br label %139

139:                                              ; preds = %138, %97
  %140 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %141 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @ib_dealloc_pd(i32* %142)
  br label %144

144:                                              ; preds = %139, %74
  %145 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %146 = call i32 @kfree(%struct.rds_iw_device* %145)
  br label %147

147:                                              ; preds = %144, %115, %34, %24
  %148 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %149 = bitcast %struct.ib_device_attr* %148 to %struct.rds_iw_device*
  %150 = call i32 @kfree(%struct.rds_iw_device* %149)
  br label %151

151:                                              ; preds = %147, %17, %10
  ret void
}

declare dso_local %struct.rds_iw_device* @kmalloc(i32, i32) #1

declare dso_local i64 @ib_query_device(%struct.ib_device*, %struct.rds_iw_device*) #1

declare dso_local i32 @rdsdebug(i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32* @ib_alloc_pd(%struct.ib_device*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32* @ib_get_dma_mr(i32*, i32) #1

declare dso_local i32* @rds_iw_create_mr_pool(%struct.rds_iw_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.rds_iw_device*) #1

declare dso_local i32 @ib_dereg_mr(i32*) #1

declare dso_local i32 @ib_dealloc_pd(i32*) #1

declare dso_local i32 @kfree(%struct.rds_iw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
