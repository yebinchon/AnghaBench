; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_file.c_ext4_file_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_file.c_ext4_file_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }
%struct.ext4_sb_info = type { i64 }
%struct.TYPE_8__ = type { i32 }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i64)* @ext4_file_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_file_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ext4_sb_info*, align 8
  %14 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %10, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %25 = call i32 @ext4_test_inode_flag(%struct.inode* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %70, label %27

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.ext4_sb_info* @EXT4_SB(i32 %30)
  store %struct.ext4_sb_info* %31, %struct.ext4_sb_info** %13, align 8
  %32 = load %struct.iovec*, %struct.iovec** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @iov_length(%struct.iovec* %32, i64 %33)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %37 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %27
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %43 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i64, i64* %14, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %27
  %50 = load i32, i32* @EFBIG, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %121

52:                                               ; preds = %46, %40
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %53, %54
  %56 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %57 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ugt i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.iovec*, %struct.iovec** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %64 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = sub nsw i64 %65, %66
  %68 = call i64 @iov_shorten(%struct.iovec* %61, i64 %62, i64 %67)
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %60, %52
  br label %96

70:                                               ; preds = %4
  %71 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %72 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @O_DIRECT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %81 = call i32 @is_sync_kiocb(%struct.kiocb* %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %79, %70
  %85 = phi i1 [ false, %70 ], [ %83, %79 ]
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.inode*, %struct.inode** %10, align 8
  %91 = load %struct.iovec*, %struct.iovec** %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @ext4_unaligned_aio(%struct.inode* %90, %struct.iovec* %91, i64 %92, i64 %93)
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %89, %84
  br label %96

96:                                               ; preds = %95, %69
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.inode*, %struct.inode** %10, align 8
  %101 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = call i32 @mutex_lock(i32* %102)
  %104 = load %struct.inode*, %struct.inode** %10, align 8
  %105 = call i32 @ext4_aiodio_wait(%struct.inode* %104)
  br label %106

106:                                              ; preds = %99, %96
  %107 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %108 = load %struct.iovec*, %struct.iovec** %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @generic_file_aio_write(%struct.kiocb* %107, %struct.iovec* %108, i64 %109, i64 %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.inode*, %struct.inode** %10, align 8
  %116 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %115)
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  br label %119

119:                                              ; preds = %114, %106
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %49
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i64 @iov_shorten(%struct.iovec*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i32 @ext4_unaligned_aio(%struct.inode*, %struct.iovec*, i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_aiodio_wait(%struct.inode*) #1

declare dso_local i32 @generic_file_aio_write(%struct.kiocb*, %struct.iovec*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
