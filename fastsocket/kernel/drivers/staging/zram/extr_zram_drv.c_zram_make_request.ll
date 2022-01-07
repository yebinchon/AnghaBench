; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_make_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.zram* }
%struct.zram = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @zram_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zram_make_request(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.zram*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 0
  %9 = load %struct.zram*, %struct.zram** %8, align 8
  store %struct.zram* %9, %struct.zram** %6, align 8
  %10 = load %struct.zram*, %struct.zram** %6, align 8
  %11 = getelementptr inbounds %struct.zram, %struct.zram* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.zram*, %struct.zram** %6, align 8
  %20 = call i64 @zram_init_device(%struct.zram* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %60

23:                                               ; preds = %18, %2
  %24 = load %struct.zram*, %struct.zram** %6, align 8
  %25 = getelementptr inbounds %struct.zram, %struct.zram* %24, i32 0, i32 0
  %26 = call i32 @down_read(i32* %25)
  %27 = load %struct.zram*, %struct.zram** %6, align 8
  %28 = getelementptr inbounds %struct.zram, %struct.zram* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %56

36:                                               ; preds = %23
  %37 = load %struct.zram*, %struct.zram** %6, align 8
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = call i32 @valid_io_request(%struct.zram* %37, %struct.bio* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.zram*, %struct.zram** %6, align 8
  %43 = load %struct.zram*, %struct.zram** %6, align 8
  %44 = getelementptr inbounds %struct.zram, %struct.zram* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @zram_stat64_inc(%struct.zram* %42, i32* %45)
  br label %56

47:                                               ; preds = %36
  %48 = load %struct.zram*, %struct.zram** %6, align 8
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = load %struct.bio*, %struct.bio** %5, align 8
  %51 = call i32 @bio_data_dir(%struct.bio* %50)
  %52 = call i32 @__zram_make_request(%struct.zram* %48, %struct.bio* %49, i32 %51)
  %53 = load %struct.zram*, %struct.zram** %6, align 8
  %54 = getelementptr inbounds %struct.zram, %struct.zram* %53, i32 0, i32 0
  %55 = call i32 @up_read(i32* %54)
  store i32 0, i32* %3, align 4
  br label %63

56:                                               ; preds = %41, %35
  %57 = load %struct.zram*, %struct.zram** %6, align 8
  %58 = getelementptr inbounds %struct.zram, %struct.zram* %57, i32 0, i32 0
  %59 = call i32 @up_read(i32* %58)
  br label %60

60:                                               ; preds = %56, %22
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = call i32 @bio_io_error(%struct.bio* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %47
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @zram_init_device(%struct.zram*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @valid_io_request(%struct.zram*, %struct.bio*) #1

declare dso_local i32 @zram_stat64_inc(%struct.zram*, i32*) #1

declare dso_local i32 @__zram_make_request(%struct.zram*, %struct.bio*, i32) #1

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
