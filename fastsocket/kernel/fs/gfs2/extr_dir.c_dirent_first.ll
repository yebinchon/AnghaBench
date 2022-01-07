; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dirent_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dirent_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_dirent = type { i32 }
%struct.gfs2_meta_header = type { i32 }

@GFS2_METATYPE_LF = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@IS_LEAF = common dso_local global i32 0, align 4
@GFS2_METATYPE_DI = common dso_local global i32 0, align 4
@IS_DINODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_dirent**)* @dirent_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirent_first(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.gfs2_dirent** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.gfs2_dirent**, align 8
  %8 = alloca %struct.gfs2_meta_header*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.gfs2_dirent** %2, %struct.gfs2_dirent*** %7, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.gfs2_meta_header*
  store %struct.gfs2_meta_header* %12, %struct.gfs2_meta_header** %8, align 8
  %13 = load %struct.gfs2_meta_header*, %struct.gfs2_meta_header** %8, align 8
  %14 = getelementptr inbounds %struct.gfs2_meta_header, %struct.gfs2_meta_header* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @be32_to_cpu(i32 %15)
  %17 = load i64, i64* @GFS2_METATYPE_LF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 0
  %22 = call i32 @GFS2_SB(i32* %21)
  %23 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %24 = call i64 @gfs2_meta_check(i32 %22, %struct.buffer_head* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %56

29:                                               ; preds = %19
  %30 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 4
  %34 = inttoptr i64 %33 to %struct.gfs2_dirent*
  %35 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %7, align 8
  store %struct.gfs2_dirent* %34, %struct.gfs2_dirent** %35, align 8
  %36 = load i32, i32* @IS_LEAF, align 4
  store i32 %36, i32* %4, align 4
  br label %56

37:                                               ; preds = %3
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 0
  %40 = call i32 @GFS2_SB(i32* %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %42 = load i32, i32* @GFS2_METATYPE_DI, align 4
  %43 = call i64 @gfs2_metatype_check(i32 %40, %struct.buffer_head* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %56

48:                                               ; preds = %37
  %49 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 4
  %53 = inttoptr i64 %52 to %struct.gfs2_dirent*
  %54 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %7, align 8
  store %struct.gfs2_dirent* %53, %struct.gfs2_dirent** %54, align 8
  %55 = load i32, i32* @IS_DINODE, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %48, %45, %29, %26
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @gfs2_meta_check(i32, %struct.buffer_head*) #1

declare dso_local i32 @GFS2_SB(i32*) #1

declare dso_local i64 @gfs2_metatype_check(i32, %struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
