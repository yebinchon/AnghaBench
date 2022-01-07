; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_ri_total.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_ri_total.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.file_ra_state = type { i32 }
%struct.gfs2_rindex = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_ri_total(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca %struct.file_ra_state, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %5, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @file_ra_state_init(%struct.file_ra_state* %7, i32 %18)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %48, %1
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add i64 %24, 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i64 @i_size_read(%struct.inode* %26)
  %28 = icmp ugt i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %51

30:                                               ; preds = %20
  %31 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %33 = call i32 @gfs2_internal_read(%struct.gfs2_inode* %31, %struct.file_ra_state* %7, i8* %32, i64* %10, i32 4)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %51

38:                                               ; preds = %30
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %40 = bitcast i8* %39 to %struct.gfs2_rindex*
  %41 = getelementptr inbounds %struct.gfs2_rindex, %struct.gfs2_rindex* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 1
  %43 = call i64 @be32_to_cpu(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %20

51:                                               ; preds = %37, %29
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @file_ra_state_init(%struct.file_ra_state*, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @gfs2_internal_read(%struct.gfs2_inode*, %struct.file_ra_state*, i8*, i64*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
