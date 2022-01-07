; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_file_direct_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_file_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { %struct.TYPE_10__, %struct.address_space* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFSIOS_DIRECTWRITTENBYTES = common dso_local global i32 0, align 4
@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"NFS: direct write(%s/%s, %zd@%Ld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_file_direct_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.inode*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %17 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %16, i32 0, i32 1
  %18 = load %struct.file*, %struct.file** %17, align 8
  store %struct.file* %18, %struct.file** %10, align 8
  %19 = load %struct.file*, %struct.file** %10, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = load %struct.address_space*, %struct.address_space** %20, align 8
  store %struct.address_space* %21, %struct.address_space** %11, align 8
  %22 = load %struct.iovec*, %struct.iovec** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @iov_length(%struct.iovec* %22, i64 %23)
  store i64 %24, i64* %12, align 8
  %25 = load %struct.address_space*, %struct.address_space** %11, align 8
  %26 = getelementptr inbounds %struct.address_space, %struct.address_space* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  %28 = load i32, i32* @NFSIOS_DIRECTWRITTENBYTES, align 4
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @nfs_add_stats(%struct.inode* %27, i32 %28, i64 %29)
  %31 = load i32, i32* @FILE, align 4
  %32 = load %struct.file*, %struct.file** %10, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.file*, %struct.file** %10, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @dfprintk(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %47, i64 %48, i64 %49)
  %51 = load %struct.file*, %struct.file** %10, align 8
  %52 = call i32 @generic_write_checks(%struct.file* %51, i64* %8, i64* %12, i32 0)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %4
  br label %112

56:                                               ; preds = %4
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  %59 = load i64, i64* %12, align 8
  %60 = trunc i64 %59 to i32
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %112

63:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  br label %112

67:                                               ; preds = %63
  %68 = load %struct.address_space*, %struct.address_space** %11, align 8
  %69 = call i32 @nfs_sync_mapping(%struct.address_space* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %112

73:                                               ; preds = %67
  %74 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %75 = load %struct.iovec*, %struct.iovec** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @nfs_direct_write(%struct.kiocb* %74, %struct.iovec* %75, i64 %76, i64 %77, i64 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %73
  %83 = load %struct.address_space*, %struct.address_space** %11, align 8
  %84 = getelementptr inbounds %struct.address_space, %struct.address_space* %83, i32 0, i32 0
  %85 = load %struct.inode*, %struct.inode** %84, align 8
  store %struct.inode* %85, %struct.inode** %13, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %91 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.inode*, %struct.inode** %13, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = call i32 @spin_lock(i32* %93)
  %95 = load %struct.inode*, %struct.inode** %13, align 8
  %96 = call i64 @i_size_read(%struct.inode* %95)
  %97 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %98 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %82
  %102 = load %struct.inode*, %struct.inode** %13, align 8
  %103 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %104 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @i_size_write(%struct.inode* %102, i64 %105)
  br label %107

107:                                              ; preds = %101, %82
  %108 = load %struct.inode*, %struct.inode** %13, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock(i32* %109)
  br label %111

111:                                              ; preds = %107, %73
  br label %112

112:                                              ; preds = %111, %72, %66, %62, %55
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i64) #1

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @generic_write_checks(%struct.file*, i64*, i64*, i32) #1

declare dso_local i32 @nfs_sync_mapping(%struct.address_space*) #1

declare dso_local i32 @nfs_direct_write(%struct.kiocb*, %struct.iovec*, i64, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
