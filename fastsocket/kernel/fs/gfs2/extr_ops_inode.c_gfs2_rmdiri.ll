; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_rmdiri.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_rmdiri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.gfs2_inode = type { i32 }

@EIO = common dso_local global i32 0, align 4
@gfs2_qdot = common dso_local global %struct.qstr zeroinitializer, align 4
@gfs2_qdotdot = common dso_local global %struct.qstr zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.qstr*, %struct.gfs2_inode*)* @gfs2_rmdiri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_rmdiri(%struct.gfs2_inode* %0, %struct.qstr* %1, %struct.gfs2_inode* %2) #0 {
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
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %15 = call i64 @gfs2_consist_inode(%struct.gfs2_inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %19 = call i32 @gfs2_dinode_print(%struct.gfs2_inode* %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %68

23:                                               ; preds = %3
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %25 = load %struct.qstr*, %struct.qstr** %6, align 8
  %26 = call i32 @gfs2_dir_del(%struct.gfs2_inode* %24, %struct.qstr* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %68

31:                                               ; preds = %23
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %33 = call i32 @gfs2_change_nlink(%struct.gfs2_inode* %32, i32 -1)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %68

38:                                               ; preds = %31
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %40 = call i32 @gfs2_dir_del(%struct.gfs2_inode* %39, %struct.qstr* @gfs2_qdot)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %68

45:                                               ; preds = %38
  %46 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %47 = call i32 @gfs2_dir_del(%struct.gfs2_inode* %46, %struct.qstr* @gfs2_qdotdot)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %68

52:                                               ; preds = %45
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %54 = call i32 @gfs2_change_nlink(%struct.gfs2_inode* %53, i32 -1)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %68

59:                                               ; preds = %52
  %60 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %61 = call i32 @gfs2_change_nlink(%struct.gfs2_inode* %60, i32 -1)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %64, %57, %50, %43, %36, %29, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dinode_print(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dir_del(%struct.gfs2_inode*, %struct.qstr*) #1

declare dso_local i32 @gfs2_change_nlink(%struct.gfs2_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
