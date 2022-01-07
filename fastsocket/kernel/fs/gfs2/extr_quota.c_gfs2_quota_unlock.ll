; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32*, %struct.gfs2_quota_data** }
%struct.gfs2_quota_data = type { i32 }

@GIF_QD_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_quota_unlock(%struct.gfs2_inode* %0) #0 {
  %2 = alloca %struct.gfs2_inode*, align 8
  %3 = alloca [4 x %struct.gfs2_quota_data*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_quota_data*, align 8
  %7 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @GIF_QD_LOCKED, align 4
  %9 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %10 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %9, i32 0, i32 1
  %11 = call i32 @test_and_clear_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %82

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %57, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %16, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %15
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %25 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %28, i64 %30
  %32 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %31, align 8
  store %struct.gfs2_quota_data* %32, %struct.gfs2_quota_data** %6, align 8
  %33 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %34 = call i32 @need_sync(%struct.gfs2_quota_data* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %36 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @gfs2_glock_dq_uninit(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %23
  %47 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %48 = call i64 @qd_trylock(%struct.gfs2_quota_data* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %4, align 4
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds [4 x %struct.gfs2_quota_data*], [4 x %struct.gfs2_quota_data*]* %3, i64 0, i64 %54
  store %struct.gfs2_quota_data* %51, %struct.gfs2_quota_data** %55, align 8
  br label %56

56:                                               ; preds = %50, %46, %23
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %15

60:                                               ; preds = %15
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = getelementptr inbounds [4 x %struct.gfs2_quota_data*], [4 x %struct.gfs2_quota_data*]* %3, i64 0, i64 0
  %66 = call i32 @do_sync(i32 %64, %struct.gfs2_quota_data** %65)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %77, %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [4 x %struct.gfs2_quota_data*], [4 x %struct.gfs2_quota_data*]* %3, i64 0, i64 %73
  %75 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %74, align 8
  %76 = call i32 @qd_unlock(%struct.gfs2_quota_data* %75)
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %67

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %60
  br label %82

82:                                               ; preds = %81, %13
  %83 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %84 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %83)
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @need_sync(%struct.gfs2_quota_data*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(i32*) #1

declare dso_local i64 @qd_trylock(%struct.gfs2_quota_data*) #1

declare dso_local i32 @do_sync(i32, %struct.gfs2_quota_data**) #1

declare dso_local i32 @qd_unlock(%struct.gfs2_quota_data*) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
