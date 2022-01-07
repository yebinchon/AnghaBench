; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_unlink_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_unlink_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@EPERM = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@CAP_FOWNER = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.qstr*, %struct.gfs2_inode*)* @gfs2_unlink_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_unlink_ok(%struct.gfs2_inode* %0, %struct.qstr* %1, %struct.gfs2_inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.gfs2_inode* %2, %struct.gfs2_inode** %7, align 8
  %9 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %10 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %9, i32 0, i32 0
  %11 = call i64 @IS_IMMUTABLE(%struct.TYPE_5__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 0
  %16 = call i64 @IS_APPEND(%struct.TYPE_5__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %3
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %13
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %23 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @S_ISVTX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %21
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 (...) @current_fsuid()
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %38 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 (...) @current_fsuid()
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32, i32* @CAP_FOWNER, align 4
  %45 = call i32 @capable(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %80

50:                                               ; preds = %43, %36, %29, %21
  %51 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %52 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %51, i32 0, i32 0
  %53 = call i64 @IS_APPEND(%struct.TYPE_5__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %80

58:                                               ; preds = %50
  %59 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %60 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %59, i32 0, i32 0
  %61 = load i32, i32* @MAY_WRITE, align 4
  %62 = load i32, i32* @MAY_EXEC, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @gfs2_permission(%struct.TYPE_5__* %60, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %80

69:                                               ; preds = %58
  %70 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %71 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %70, i32 0, i32 0
  %72 = load %struct.qstr*, %struct.qstr** %6, align 8
  %73 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %74 = call i32 @gfs2_dir_check(%struct.TYPE_5__* %71, %struct.qstr* %72, %struct.gfs2_inode* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %77, %67, %55, %47, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @IS_IMMUTABLE(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_APPEND(%struct.TYPE_5__*) #1

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @gfs2_permission(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @gfs2_dir_check(%struct.TYPE_5__*, %struct.qstr*, %struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
