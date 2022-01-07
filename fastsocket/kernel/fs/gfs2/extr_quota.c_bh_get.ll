; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_bh_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_bh_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32, i32, %struct.gfs2_quota_change*, %struct.buffer_head*, %struct.TYPE_3__* }
%struct.gfs2_quota_change = type { i32 }
%struct.buffer_head = type { i32, i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32, i32 }
%struct.gfs2_inode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DIO_WAIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_METATYPE_QC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_quota_data*)* @bh_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh_get(%struct.gfs2_quota_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_quota_data*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head, align 8
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %3, align 8
  %11 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %4, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.gfs2_inode* @GFS2_I(i32 %18)
  store %struct.gfs2_inode* %19, %struct.gfs2_inode** %5, align 8
  %20 = bitcast %struct.buffer_head* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %25 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %31 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  store i32 0, i32* %2, align 4
  br label %111

33:                                               ; preds = %1
  %34 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %35 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %38 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = udiv i32 %36, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %42 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %45 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = urem i32 %43, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %49 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 1, %51
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %55 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %54, i32 0, i32 1
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @gfs2_block_map(%struct.TYPE_4__* %55, i32 %56, %struct.buffer_head* %10, i32 0)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %33
  br label %102

61:                                               ; preds = %33
  %62 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %63 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DIO_WAIT, align 4
  %68 = call i32 @gfs2_meta_read(i32 %64, i32 %66, i32 %67, %struct.buffer_head** %8)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %102

72:                                               ; preds = %61
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %77 = load i32, i32* @GFS2_METATYPE_QC, align 4
  %78 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %75, %struct.buffer_head* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %99

81:                                               ; preds = %72
  %82 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %83 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %84 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %83, i32 0, i32 3
  store %struct.buffer_head* %82, %struct.buffer_head** %84, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 4
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = add i64 %88, %91
  %93 = inttoptr i64 %92 to %struct.gfs2_quota_change*
  %94 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %95 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %94, i32 0, i32 2
  store %struct.gfs2_quota_change* %93, %struct.gfs2_quota_change** %95, align 8
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %97 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  store i32 0, i32* %2, align 4
  br label %111

99:                                               ; preds = %80
  %100 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %101 = call i32 @brelse(%struct.buffer_head* %100)
  br label %102

102:                                              ; preds = %99, %71, %60
  %103 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %104 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %108 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %102, %81, %29
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gfs2_block_map(%struct.TYPE_4__*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @gfs2_meta_read(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
