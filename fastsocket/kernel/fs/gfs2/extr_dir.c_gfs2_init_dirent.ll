; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_init_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_init_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_dirent = type { i32, i32 }
%struct.qstr = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_dirent* (%struct.inode*, %struct.gfs2_dirent*, %struct.qstr*, %struct.buffer_head*)* @gfs2_init_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_dirent* @gfs2_init_dirent(%struct.inode* %0, %struct.gfs2_dirent* %1, %struct.qstr* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.gfs2_dirent*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.gfs2_dirent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.gfs2_dirent* %1, %struct.gfs2_dirent** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %16 = call i32 @gfs2_dirent_sentinel(%struct.gfs2_dirent* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %20 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be16_to_cpu(i32 %21)
  %23 = call i32 @GFS2_DIRENT_SIZE(i32 %22)
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %18, %4
  %25 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %26 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be16_to_cpu(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.qstr*, %struct.qstr** %7, align 8
  %31 = getelementptr inbounds %struct.qstr, %struct.qstr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %29, %32
  %34 = load i32, i32* %12, align 4
  %35 = icmp ugt i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %42 = call i32 @gfs2_trans_add_meta(i32 %40, %struct.buffer_head* %41)
  %43 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %44 = bitcast %struct.gfs2_dirent* %43 to i8*
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = bitcast i8* %47 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %48, %struct.gfs2_dirent** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @cpu_to_be16(i32 %49)
  %51 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %52 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.qstr*, %struct.qstr** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub i32 %54, %55
  %57 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %10, align 8
  %58 = call i32 @gfs2_qstr2dirent(%struct.qstr* %53, i32 %56, %struct.gfs2_dirent* %57)
  %59 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %10, align 8
  ret %struct.gfs2_dirent* %59
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_dirent_sentinel(%struct.gfs2_dirent*) #1

declare dso_local i32 @GFS2_DIRENT_SIZE(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @gfs2_qstr2dirent(%struct.qstr*, i32, %struct.gfs2_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
