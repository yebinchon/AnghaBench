; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_file_aio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_file_aio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"(0x%p, %u, '%.*s')\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"generic_file_aio_read returned -EINVAL\0A\00", align 1
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* @ocfs2_file_aio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_file_aio_read(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.file*, align 8
  %14 = alloca %struct.inode*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %15, i32 0, i32 1
  %17 = load %struct.file*, %struct.file** %16, align 8
  store %struct.file* %17, %struct.file** %13, align 8
  %18 = load %struct.file*, %struct.file** %13, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %14, align 8
  %24 = load %struct.file*, %struct.file** %13, align 8
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.file*, %struct.file** %13, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.file*, %struct.file** %13, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mlog_entry(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.file* %24, i32 %26, i32 %33, i32 %40)
  %42 = load %struct.inode*, %struct.inode** %14, align 8
  %43 = icmp ne %struct.inode* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %126

49:                                               ; preds = %4
  %50 = load %struct.file*, %struct.file** %13, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @O_DIRECT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %49
  %57 = load %struct.inode*, %struct.inode** %14, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = call i32 @down_read(i32* %58)
  store i32 1, i32* %11, align 4
  %60 = load %struct.inode*, %struct.inode** %14, align 8
  %61 = call i32 @ocfs2_rw_lock(%struct.inode* %60, i32 0)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %126

67:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  %68 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @ocfs2_iocb_set_rw_locked(%struct.kiocb* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %49
  %72 = load %struct.inode*, %struct.inode** %14, align 8
  %73 = load %struct.file*, %struct.file** %13, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ocfs2_inode_lock_atime(%struct.inode* %72, i32 %75, i32* %12)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %126

82:                                               ; preds = %71
  %83 = load %struct.inode*, %struct.inode** %14, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @ocfs2_inode_unlock(%struct.inode* %83, i32 %84)
  %86 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %87 = load %struct.iovec*, %struct.iovec** %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %90 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @generic_file_aio_read(%struct.kiocb* %86, %struct.iovec* %87, i64 %88, i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %82
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @EIOCBQUEUED, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.file*, %struct.file** %13, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @O_DIRECT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %104, %99
  %113 = phi i1 [ false, %99 ], [ %111, %104 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @BUG_ON(i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @EIOCBQUEUED, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %112
  %121 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %122 = call i32 @ocfs2_iocb_is_rw_locked(%struct.kiocb* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120, %112
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %124, %120
  br label %126

126:                                              ; preds = %125, %79, %64, %44
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.inode*, %struct.inode** %14, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  %132 = call i32 @up_read(i32* %131)
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, -1
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.inode*, %struct.inode** %14, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @ocfs2_rw_unlock(%struct.inode* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %133
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @mlog_exit(i32 %141)
  %143 = load i32, i32* %9, align 4
  ret i32 %143
}

declare dso_local i32 @mlog_entry(i8*, %struct.file*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ocfs2_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_iocb_set_rw_locked(%struct.kiocb*, i32) #1

declare dso_local i32 @ocfs2_inode_lock_atime(%struct.inode*, i32, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @generic_file_aio_read(%struct.kiocb*, %struct.iovec*, i64, i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_iocb_is_rw_locked(%struct.kiocb*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
