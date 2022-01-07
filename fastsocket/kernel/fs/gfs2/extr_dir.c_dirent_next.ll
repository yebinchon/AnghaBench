; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dirent_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dirent_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i8*, i32 }
%struct.gfs2_dirent = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_dirent**)* @dirent_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirent_next(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.gfs2_dirent** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.gfs2_dirent**, align 8
  %8 = alloca %struct.gfs2_dirent*, align 8
  %9 = alloca %struct.gfs2_dirent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.gfs2_dirent** %2, %struct.gfs2_dirent*** %7, align 8
  %12 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %7, align 8
  %13 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  store %struct.gfs2_dirent* %13, %struct.gfs2_dirent** %8, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  store i8* %21, i8** %10, align 8
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %23 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %8, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @dirent_check_reclen(%struct.gfs2_inode* %22, %struct.gfs2_dirent* %23, i8* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %59

30:                                               ; preds = %3
  %31 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %8, align 8
  %32 = bitcast %struct.gfs2_dirent* %31 to i8*
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = bitcast i8* %35 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %36, %struct.gfs2_dirent** %9, align 8
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %38 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @dirent_check_reclen(%struct.gfs2_inode* %37, %struct.gfs2_dirent* %38, i8* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %59

47:                                               ; preds = %30
  %48 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %49 = call i64 @gfs2_dirent_sentinel(%struct.gfs2_dirent* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %53 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %47
  %57 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %58 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %7, align 8
  store %struct.gfs2_dirent* %57, %struct.gfs2_dirent** %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %51, %45, %28
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @dirent_check_reclen(%struct.gfs2_inode*, %struct.gfs2_dirent*, i8*) #1

declare dso_local i64 @gfs2_dirent_sentinel(%struct.gfs2_dirent*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
