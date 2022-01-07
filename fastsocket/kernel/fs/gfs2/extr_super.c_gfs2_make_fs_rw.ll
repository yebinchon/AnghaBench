; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_make_fs_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_make_fs_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_inode = type { %struct.gfs2_glock* }
%struct.gfs2_glock = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.gfs2_glock*, i32)* }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_log_header_host = type { i32, i32, i64 }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@DIO_METADATA = common dso_local global i32 0, align 4
@GFS2_LOG_HEAD_UNMOUNT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SDF_JOURNAL_LIVE = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_make_fs_rw(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_glock*, align 8
  %6 = alloca %struct.gfs2_holder, align 4
  %7 = alloca %struct.gfs2_log_header_host, align 8
  %8 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.gfs2_inode* @GFS2_I(i32 %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %4, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 0
  %17 = load %struct.gfs2_glock*, %struct.gfs2_glock** %16, align 8
  store %struct.gfs2_glock* %17, %struct.gfs2_glock** %5, align 8
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LM_ST_SHARED, align 4
  %22 = call i32 @gfs2_glock_nq_init(i32 %20, i32 %21, i32 0, %struct.gfs2_holder* %6)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %2, align 4
  br label %82

27:                                               ; preds = %1
  %28 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %29 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.gfs2_glock*, i32)*, i32 (%struct.gfs2_glock*, i32)** %31, align 8
  %33 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %34 = load i32, i32* @DIO_METADATA, align 4
  %35 = call i32 %32(%struct.gfs2_glock* %33, i32 %34)
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %37 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i32 @gfs2_find_jhead(%struct.TYPE_4__* %38, %struct.gfs2_log_header_host* %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %75

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GFS2_LOG_HEAD_UNMOUNT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %51 = call i32 @gfs2_consist(%struct.gfs2_sbd* %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %75

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %7, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %59 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %61 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %7, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @gfs2_log_pointers_init(%struct.gfs2_sbd* %60, i32 %62)
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %65 = call i32 @gfs2_quota_init(%struct.gfs2_sbd* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %75

69:                                               ; preds = %54
  %70 = load i32, i32* @SDF_JOURNAL_LIVE, align 4
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 0
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  %74 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %6)
  store i32 0, i32* %2, align 4
  br label %82

75:                                               ; preds = %68, %49, %42
  %76 = load i32, i32* @GL_NOCACHE, align 4
  %77 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  %80 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %6)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %75, %69, %25
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_find_jhead(%struct.TYPE_4__*, %struct.gfs2_log_header_host*) #1

declare dso_local i32 @gfs2_consist(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_log_pointers_init(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_quota_init(%struct.gfs2_sbd*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
