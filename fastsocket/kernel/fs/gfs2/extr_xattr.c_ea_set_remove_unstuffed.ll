; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_set_remove_unstuffed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_set_remove_unstuffed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_ea_location = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_ea_location*)* @ea_set_remove_unstuffed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_set_remove_unstuffed(%struct.gfs2_inode* %0, %struct.gfs2_ea_location* %1) #0 {
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_ea_location*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  store %struct.gfs2_ea_location* %1, %struct.gfs2_ea_location** %4, align 8
  %5 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %6 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %11 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @GFS2_EA2NEXT(i64 %12)
  %14 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %15 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %9
  %19 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %20 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @GFS2_EA2NEXT(i64 %21)
  %23 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %24 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %25, i32 0, i32 0
  %27 = call i32 @GFS2_SB(i32* %26)
  %28 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %29 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @GFS2_EA2NEXT(i64 %30)
  %32 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %33 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @gfs2_assert_withdraw(i32 %27, i32 %36)
  br label %38

38:                                               ; preds = %18, %9, %2
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %40 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %41 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %44 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %47 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ea_remove_unstuffed(%struct.gfs2_inode* %39, i32 %42, i64 %45, i64 %48, i32 0)
  ret i32 %49
}

declare dso_local i64 @GFS2_EA2NEXT(i64) #1

declare dso_local i32 @gfs2_assert_withdraw(i32, i32) #1

declare dso_local i32 @GFS2_SB(i32*) #1

declare dso_local i32 @ea_remove_unstuffed(%struct.gfs2_inode*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
