; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_remove_unstuffed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_remove_unstuffed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_ea_header = type { i32 }

@NO_QUOTA_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i32)* @ea_remove_unstuffed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_remove_unstuffed(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.gfs2_ea_header*, align 8
  %10 = alloca %struct.gfs2_ea_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header** %9, align 8
  store %struct.gfs2_ea_header* %3, %struct.gfs2_ea_header** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 0
  %15 = call i32 @GFS2_SB(i32* %14)
  %16 = call i32 @gfs2_rindex_update(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %6, align 4
  br label %45

21:                                               ; preds = %5
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %23 = load i32, i32* @NO_QUOTA_CHANGE, align 4
  %24 = load i32, i32* @NO_QUOTA_CHANGE, align 4
  %25 = call i32 @gfs2_quota_hold(%struct.gfs2_inode* %22, i32 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %43

29:                                               ; preds = %21
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %32 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %33 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %36
  %39 = phi i32* [ %12, %36 ], [ null, %37 ]
  %40 = call i32 @ea_dealloc_unstuffed(%struct.gfs2_inode* %30, %struct.buffer_head* %31, %struct.gfs2_ea_header* %32, %struct.gfs2_ea_header* %33, i32* %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %42 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %41)
  br label %43

43:                                               ; preds = %38, %28
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %19
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @gfs2_rindex_update(i32) #1

declare dso_local i32 @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_quota_hold(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @ea_dealloc_unstuffed(%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i32*) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
