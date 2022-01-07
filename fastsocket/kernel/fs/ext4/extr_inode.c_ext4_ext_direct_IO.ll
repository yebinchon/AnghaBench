; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_ext_direct_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_ext_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32*, %struct.file* }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.iovec = type { i32 }
%struct.TYPE_6__ = type { i32* }

@WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ext4_get_block_dio_write = common dso_local global i32 0, align 4
@ext4_end_io_dio = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@EXT4_STATE_DIO_UNWRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kiocb*, %struct.iovec*, i64, i64)* @ext4_ext_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_direct_IO(i32 %0, %struct.kiocb* %1, %struct.iovec* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kiocb*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.kiocb* %1, %struct.kiocb** %8, align 8
  store %struct.iovec* %2, %struct.iovec** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 1
  %20 = load %struct.file*, %struct.file** %19, align 8
  store %struct.file* %20, %struct.file** %12, align 8
  %21 = load %struct.file*, %struct.file** %12, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %13, align 8
  %26 = load %struct.iovec*, %struct.iovec** %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @iov_length(%struct.iovec* %26, i64 %27)
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %15, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %16, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @WRITE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %136

35:                                               ; preds = %5
  %36 = load i64, i64* %16, align 8
  %37 = load %struct.inode*, %struct.inode** %13, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %41, label %136

41:                                               ; preds = %35
  %42 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %43 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %13, align 8
  %45 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %48 = call i32 @is_sync_kiocb(%struct.kiocb* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %41
  %51 = load %struct.inode*, %struct.inode** %13, align 8
  %52 = call i32* @ext4_init_io_end(%struct.inode* %51)
  %53 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %54 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %56 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %143

62:                                               ; preds = %50
  %63 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %64 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.inode*, %struct.inode** %13, align 8
  %67 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32* %65, i32** %68, align 8
  br label %69

69:                                               ; preds = %62, %41
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %72 = load %struct.inode*, %struct.inode** %13, align 8
  %73 = load %struct.inode*, %struct.inode** %13, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iovec*, %struct.iovec** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i32, i32* @ext4_get_block_dio_write, align 4
  %82 = load i32, i32* @ext4_end_io_dio, align 4
  %83 = call i32 @blockdev_direct_IO(i32 %70, %struct.kiocb* %71, %struct.inode* %72, i32 %77, %struct.iovec* %78, i64 %79, i64 %80, i32 %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %85 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %69
  %89 = load %struct.inode*, %struct.inode** %13, align 8
  %90 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %88, %69
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @EIOCBQUEUED, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load i32, i32* %14, align 4
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %102 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %107 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @ext4_free_io_end(i32* %108)
  %110 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %111 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %110, i32 0, i32 0
  store i32* null, i32** %111, align 8
  br label %134

112:                                              ; preds = %100, %97, %92
  %113 = load i32, i32* %14, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %112
  %116 = load %struct.inode*, %struct.inode** %13, align 8
  %117 = load i32, i32* @EXT4_STATE_DIO_UNWRITTEN, align 4
  %118 = call i64 @ext4_test_inode_state(%struct.inode* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = load %struct.inode*, %struct.inode** %13, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @ext4_convert_unwritten_extents(%struct.inode* %121, i64 %122, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %17, align 4
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %127, %120
  %130 = load %struct.inode*, %struct.inode** %13, align 8
  %131 = load i32, i32* @EXT4_STATE_DIO_UNWRITTEN, align 4
  %132 = call i32 @ext4_clear_inode_state(%struct.inode* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %115, %112
  br label %134

134:                                              ; preds = %133, %105
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %6, align 4
  br label %143

136:                                              ; preds = %35, %5
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %139 = load %struct.iovec*, %struct.iovec** %9, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* %11, align 8
  %142 = call i32 @ext4_ind_direct_IO(i32 %137, %struct.kiocb* %138, %struct.iovec* %139, i64 %140, i64 %141)
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %136, %134, %59
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local %struct.TYPE_6__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i32* @ext4_init_io_end(%struct.inode*) #1

declare dso_local i32 @blockdev_direct_IO(i32, %struct.kiocb*, %struct.inode*, i32, %struct.iovec*, i64, i64, i32, i32) #1

declare dso_local i32 @ext4_free_io_end(i32*) #1

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_convert_unwritten_extents(%struct.inode*, i64, i32) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ind_direct_IO(i32, %struct.kiocb*, %struct.iovec*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
