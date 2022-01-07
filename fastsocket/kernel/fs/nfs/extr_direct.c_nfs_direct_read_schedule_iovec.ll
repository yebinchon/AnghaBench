; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_read_schedule_iovec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_read_schedule_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_direct_req = type { i32 }
%struct.iovec = type { i64 }
%struct.nfs_pageio_descriptor = type { %struct.nfs_direct_req* }
%struct.TYPE_2__ = type { i32 (%struct.nfs_pageio_descriptor*, i32, i32*)* }

@EINVAL = common dso_local global i64 0, align 8
@nfs_direct_read_completion_ops = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfs_direct_req*, %struct.iovec*, i64, i64)* @nfs_direct_read_schedule_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_direct_read_schedule_iovec(%struct.nfs_direct_req* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfs_direct_req*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nfs_pageio_descriptor, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.iovec*, align 8
  store %struct.nfs_direct_req* %0, %struct.nfs_direct_req** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_2__* @NFS_PROTO(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.nfs_pageio_descriptor*, i32, i32*)*, i32 (%struct.nfs_pageio_descriptor*, i32, i32*)** %21, align 8
  %23 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %22(%struct.nfs_pageio_descriptor* %10, i32 %25, i32* @nfs_direct_read_completion_ops)
  %27 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %28 = call i32 @get_dreq(%struct.nfs_direct_req* %27)
  %29 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %30 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 0
  store %struct.nfs_direct_req* %29, %struct.nfs_direct_req** %30, align 8
  store i64 0, i64* %13, align 8
  br label %31

31:                                               ; preds = %61, %4
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %31
  %36 = load %struct.iovec*, %struct.iovec** %7, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i64 %37
  store %struct.iovec* %38, %struct.iovec** %14, align 8
  %39 = load %struct.iovec*, %struct.iovec** %14, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @nfs_direct_read_schedule_segment(%struct.nfs_pageio_descriptor* %10, %struct.iovec* %39, i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %64

45:                                               ; preds = %35
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.iovec*, %struct.iovec** %14, align 8
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %64

55:                                               ; preds = %45
  %56 = load %struct.iovec*, %struct.iovec** %14, align 8
  %57 = getelementptr inbounds %struct.iovec, %struct.iovec* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %55
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %13, align 8
  br label %31

64:                                               ; preds = %54, %44, %31
  %65 = call i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor* %10)
  %66 = load i64, i64* %12, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %70 = call i32 @nfs_direct_req_release(%struct.nfs_direct_req* %69)
  %71 = load i64, i64* %11, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* %11, align 8
  br label %78

75:                                               ; preds = %68
  %76 = load i64, i64* @EIO, align 8
  %77 = sub nsw i64 0, %76
  br label %78

78:                                               ; preds = %75, %73
  %79 = phi i64 [ %74, %73 ], [ %77, %75 ]
  store i64 %79, i64* %5, align 8
  br label %88

80:                                               ; preds = %64
  %81 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %82 = call i64 @put_dreq(%struct.nfs_direct_req* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %86 = call i32 @nfs_direct_complete(%struct.nfs_direct_req* %85)
  br label %87

87:                                               ; preds = %84, %80
  store i64 0, i64* %5, align 8
  br label %88

88:                                               ; preds = %87, %78
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local %struct.TYPE_2__* @NFS_PROTO(i32) #1

declare dso_local i32 @get_dreq(%struct.nfs_direct_req*) #1

declare dso_local i64 @nfs_direct_read_schedule_segment(%struct.nfs_pageio_descriptor*, %struct.iovec*, i64) #1

declare dso_local i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @nfs_direct_req_release(%struct.nfs_direct_req*) #1

declare dso_local i64 @put_dreq(%struct.nfs_direct_req*) #1

declare dso_local i32 @nfs_direct_complete(%struct.nfs_direct_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
