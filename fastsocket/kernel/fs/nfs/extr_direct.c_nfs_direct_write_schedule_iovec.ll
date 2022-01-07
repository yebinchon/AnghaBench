; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_write_schedule_iovec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_write_schedule_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_direct_req = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iovec = type { i64 }
%struct.nfs_pageio_descriptor = type { %struct.nfs_direct_req* }
%struct.TYPE_2__ = type { i32 (%struct.nfs_pageio_descriptor*, %struct.inode*, i32, i32*)* }

@FLUSH_COND_STABLE = common dso_local global i32 0, align 4
@nfs_direct_write_completion_ops = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfs_direct_req*, %struct.iovec*, i64, i64)* @nfs_direct_write_schedule_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_direct_write_schedule_iovec(%struct.nfs_direct_req* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfs_direct_req*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nfs_pageio_descriptor, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.iovec*, align 8
  store %struct.nfs_direct_req* %0, %struct.nfs_direct_req** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %17 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load %struct.inode*, %struct.inode** %11, align 8
  %20 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.nfs_pageio_descriptor*, %struct.inode*, i32, i32*)*, i32 (%struct.nfs_pageio_descriptor*, %struct.inode*, i32, i32*)** %21, align 8
  %23 = load %struct.inode*, %struct.inode** %11, align 8
  %24 = load i32, i32* @FLUSH_COND_STABLE, align 4
  %25 = call i32 %22(%struct.nfs_pageio_descriptor* %10, %struct.inode* %23, i32 %24, i32* @nfs_direct_write_completion_ops)
  %26 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %27 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 0
  store %struct.nfs_direct_req* %26, %struct.nfs_direct_req** %27, align 8
  %28 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %29 = call i32 @get_dreq(%struct.nfs_direct_req* %28)
  store i64 0, i64* %14, align 8
  br label %30

30:                                               ; preds = %60, %4
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %30
  %35 = load %struct.iovec*, %struct.iovec** %7, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i64 %36
  store %struct.iovec* %37, %struct.iovec** %15, align 8
  %38 = load %struct.iovec*, %struct.iovec** %15, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @nfs_direct_write_schedule_segment(%struct.nfs_pageio_descriptor* %10, %struct.iovec* %38, i64 %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %63

44:                                               ; preds = %34
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.iovec*, %struct.iovec** %15, align 8
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %63

54:                                               ; preds = %44
  %55 = load %struct.iovec*, %struct.iovec** %15, align 8
  %56 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %14, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %14, align 8
  br label %30

63:                                               ; preds = %53, %43, %30
  %64 = call i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor* %10)
  %65 = load i64, i64* %13, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %69 = call i32 @nfs_direct_req_release(%struct.nfs_direct_req* %68)
  %70 = load i64, i64* %12, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i64, i64* %12, align 8
  br label %77

74:                                               ; preds = %67
  %75 = load i64, i64* @EIO, align 8
  %76 = sub nsw i64 0, %75
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i64 [ %73, %72 ], [ %76, %74 ]
  store i64 %78, i64* %5, align 8
  br label %90

79:                                               ; preds = %63
  %80 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %81 = call i64 @put_dreq(%struct.nfs_direct_req* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %85 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %6, align 8
  %86 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %85, i32 0, i32 0
  %87 = load %struct.inode*, %struct.inode** %86, align 8
  %88 = call i32 @nfs_direct_write_complete(%struct.nfs_direct_req* %84, %struct.inode* %87)
  br label %89

89:                                               ; preds = %83, %79
  store i64 0, i64* %5, align 8
  br label %90

90:                                               ; preds = %89, %77
  %91 = load i64, i64* %5, align 8
  ret i64 %91
}

declare dso_local %struct.TYPE_2__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @get_dreq(%struct.nfs_direct_req*) #1

declare dso_local i64 @nfs_direct_write_schedule_segment(%struct.nfs_pageio_descriptor*, %struct.iovec*, i64) #1

declare dso_local i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @nfs_direct_req_release(%struct.nfs_direct_req*) #1

declare dso_local i64 @put_dreq(%struct.nfs_direct_req*) #1

declare dso_local i32 @nfs_direct_write_complete(%struct.nfs_direct_req*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
