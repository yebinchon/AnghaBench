; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_jdesc_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_jdesc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32, i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_jdesc_check(%struct.gfs2_jdesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_jdesc*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %3, align 8
  %9 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.gfs2_inode* @GFS2_I(i32 %11)
  store %struct.gfs2_inode* %12, %struct.gfs2_inode** %4, align 8
  %13 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %14 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.gfs2_sbd* @GFS2_SB(i32 %15)
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %5, align 8
  %17 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %18 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @i_size_read(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %22 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @gfs2_check_internal_file_size(i32 %23, i32 8388608, i32 1073741824)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %53

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %32 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %30, %34
  %36 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %37 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @gfs2_write_alloc_required(%struct.gfs2_inode* %38, i32 0, i32 %39, i32* %7)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %48 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46, %43, %29
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %26
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i64 @gfs2_check_internal_file_size(i32, i32, i32) #1

declare dso_local i32 @gfs2_write_alloc_required(%struct.gfs2_inode*, i32, i32, i32*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
