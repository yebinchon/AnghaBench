; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_write.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iovec*, i64, i32, i64)* @nfs_direct_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_direct_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.nfs_direct_req*, align 8
  %14 = alloca %struct.nfs_lock_context*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* @ENOMEM, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %11, align 8
  %17 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %12, align 8
  %24 = call %struct.nfs_direct_req* (...) @nfs_direct_req_alloc()
  store %struct.nfs_direct_req* %24, %struct.nfs_direct_req** %13, align 8
  %25 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %13, align 8
  %26 = icmp ne %struct.nfs_direct_req* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  br label %75

28:                                               ; preds = %5
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %13, align 8
  %31 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %30, i32 0, i32 3
  store %struct.inode* %29, %struct.inode** %31, align 8
  %32 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %33 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @nfs_file_open_context(%struct.TYPE_4__* %34)
  %36 = call i32 @get_nfs_open_context(i32 %35)
  %37 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %13, align 8
  %38 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %13, align 8
  %40 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.nfs_lock_context* @nfs_get_lock_context(i32 %41)
  store %struct.nfs_lock_context* %42, %struct.nfs_lock_context** %14, align 8
  %43 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %14, align 8
  %44 = call i64 @IS_ERR(%struct.nfs_lock_context* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %28
  %47 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %14, align 8
  %48 = call i64 @PTR_ERR(%struct.nfs_lock_context* %47)
  store i64 %48, i64* %11, align 8
  br label %72

49:                                               ; preds = %28
  %50 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %14, align 8
  %51 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %13, align 8
  %52 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %51, i32 0, i32 1
  store %struct.nfs_lock_context* %50, %struct.nfs_lock_context** %52, align 8
  %53 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %54 = call i32 @is_sync_kiocb(%struct.kiocb* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %58 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %13, align 8
  %59 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %58, i32 0, i32 0
  store %struct.kiocb* %57, %struct.kiocb** %59, align 8
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %13, align 8
  %62 = load %struct.iovec*, %struct.iovec** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @nfs_direct_write_schedule_iovec(%struct.nfs_direct_req* %61, %struct.iovec* %62, i64 %63, i32 %64)
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %13, align 8
  %70 = call i64 @nfs_direct_wait(%struct.nfs_direct_req* %69)
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %68, %60
  br label %72

72:                                               ; preds = %71, %46
  %73 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %13, align 8
  %74 = call i32 @nfs_direct_req_release(%struct.nfs_direct_req* %73)
  br label %75

75:                                               ; preds = %72, %27
  %76 = load i64, i64* %11, align 8
  ret i64 %76
}

declare dso_local %struct.nfs_direct_req* @nfs_direct_req_alloc(...) #1

declare dso_local i32 @get_nfs_open_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.TYPE_4__*) #1

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i64 @PTR_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i64 @nfs_direct_write_schedule_iovec(%struct.nfs_direct_req*, %struct.iovec*, i64, i32) #1

declare dso_local i64 @nfs_direct_wait(%struct.nfs_direct_req*) #1

declare dso_local i32 @nfs_direct_req_release(%struct.nfs_direct_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
