; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, %struct.gfs2_quota_data** }
%struct.gfs2_quota_data = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@GFS2_QUOTA_ON = common dso_local global i64 0, align 8
@sort_qd = common dso_local global i32 0, align 4
@NO_FORCE = common dso_local global i32 0, align 4
@QDF_REFRESH = common dso_local global i32 0, align 4
@FORCE = common dso_local global i32 0, align 4
@GIF_QD_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_quota_lock(%struct.gfs2_inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_quota_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 2
  %15 = call %struct.gfs2_sbd* @GFS2_SB(i32* %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @gfs2_quota_hold(%struct.gfs2_inode* %16, i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %122

24:                                               ; preds = %3
  %25 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %26 = call i64 @capable(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GFS2_QUOTA_ON, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %24
  store i32 0, i32* %4, align 4
  br label %122

36:                                               ; preds = %28
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %38 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %40, align 8
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %43 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @sort_qd, align 4
  %48 = call i32 @sort(%struct.gfs2_quota_data** %41, i32 %46, i32 8, i32 %47, i32* null)
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %91, %36
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %52 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %50, %55
  br i1 %56, label %57, label %94

57:                                               ; preds = %49
  %58 = load i32, i32* @NO_FORCE, align 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %60 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %63, i64 %65
  %67 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %66, align 8
  store %struct.gfs2_quota_data* %67, %struct.gfs2_quota_data** %9, align 8
  %68 = load i32, i32* @QDF_REFRESH, align 4
  %69 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %70 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %69, i32 0, i32 0
  %71 = call i64 @test_and_clear_bit(i32 %68, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = load i32, i32* @FORCE, align 4
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %73, %57
  %76 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %79 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @do_glock(%struct.gfs2_quota_data* %76, i32 %77, i32* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %94

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %49

94:                                               ; preds = %89, %49
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @GIF_QD_LOCKED, align 4
  %99 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %100 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %99, i32 0, i32 1
  %101 = call i32 @set_bit(i32 %98, i32* %100)
  br label %120

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %107, %102
  %104 = load i32, i32* %10, align 4
  %105 = add i32 %104, -1
  store i32 %105, i32* %10, align 4
  %106 = icmp ne i32 %104, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %109 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i32 @gfs2_glock_dq_uninit(i32* %115)
  br label %103

117:                                              ; preds = %103
  %118 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %119 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %118)
  br label %120

120:                                              ; preds = %117, %97
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %35, %22
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_quota_hold(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @sort(%struct.gfs2_quota_data**, i32, i32, i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @do_glock(%struct.gfs2_quota_data*, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(i32*) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
