; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_gfs2_xattr_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_gfs2_xattr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_ea_location = type { i32, i32, i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*)* @gfs2_xattr_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_xattr_remove(%struct.inode* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_ea_location, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %11)
  store %struct.gfs2_inode* %12, %struct.gfs2_inode** %8, align 8
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODATA, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @gfs2_ea_find(%struct.gfs2_inode* %21, i32 %22, i8* %23, %struct.gfs2_ea_location* %9)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %58

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %9, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENODATA, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %58

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %9, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @GFS2_EA_IS_STUFFED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %43 = call i32 @ea_remove_stuffed(%struct.gfs2_inode* %42, %struct.gfs2_ea_location* %9)
  store i32 %43, i32* %10, align 4
  br label %53

44:                                               ; preds = %36
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %46 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %9, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %9, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ea_remove_unstuffed(%struct.gfs2_inode* %45, i32 %47, i32 %49, i32 %51, i32 0)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %44, %41
  %54 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @brelse(i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %33, %27, %17
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_ea_find(%struct.gfs2_inode*, i32, i8*, %struct.gfs2_ea_location*) #1

declare dso_local i64 @GFS2_EA_IS_STUFFED(i32) #1

declare dso_local i32 @ea_remove_stuffed(%struct.gfs2_inode*, %struct.gfs2_ea_location*) #1

declare dso_local i32 @ea_remove_unstuffed(%struct.gfs2_inode*, i32, i32, i32, i32) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
