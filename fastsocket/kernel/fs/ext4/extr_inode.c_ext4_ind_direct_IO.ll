; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_ind_direct_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_ind_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iovec = type { i32 }
%struct.ext4_inode_info = type { i64 }

@WRITE = common dso_local global i32 0, align 4
@ext4_get_block = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kiocb*, %struct.iovec*, i64, i64)* @ext4_ind_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ind_direct_IO(i32 %0, %struct.kiocb* %1, %struct.iovec* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.ext4_inode_info*, align 8
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
  %31 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %30)
  store %struct.ext4_inode_info* %31, %struct.ext4_inode_info** %13, align 8
  store i32 0, i32* %16, align 4
  %32 = load %struct.iovec*, %struct.iovec** %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @iov_length(%struct.iovec* %32, i64 %33)
  store i64 %34, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @WRITE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %5
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %17, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %19, align 8
  %42 = load i64, i64* %19, align 8
  %43 = load %struct.inode*, %struct.inode** %12, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %38
  %48 = load %struct.inode*, %struct.inode** %12, align 8
  %49 = call i32* @ext4_journal_start(%struct.inode* %48, i32 2)
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = call i64 @IS_ERR(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @PTR_ERR(i32* %54)
  store i32 %55, i32* %15, align 4
  br label %162

56:                                               ; preds = %47
  %57 = load i32*, i32** %14, align 8
  %58 = load %struct.inode*, %struct.inode** %12, align 8
  %59 = call i32 @ext4_orphan_add(i32* %57, %struct.inode* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @ext4_journal_stop(i32* %63)
  br label %162

65:                                               ; preds = %56
  store i32 1, i32* %16, align 4
  %66 = load %struct.inode*, %struct.inode** %12, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %13, align 8
  %70 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @ext4_journal_stop(i32* %71)
  br label %73

73:                                               ; preds = %65, %38
  br label %74

74:                                               ; preds = %73, %5
  br label %75

75:                                               ; preds = %99, %74
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %78 = load %struct.inode*, %struct.inode** %12, align 8
  %79 = load %struct.inode*, %struct.inode** %12, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.iovec*, %struct.iovec** %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i32, i32* @ext4_get_block, align 4
  %88 = call i32 @blockdev_direct_IO(i32 %76, %struct.kiocb* %77, %struct.inode* %78, i32 %83, %struct.iovec* %84, i64 %85, i64 %86, i32 %87, i32* null)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @ENOSPC, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %75
  %94 = load %struct.inode*, %struct.inode** %12, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = call i64 @ext4_should_retry_alloc(%struct.TYPE_4__* %96, i32* %18)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %75

100:                                              ; preds = %93, %75
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %161

103:                                              ; preds = %100
  %104 = load %struct.inode*, %struct.inode** %12, align 8
  %105 = call i32* @ext4_journal_start(%struct.inode* %104, i32 2)
  store i32* %105, i32** %14, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = call i64 @IS_ERR(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %103
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @PTR_ERR(i32* %110)
  store i32 %111, i32* %15, align 4
  %112 = load %struct.inode*, %struct.inode** %12, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.inode*, %struct.inode** %12, align 8
  %118 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %117)
  br label %119

119:                                              ; preds = %116, %109
  br label %162

120:                                              ; preds = %103
  %121 = load %struct.inode*, %struct.inode** %12, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32*, i32** %14, align 8
  %127 = load %struct.inode*, %struct.inode** %12, align 8
  %128 = call i32 @ext4_orphan_del(i32* %126, %struct.inode* %127)
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %15, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %129
  %133 = load i64, i64* %9, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %133, %135
  store i64 %136, i64* %21, align 8
  %137 = load i64, i64* %21, align 8
  %138 = load %struct.inode*, %struct.inode** %12, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %137, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %132
  %143 = load i64, i64* %21, align 8
  %144 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %13, align 8
  %145 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.inode*, %struct.inode** %12, align 8
  %147 = load i64, i64* %21, align 8
  %148 = call i32 @i_size_write(%struct.inode* %146, i64 %147)
  %149 = load i32*, i32** %14, align 8
  %150 = load %struct.inode*, %struct.inode** %12, align 8
  %151 = call i32 @ext4_mark_inode_dirty(i32* %149, %struct.inode* %150)
  br label %152

152:                                              ; preds = %142, %132
  br label %153

153:                                              ; preds = %152, %129
  %154 = load i32*, i32** %14, align 8
  %155 = call i32 @ext4_journal_stop(i32* %154)
  store i32 %155, i32* %20, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %20, align 4
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %158, %153
  br label %161

161:                                              ; preds = %160, %100
  br label %162

162:                                              ; preds = %161, %119, %62, %53
  %163 = load i32, i32* %15, align 4
  ret i32 %163
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @blockdev_direct_IO(i32, %struct.kiocb*, %struct.inode*, i32, %struct.iovec*, i64, i64, i32, i32*) #1

declare dso_local i64 @ext4_should_retry_alloc(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
