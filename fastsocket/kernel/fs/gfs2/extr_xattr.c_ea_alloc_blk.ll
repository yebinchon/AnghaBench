; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_alloc_blk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_alloc_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_ea_header = type { i64, i32, i32, i32 }

@GFS2_METATYPE_EA = common dso_local global i32 0, align 4
@GFS2_FORMAT_EA = common dso_local global i32 0, align 4
@GFS2_EATYPE_UNUSED = common dso_local global i32 0, align 4
@GFS2_EAFLAG_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head**)* @ea_alloc_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_alloc_blk(%struct.gfs2_inode* %0, %struct.buffer_head** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.buffer_head**, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_ea_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %5, align 8
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 0
  %13 = call %struct.gfs2_sbd* @GFS2_SB(i32* %12)
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %6, align 8
  store i32 1, i32* %8, align 4
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %15 = call i32 @gfs2_alloc_blocks(%struct.gfs2_inode* %14, i32* %9, i32* %8, i32 0, i32* null)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %2
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @gfs2_trans_add_unrevoke(%struct.gfs2_sbd* %21, i32 %22, i32 1)
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %25 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.buffer_head* @gfs2_meta_new(i32 %26, i32 %27)
  %29 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  store %struct.buffer_head* %28, %struct.buffer_head** %29, align 8
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %33, align 8
  %35 = call i32 @gfs2_trans_add_meta(i32 %32, %struct.buffer_head* %34)
  %36 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %36, align 8
  %38 = load i32, i32* @GFS2_METATYPE_EA, align 4
  %39 = load i32, i32* @GFS2_FORMAT_EA, align 4
  %40 = call i32 @gfs2_metatype_set(%struct.buffer_head* %37, i32 %38, i32 %39)
  %41 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %41, align 8
  %43 = call i32 @gfs2_buffer_clear_tail(%struct.buffer_head* %42, i32 4)
  %44 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  %46 = call %struct.gfs2_ea_header* @GFS2_EA_BH2FIRST(%struct.buffer_head* %45)
  store %struct.gfs2_ea_header* %46, %struct.gfs2_ea_header** %7, align 8
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %48 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cpu_to_be32(i32 %49)
  %51 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %7, align 8
  %52 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @GFS2_EATYPE_UNUSED, align 4
  %54 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %7, align 8
  %55 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @GFS2_EAFLAG_LAST, align 4
  %57 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %7, align 8
  %58 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %7, align 8
  %60 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %62 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %61, i32 0, i32 0
  %63 = call i32 @gfs2_add_inode_blocks(i32* %62, i32 1)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %20, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_alloc_blocks(%struct.gfs2_inode*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @gfs2_trans_add_unrevoke(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local %struct.buffer_head* @gfs2_meta_new(i32, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_metatype_set(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @gfs2_buffer_clear_tail(%struct.buffer_head*, i32) #1

declare dso_local %struct.gfs2_ea_header* @GFS2_EA_BH2FIRST(%struct.buffer_head*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
