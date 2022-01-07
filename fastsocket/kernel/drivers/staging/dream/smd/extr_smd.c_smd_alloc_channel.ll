; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smd_alloc_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smd_alloc_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smd_channel = type { %struct.TYPE_2__, i32, i64, i64*, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32, i64* }
%struct.smd_shared = type { i32, i32 }

@ID_SMD_CHANNELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"smd_alloc_channel() cid %d does not exist\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"smd_alloc_channel() out of memory\0A\00", align 1
@smd_packet_read = common dso_local global i32 0, align 4
@smd_packet_write = common dso_local global i32 0, align 4
@smd_packet_read_avail = common dso_local global i32 0, align 4
@smd_packet_write_avail = common dso_local global i32 0, align 4
@update_packet_state = common dso_local global i32 0, align 4
@smd_stream_read = common dso_local global i32 0, align 4
@smd_stream_write = common dso_local global i32 0, align 4
@smd_stream_read_avail = common dso_local global i32 0, align 4
@smd_stream_write_avail = common dso_local global i32 0, align 4
@update_stream_state = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"SMD_\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"smd_alloc_channel() '%s' cid=%d, shared=%p\0A\00", align 1
@smd_creation_mutex = common dso_local global i32 0, align 4
@smd_ch_closed_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @smd_alloc_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smd_alloc_channel(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.smd_channel*, align 8
  %8 = alloca %struct.smd_shared*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @ID_SMD_CHANNELS, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %9, %10
  %12 = call %struct.smd_shared* @smem_alloc(i64 %11, i32 8)
  store %struct.smd_shared* %12, %struct.smd_shared** %8, align 8
  %13 = load %struct.smd_shared*, %struct.smd_shared** %8, align 8
  %14 = icmp ne %struct.smd_shared* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %16)
  br label %112

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.smd_channel* @kzalloc(i32 80, i32 %19)
  store %struct.smd_channel* %20, %struct.smd_channel** %7, align 8
  %21 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %22 = icmp eq %struct.smd_channel* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %112

25:                                               ; preds = %18
  %26 = load %struct.smd_shared*, %struct.smd_shared** %8, align 8
  %27 = getelementptr inbounds %struct.smd_shared, %struct.smd_shared* %26, i32 0, i32 1
  %28 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %29 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %28, i32 0, i32 10
  store i32* %27, i32** %29, align 8
  %30 = load %struct.smd_shared*, %struct.smd_shared** %8, align 8
  %31 = getelementptr inbounds %struct.smd_shared, %struct.smd_shared* %30, i32 0, i32 0
  %32 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %33 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %32, i32 0, i32 9
  store i32* %31, i32** %33, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %36 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @smd_is_packet(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %25
  %41 = load i32, i32* @smd_packet_read, align 4
  %42 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %43 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @smd_packet_write, align 4
  %45 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %46 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @smd_packet_read_avail, align 4
  %48 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %49 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @smd_packet_write_avail, align 4
  %51 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %52 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @update_packet_state, align 4
  %54 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %55 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  br label %72

56:                                               ; preds = %25
  %57 = load i32, i32* @smd_stream_read, align 4
  %58 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %59 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @smd_stream_write, align 4
  %61 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %62 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @smd_stream_read_avail, align 4
  %64 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %65 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @smd_stream_write_avail, align 4
  %67 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %68 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @update_stream_state, align 4
  %70 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %71 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %56, %40
  %73 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %74 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = call i32 @memcpy(i64* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %77 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %78 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %77, i32 0, i32 3
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 4
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @memcpy(i64* %80, i8* %81, i32 20)
  %83 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %84 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %83, i32 0, i32 3
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 23
  store i64 0, i64* %86, align 8
  %87 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %88 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %87, i32 0, i32 3
  %89 = load i64*, i64** %88, align 8
  %90 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %91 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i64* %89, i64** %92, align 8
  %93 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %94 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 -1, i32* %95, align 8
  %96 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %97 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %96, i32 0, i32 3
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %100 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.smd_shared*, %struct.smd_shared** %8, align 8
  %103 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64* %98, i64 %101, %struct.smd_shared* %102)
  %104 = call i32 @mutex_lock(i32* @smd_creation_mutex)
  %105 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %106 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %105, i32 0, i32 1
  %107 = call i32 @list_add(i32* %106, i32* @smd_ch_closed_list)
  %108 = call i32 @mutex_unlock(i32* @smd_creation_mutex)
  %109 = load %struct.smd_channel*, %struct.smd_channel** %7, align 8
  %110 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %109, i32 0, i32 0
  %111 = call i32 @platform_device_register(%struct.TYPE_2__* %110)
  br label %112

112:                                              ; preds = %72, %23, %15
  ret void
}

declare dso_local %struct.smd_shared* @smem_alloc(i64, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.smd_channel* @kzalloc(i32, i32) #1

declare dso_local i64 @smd_is_packet(i64) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i64*, i64, %struct.smd_shared*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
