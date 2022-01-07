; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_direct_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iovec = type { i32 }
%struct.ext3_inode_info = type { i64 }

@WRITE = common dso_local global i32 0, align 4
@ext3_get_block = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kiocb*, %struct.iovec*, i64, i64)* @ext3_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_direct_IO(i32 %0, %struct.kiocb* %1, %struct.iovec* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.ext3_inode_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.kiocb* %1, %struct.kiocb** %7, align 8
  store %struct.iovec* %2, %struct.iovec** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %22 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %22, i32 0, i32 0
  %24 = load %struct.file*, %struct.file** %23, align 8
  store %struct.file* %24, %struct.file** %11, align 8
  %25 = load %struct.file*, %struct.file** %11, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %12, align 8
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = call %struct.ext3_inode_info* @EXT3_I(%struct.inode* %30)
  store %struct.ext3_inode_info* %31, %struct.ext3_inode_info** %13, align 8
  store i32 0, i32* %16, align 4
  %32 = load %struct.iovec*, %struct.iovec** %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @iov_length(%struct.iovec* %32, i64 %33)
  store i64 %34, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %35 = load %struct.inode*, %struct.inode** %12, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.iovec*, %struct.iovec** %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @iov_length(%struct.iovec* %37, i64 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @trace_ext3_direct_IO_enter(%struct.inode* %35, i64 %36, i64 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @WRITE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %5
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %17, align 8
  %48 = add i64 %46, %47
  store i64 %48, i64* %19, align 8
  %49 = load i64, i64* %19, align 8
  %50 = load %struct.inode*, %struct.inode** %12, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %45
  %55 = load %struct.inode*, %struct.inode** %12, align 8
  %56 = call i32* @ext3_journal_start(%struct.inode* %55, i32 2)
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = call i64 @IS_ERR(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @PTR_ERR(i32* %61)
  store i32 %62, i32* %15, align 4
  br label %161

63:                                               ; preds = %54
  %64 = load i32*, i32** %14, align 8
  %65 = load %struct.inode*, %struct.inode** %12, align 8
  %66 = call i32 @ext3_orphan_add(i32* %64, %struct.inode* %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @ext3_journal_stop(i32* %70)
  br label %161

72:                                               ; preds = %63
  store i32 1, i32* %16, align 4
  %73 = load %struct.inode*, %struct.inode** %12, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %13, align 8
  %77 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @ext3_journal_stop(i32* %78)
  br label %80

80:                                               ; preds = %72, %45
  br label %81

81:                                               ; preds = %80, %5
  br label %82

82:                                               ; preds = %106, %81
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %85 = load %struct.inode*, %struct.inode** %12, align 8
  %86 = load %struct.inode*, %struct.inode** %12, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.iovec*, %struct.iovec** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i32, i32* @ext3_get_block, align 4
  %95 = call i32 @blockdev_direct_IO(i32 %83, %struct.kiocb* %84, %struct.inode* %85, i32 %90, %struct.iovec* %91, i64 %92, i64 %93, i32 %94, i32* null)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @ENOSPC, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %82
  %101 = load %struct.inode*, %struct.inode** %12, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = call i64 @ext3_should_retry_alloc(%struct.TYPE_4__* %103, i32* %18)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %82

107:                                              ; preds = %100, %82
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %160

110:                                              ; preds = %107
  %111 = load %struct.inode*, %struct.inode** %12, align 8
  %112 = call i32* @ext3_journal_start(%struct.inode* %111, i32 2)
  store i32* %112, i32** %14, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = call i64 @IS_ERR(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @PTR_ERR(i32* %117)
  store i32 %118, i32* %15, align 4
  br label %161

119:                                              ; preds = %110
  %120 = load %struct.inode*, %struct.inode** %12, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32*, i32** %14, align 8
  %126 = load %struct.inode*, %struct.inode** %12, align 8
  %127 = call i32 @ext3_orphan_del(i32* %125, %struct.inode* %126)
  br label %128

128:                                              ; preds = %124, %119
  %129 = load i32, i32* %15, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %128
  %132 = load i64, i64* %9, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  store i64 %135, i64* %21, align 8
  %136 = load i64, i64* %21, align 8
  %137 = load %struct.inode*, %struct.inode** %12, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %136, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %131
  %142 = load i64, i64* %21, align 8
  %143 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %13, align 8
  %144 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.inode*, %struct.inode** %12, align 8
  %146 = load i64, i64* %21, align 8
  %147 = call i32 @i_size_write(%struct.inode* %145, i64 %146)
  %148 = load i32*, i32** %14, align 8
  %149 = load %struct.inode*, %struct.inode** %12, align 8
  %150 = call i32 @ext3_mark_inode_dirty(i32* %148, %struct.inode* %149)
  br label %151

151:                                              ; preds = %141, %131
  br label %152

152:                                              ; preds = %151, %128
  %153 = load i32*, i32** %14, align 8
  %154 = call i32 @ext3_journal_stop(i32* %153)
  store i32 %154, i32* %20, align 4
  %155 = load i32, i32* %15, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* %20, align 4
  store i32 %158, i32* %15, align 4
  br label %159

159:                                              ; preds = %157, %152
  br label %160

160:                                              ; preds = %159, %107
  br label %161

161:                                              ; preds = %160, %116, %69, %60
  %162 = load %struct.inode*, %struct.inode** %12, align 8
  %163 = load i64, i64* %9, align 8
  %164 = load %struct.iovec*, %struct.iovec** %8, align 8
  %165 = load i64, i64* %10, align 8
  %166 = call i64 @iov_length(%struct.iovec* %164, i64 %165)
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @trace_ext3_direct_IO_exit(%struct.inode* %162, i64 %163, i64 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %15, align 4
  ret i32 %170
}

declare dso_local %struct.ext3_inode_info* @EXT3_I(%struct.inode*) #1

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i32 @trace_ext3_direct_IO_enter(%struct.inode*, i64, i64, i32) #1

declare dso_local i32* @ext3_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext3_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext3_journal_stop(i32*) #1

declare dso_local i32 @blockdev_direct_IO(i32, %struct.kiocb*, %struct.inode*, i32, %struct.iovec*, i64, i64, i32, i32*) #1

declare dso_local i64 @ext3_should_retry_alloc(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @ext3_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @ext3_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @trace_ext3_direct_IO_exit(%struct.inode*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
