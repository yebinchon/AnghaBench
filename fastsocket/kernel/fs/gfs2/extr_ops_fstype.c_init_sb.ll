; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_init_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_init_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.super_block* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.super_block = type { i32, i32 }
%struct.gfs2_holder = type { i32 }

@GFS2_SB_LOCK = common dso_local global i32 0, align 4
@gfs2_meta_glops = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"can't acquire superblock glock: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"can't read superblock: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"FS block size (%u) is too small for device block size (%u)\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"FS block size (%u) is too big for machine page size (%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @init_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sb(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.gfs2_holder, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 4
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %14 = load i32, i32* @GFS2_SB_LOCK, align 4
  %15 = load i32, i32* @LM_ST_SHARED, align 4
  %16 = call i32 @gfs2_glock_nq_num(%struct.gfs2_sbd* %13, i32 %14, i32* @gfs2_meta_glops, i32 %15, i32 0, %struct.gfs2_holder* %7)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = call i32 (%struct.gfs2_sbd*, i8*, i64, ...) @fs_err(%struct.gfs2_sbd* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %138

25:                                               ; preds = %2
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @gfs2_read_sb(%struct.gfs2_sbd* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32 (%struct.gfs2_sbd*, i8*, i64, ...) @fs_err(%struct.gfs2_sbd* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %135

36:                                               ; preds = %25
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %38 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bdev_logical_block_size(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = icmp slt i64 %40, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %36
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %51 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %52 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.super_block*, %struct.super_block** %6, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bdev_logical_block_size(i32 %57)
  %59 = call i32 (%struct.gfs2_sbd*, i8*, i64, ...) @fs_err(%struct.gfs2_sbd* %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %54, i32 %58)
  br label %135

60:                                               ; preds = %36
  %61 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %62 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PAGE_SIZE, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  %70 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PAGE_SIZE, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 (%struct.gfs2_sbd*, i8*, i64, ...) @fs_err(%struct.gfs2_sbd* %70, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %74, i32 %76)
  br label %135

78:                                               ; preds = %60
  %79 = load %struct.super_block*, %struct.super_block** %6, align 8
  %80 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %81 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @sb_set_blocksize(%struct.super_block* %79, i64 %83)
  %85 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %86 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %8, align 4
  %90 = load %struct.super_block*, %struct.super_block** %6, align 8
  %91 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %92 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %91, i32 0, i32 0
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @gfs2_lookup_root(%struct.super_block* %90, i32* %92, i32 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %78
  br label %135

98:                                               ; preds = %78
  %99 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %100 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %8, align 4
  %104 = load %struct.super_block*, %struct.super_block** %6, align 8
  %105 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %106 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %105, i32 0, i32 1
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @gfs2_lookup_root(%struct.super_block* %104, i32* %106, i32 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %98
  %112 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %113 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dput(i32 %114)
  br label %135

116:                                              ; preds = %98
  %117 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %118 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %124 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  br label %130

126:                                              ; preds = %116
  %127 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %128 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i32 [ %125, %122 ], [ %129, %126 ]
  %132 = call i32 @dget(i32 %131)
  %133 = load %struct.super_block*, %struct.super_block** %6, align 8
  %134 = getelementptr inbounds %struct.super_block, %struct.super_block* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %111, %97, %67, %47, %31
  %136 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %7)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %135, %19
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @gfs2_glock_nq_num(%struct.gfs2_sbd*, i32, i32*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i64, ...) #1

declare dso_local i32 @gfs2_read_sb(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i64) #1

declare dso_local i32 @gfs2_lookup_root(%struct.super_block*, i32*, i32, i8*) #1

declare dso_local i32 @dput(i32) #1

declare dso_local i32 @dget(i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
