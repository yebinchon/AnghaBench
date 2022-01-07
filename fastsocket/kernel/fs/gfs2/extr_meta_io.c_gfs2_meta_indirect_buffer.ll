; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.c_gfs2_meta_indirect_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.c_gfs2_meta_indirect_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.gfs2_glock*, i32 }
%struct.gfs2_glock = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_sbd = type { i32 }

@GFS2_METATYPE_IN = common dso_local global i32 0, align 4
@GFS2_METATYPE_DI = common dso_local global i32 0, align 4
@DIO_WAIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_meta_indirect_buffer(%struct.gfs2_inode* %0, i32 %1, i32 %2, %struct.buffer_head** %3) #0 {
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca %struct.gfs2_sbd*, align 8
  %10 = alloca %struct.gfs2_glock*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %8, align 8
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 1
  %16 = call %struct.gfs2_sbd* @GFS2_SB(i32* %15)
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %9, align 8
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 0
  %19 = load %struct.gfs2_glock*, %struct.gfs2_glock** %18, align 8
  store %struct.gfs2_glock* %19, %struct.gfs2_glock** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @GFS2_METATYPE_IN, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @GFS2_METATYPE_DI, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %13, align 4
  %28 = load %struct.gfs2_glock*, %struct.gfs2_glock** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DIO_WAIT, align 4
  %31 = call i32 @gfs2_meta_read(%struct.gfs2_glock* %28, i32 %29, i32 %30, %struct.buffer_head** %11)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %35, %struct.buffer_head* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %42 = call i32 @brelse(%struct.buffer_head* %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %40, %34, %26
  %46 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %47 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %46, %struct.buffer_head** %47, align 8
  %48 = load i32, i32* %12, align 4
  ret i32 %48
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_meta_read(%struct.gfs2_glock*, i32, i32, %struct.buffer_head**) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
