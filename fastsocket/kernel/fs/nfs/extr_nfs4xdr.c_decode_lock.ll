; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_decode_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_decode_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_lock_res = type { i32, i32*, i32 }

@OP_LOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFS4ERR_DENIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_lock_res*)* @decode_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_lock(%struct.xdr_stream* %0, %struct.nfs_lock_res* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfs_lock_res*, align 8
  %5 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfs_lock_res* %1, %struct.nfs_lock_res** %4, align 8
  %6 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %7 = load i32, i32* @OP_LOCK, align 4
  %8 = call i32 @decode_op_hdr(%struct.xdr_stream* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %53

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %19 = load %struct.nfs_lock_res*, %struct.nfs_lock_res** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_lock_res, %struct.nfs_lock_res* %19, i32 0, i32 2
  %21 = call i32 @decode_stateid(%struct.xdr_stream* %18, i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %53

26:                                               ; preds = %17
  br label %36

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NFS4ERR_DENIED, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %34 = call i32 @decode_lock_denied(%struct.xdr_stream* %33, i32* null)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %35, %26
  %37 = load %struct.nfs_lock_res*, %struct.nfs_lock_res** %4, align 8
  %38 = getelementptr inbounds %struct.nfs_lock_res, %struct.nfs_lock_res* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.nfs_lock_res*, %struct.nfs_lock_res** %4, align 8
  %44 = getelementptr inbounds %struct.nfs_lock_res, %struct.nfs_lock_res* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @nfs_increment_open_seqid(i32 %42, i32* %45)
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.nfs_lock_res*, %struct.nfs_lock_res** %4, align 8
  %50 = getelementptr inbounds %struct.nfs_lock_res, %struct.nfs_lock_res* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @nfs_increment_lock_seqid(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %25, %13
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @decode_op_hdr(%struct.xdr_stream*, i32) #1

declare dso_local i32 @decode_stateid(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_lock_denied(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @nfs_increment_open_seqid(i32, i32*) #1

declare dso_local i32 @nfs_increment_lock_seqid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
