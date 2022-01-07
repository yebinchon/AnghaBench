; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }
%struct.nfs_direct_req = type { %struct.kiocb*, %struct.nfs_lock_context*, i32, %struct.inode* }
%struct.nfs_lock_context = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iovec*, i64, i32)* @nfs_direct_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_direct_read(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.nfs_direct_req*, align 8
  %12 = alloca %struct.nfs_lock_context*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* @ENOMEM, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %9, align 8
  %15 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = call %struct.nfs_direct_req* (...) @nfs_direct_req_alloc()
  store %struct.nfs_direct_req* %22, %struct.nfs_direct_req** %11, align 8
  %23 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %11, align 8
  %24 = icmp eq %struct.nfs_direct_req* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %73

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %11, align 8
  %29 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %28, i32 0, i32 3
  store %struct.inode* %27, %struct.inode** %29, align 8
  %30 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %31 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @nfs_file_open_context(%struct.TYPE_4__* %32)
  %34 = call i32 @get_nfs_open_context(i32 %33)
  %35 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %11, align 8
  %36 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %11, align 8
  %38 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.nfs_lock_context* @nfs_get_lock_context(i32 %39)
  store %struct.nfs_lock_context* %40, %struct.nfs_lock_context** %12, align 8
  %41 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %12, align 8
  %42 = call i64 @IS_ERR(%struct.nfs_lock_context* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %26
  %45 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %12, align 8
  %46 = call i64 @PTR_ERR(%struct.nfs_lock_context* %45)
  store i64 %46, i64* %9, align 8
  br label %70

47:                                               ; preds = %26
  %48 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %12, align 8
  %49 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %11, align 8
  %50 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %49, i32 0, i32 1
  store %struct.nfs_lock_context* %48, %struct.nfs_lock_context** %50, align 8
  %51 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %52 = call i32 @is_sync_kiocb(%struct.kiocb* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %56 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %11, align 8
  %57 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %56, i32 0, i32 0
  store %struct.kiocb* %55, %struct.kiocb** %57, align 8
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %11, align 8
  %60 = load %struct.iovec*, %struct.iovec** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @nfs_direct_read_schedule_iovec(%struct.nfs_direct_req* %59, %struct.iovec* %60, i64 %61, i32 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %11, align 8
  %68 = call i64 @nfs_direct_wait(%struct.nfs_direct_req* %67)
  store i64 %68, i64* %9, align 8
  br label %69

69:                                               ; preds = %66, %58
  br label %70

70:                                               ; preds = %69, %44
  %71 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %11, align 8
  %72 = call i32 @nfs_direct_req_release(%struct.nfs_direct_req* %71)
  br label %73

73:                                               ; preds = %70, %25
  %74 = load i64, i64* %9, align 8
  ret i64 %74
}

declare dso_local %struct.nfs_direct_req* @nfs_direct_req_alloc(...) #1

declare dso_local i32 @get_nfs_open_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.TYPE_4__*) #1

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i64 @PTR_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i64 @nfs_direct_read_schedule_iovec(%struct.nfs_direct_req*, %struct.iovec*, i64, i32) #1

declare dso_local i64 @nfs_direct_wait(%struct.nfs_direct_req*) #1

declare dso_local i32 @nfs_direct_req_release(%struct.nfs_direct_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
