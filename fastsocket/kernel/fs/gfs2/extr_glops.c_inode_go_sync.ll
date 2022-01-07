; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_inode_go_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_inode_go_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i64, i32, i32, %struct.gfs2_inode* }
%struct.gfs2_inode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.address_space*, i32 }
%struct.address_space = type { i32 }

@GIF_SW_PAGED = common dso_local global i32 0, align 4
@GLF_DIRTY = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*)* @inode_go_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode_go_sync(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %8 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %7, i32 0, i32 3
  %9 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  store %struct.gfs2_inode* %9, %struct.gfs2_inode** %3, align 8
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %11 = call %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock* %10)
  store %struct.address_space* %11, %struct.address_space** %4, align 8
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %13 = icmp ne %struct.gfs2_inode* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @S_ISREG(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store %struct.gfs2_inode* null, %struct.gfs2_inode** %3, align 8
  br label %22

22:                                               ; preds = %21, %14, %1
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %24 = icmp ne %struct.gfs2_inode* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32, i32* @GIF_SW_PAGED, align 4
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %28 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %27, i32 0, i32 1
  %29 = call i64 @test_and_clear_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %33 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.address_space*, %struct.address_space** %34, align 8
  %36 = call i32 @unmap_shared_mapping_range(%struct.address_space* %35, i32 0, i32 0)
  br label %37

37:                                               ; preds = %31, %25, %22
  %38 = load i32, i32* @GLF_DIRTY, align 4
  %39 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %40 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %39, i32 0, i32 1
  %41 = call i64 @test_and_clear_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %86

44:                                               ; preds = %37
  %45 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %46 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %53 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %56 = call i32 @gfs2_log_flush(i32 %54, %struct.gfs2_glock* %55)
  %57 = load %struct.address_space*, %struct.address_space** %4, align 8
  %58 = call i32 @filemap_fdatawrite(%struct.address_space* %57)
  %59 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %60 = icmp ne %struct.gfs2_inode* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %44
  %62 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %63 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.address_space*, %struct.address_space** %64, align 8
  store %struct.address_space* %65, %struct.address_space** %6, align 8
  %66 = load %struct.address_space*, %struct.address_space** %6, align 8
  %67 = call i32 @filemap_fdatawrite(%struct.address_space* %66)
  %68 = load %struct.address_space*, %struct.address_space** %6, align 8
  %69 = call i32 @filemap_fdatawait(%struct.address_space* %68)
  store i32 %69, i32* %5, align 4
  %70 = load %struct.address_space*, %struct.address_space** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @mapping_set_error(%struct.address_space* %70, i32 %71)
  br label %73

73:                                               ; preds = %61, %44
  %74 = load %struct.address_space*, %struct.address_space** %4, align 8
  %75 = call i32 @filemap_fdatawait(%struct.address_space* %74)
  store i32 %75, i32* %5, align 4
  %76 = load %struct.address_space*, %struct.address_space** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @mapping_set_error(%struct.address_space* %76, i32 %77)
  %79 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %80 = call i32 @gfs2_ail_empty_gl(%struct.gfs2_glock* %79)
  %81 = call i32 (...) @smp_mb__before_clear_bit()
  %82 = load i32, i32* @GLF_DIRTY, align 4
  %83 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %84 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %83, i32 0, i32 1
  %85 = call i32 @clear_bit(i32 %82, i32* %84)
  br label %86

86:                                               ; preds = %73, %43
  ret void
}

declare dso_local %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @unmap_shared_mapping_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gfs2_log_flush(i32, %struct.gfs2_glock*) #1

declare dso_local i32 @filemap_fdatawrite(%struct.address_space*) #1

declare dso_local i32 @filemap_fdatawait(%struct.address_space*) #1

declare dso_local i32 @mapping_set_error(%struct.address_space*, i32) #1

declare dso_local i32 @gfs2_ail_empty_gl(%struct.gfs2_glock*) #1

declare dso_local i32 @smp_mb__before_clear_bit(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
