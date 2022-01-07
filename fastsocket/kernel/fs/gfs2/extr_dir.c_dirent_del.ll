; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dirent_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dirent_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i8*, i32 }
%struct.gfs2_dirent = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_dirent*, %struct.gfs2_dirent*)* @dirent_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dirent_del(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.gfs2_dirent* %2, %struct.gfs2_dirent* %3) #0 {
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.gfs2_dirent*, align 8
  %8 = alloca %struct.gfs2_dirent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.gfs2_dirent* %2, %struct.gfs2_dirent** %7, align 8
  store %struct.gfs2_dirent* %3, %struct.gfs2_dirent** %8, align 8
  %11 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %8, align 8
  %12 = call i64 @gfs2_dirent_sentinel(%struct.gfs2_dirent* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %16 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %15)
  br label %78

17:                                               ; preds = %4
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %19 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %22 = call i32 @gfs2_trans_add_meta(i32 %20, %struct.buffer_head* %21)
  %23 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %24 = icmp ne %struct.gfs2_dirent* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %17
  %26 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %8, align 8
  %27 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %8, align 8
  %30 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %78

32:                                               ; preds = %17
  %33 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %34 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @be16_to_cpu(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %8, align 8
  %38 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @be16_to_cpu(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %42 = bitcast %struct.gfs2_dirent* %41 to i8*
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %8, align 8
  %47 = bitcast %struct.gfs2_dirent* %46 to i8*
  %48 = icmp ne i8* %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %32
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %51 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %50)
  br label %52

52:                                               ; preds = %49, %32
  %53 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %8, align 8
  %54 = bitcast %struct.gfs2_dirent* %53 to i8*
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = icmp ugt i8* %57, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %52
  %68 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %69 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %68)
  br label %70

70:                                               ; preds = %67, %52
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @cpu_to_be16(i32 %74)
  %76 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %77 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %70, %25, %14
  ret void
}

declare dso_local i64 @gfs2_dirent_sentinel(%struct.gfs2_dirent*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
