; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_iget_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_iget_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { i64 }
%struct.gfs2_skip_data = type { i64, i32, i64 }

@I_FREEING = common dso_local global i32 0, align 4
@I_CLEAR = common dso_local global i32 0, align 4
@I_WILL_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @iget_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iget_test(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_skip_data*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %8)
  store %struct.gfs2_inode* %9, %struct.gfs2_inode** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.gfs2_skip_data*
  store %struct.gfs2_skip_data* %11, %struct.gfs2_skip_data** %7, align 8
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.gfs2_skip_data*, %struct.gfs2_skip_data** %7, align 8
  %16 = getelementptr inbounds %struct.gfs2_skip_data, %struct.gfs2_skip_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load %struct.gfs2_skip_data*, %struct.gfs2_skip_data** %7, align 8
  %21 = getelementptr inbounds %struct.gfs2_skip_data, %struct.gfs2_skip_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @I_FREEING, align 4
  %29 = load i32, i32* @I_CLEAR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @I_WILL_FREE, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %27, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.gfs2_skip_data*, %struct.gfs2_skip_data** %7, align 8
  %37 = getelementptr inbounds %struct.gfs2_skip_data, %struct.gfs2_skip_data* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  store i32 0, i32* %3, align 4
  br label %40

38:                                               ; preds = %24, %19
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %35
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
