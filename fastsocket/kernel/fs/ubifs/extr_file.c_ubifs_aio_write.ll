; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_ubifs_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_ubifs_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.iovec = type { i32 }

@O_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* @ubifs_aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.ubifs_info*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %15 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %12, align 8
  %21 = load %struct.inode*, %struct.inode** %12, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %24, align 8
  store %struct.ubifs_info* %25, %struct.ubifs_info** %13, align 8
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = call i32 @update_mctime(%struct.ubifs_info* %26, %struct.inode* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %70

33:                                               ; preds = %4
  %34 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %35 = load %struct.iovec*, %struct.iovec** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @generic_file_aio_write(%struct.kiocb* %34, %struct.iovec* %35, i64 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %70

43:                                               ; preds = %33
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = load %struct.inode*, %struct.inode** %12, align 8
  %48 = call i64 @IS_SYNC(%struct.inode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %52 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @O_SYNC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50, %46
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %61 = load %struct.inode*, %struct.inode** %12, align 8
  %62 = call i32 @ubifs_sync_wbufs_by_inode(%struct.ubifs_info* %60, %struct.inode* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %70

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %50, %43
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %65, %41, %31
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @update_mctime(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @generic_file_aio_write(%struct.kiocb*, %struct.iovec*, i64, i32) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ubifs_sync_wbufs_by_inode(%struct.ubifs_info*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
