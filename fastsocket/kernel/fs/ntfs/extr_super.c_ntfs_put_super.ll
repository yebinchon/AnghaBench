; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_super.c_ntfs_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_super.c_ntfs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i64, i32*, i64, i32*, i32*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [10 x i8] c"Entering.\00", align 1
@ntfs_lock = common dso_local global i32 0, align 4
@default_upcase = common dso_local global i32* null, align 8
@ntfs_nr_upcase_users = common dso_local global i32 0, align 4
@ntfs_nr_compression_users = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@VOLUME_IS_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ntfs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntfs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.TYPE_6__* @NTFS_SB(%struct.super_block* %4)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %3, align 8
  %6 = call i32 @ntfs_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @lock_kernel()
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 22
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @iput(i32* %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 22
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 3
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 16
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 16
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @iput(i32* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 16
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 15
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 15
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @iput(i32* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 15
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 14
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @iput(i32* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 14
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 12
  %52 = call i32 @down_write(i32* %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 13
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @iput(i32* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 13
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 12
  %61 = call i32 @up_write(i32* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 10
  %64 = call i32 @down_write(i32* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 11
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @iput(i32* %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 11
  store i32* null, i32** %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 10
  %73 = call i32 @up_write(i32* %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 7
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @iput(i32* %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 7
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 6
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %43
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @ntfs_free(i32* %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 5
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %86, %43
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  %96 = call i32 @mutex_lock(i32* @ntfs_lock)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** @default_upcase, align 8
  %101 = icmp eq i32* %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load i32, i32* @ntfs_nr_upcase_users, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* @ntfs_nr_upcase_users, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %102, %93
  %108 = load i32, i32* @ntfs_nr_upcase_users, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load i32*, i32** @default_upcase, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32*, i32** @default_upcase, align 8
  %115 = call i32 @ntfs_free(i32* %114)
  store i32* null, i32** @default_upcase, align 8
  br label %116

116:                                              ; preds = %113, %110, %107
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp sle i32 %119, 4096
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i32, i32* @ntfs_nr_compression_users, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* @ntfs_nr_compression_users, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = call i32 (...) @free_compression_buffers()
  br label %127

127:                                              ; preds = %125, %121, %116
  %128 = call i32 @mutex_unlock(i32* @ntfs_lock)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @ntfs_free(i32* %136)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %133, %127
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @unload_nls(i32 %143)
  %145 = load %struct.super_block*, %struct.super_block** %2, align 8
  %146 = getelementptr inbounds %struct.super_block, %struct.super_block* %145, i32 0, i32 1
  store i32* null, i32** %146, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %148 = call i32 @kfree(%struct.TYPE_6__* %147)
  %149 = call i32 (...) @unlock_kernel()
  ret void
}

declare dso_local %struct.TYPE_6__* @NTFS_SB(%struct.super_block*) #1

declare dso_local i32 @ntfs_debug(i8*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @iput(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ntfs_free(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_compression_buffers(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unload_nls(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
