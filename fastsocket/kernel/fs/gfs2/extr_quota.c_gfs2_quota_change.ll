; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.gfs2_quota_data** }
%struct.gfs2_quota_data = type { i64, i32 }

@GFS2_DIF_SYSTEM = common dso_local global i32 0, align 4
@QDF_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_quota_change(%struct.gfs2_inode* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gfs2_quota_data*, align 8
  %10 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 2
  %13 = call i32 @GFS2_SB(i32* %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @gfs2_assert_warn(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %76

18:                                               ; preds = %4
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GFS2_DIF_SYSTEM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %76

26:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %73, %26
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %28, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %27
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %40, i64 %42
  %44 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %43, align 8
  store %struct.gfs2_quota_data* %44, %struct.gfs2_quota_data** %9, align 8
  %45 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %46 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %35
  %51 = load i32, i32* @QDF_USER, align 4
  %52 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %53 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %52, i32 0, i32 1
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %50, %35
  %57 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %58 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i32, i32* @QDF_USER, align 4
  %64 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %65 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %64, i32 0, i32 1
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62, %50
  %69 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @do_qc(%struct.gfs2_quota_data* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %62, %56
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %27

76:                                               ; preds = %17, %25, %27
  ret void
}

declare dso_local i64 @gfs2_assert_warn(i32, i32) #1

declare dso_local i32 @GFS2_SB(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @do_qc(%struct.gfs2_quota_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
