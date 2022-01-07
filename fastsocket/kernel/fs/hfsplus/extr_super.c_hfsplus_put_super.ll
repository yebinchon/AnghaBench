; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_super.c_hfsplus_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_super.c_hfsplus_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, %struct.hfsplus_vh* }
%struct.hfsplus_vh = type { i32, i32 }

@DBG_SUPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hfsplus_put_super\0A\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@HFSPLUS_VOL_UNMNT = common dso_local global i32 0, align 4
@HFSPLUS_VOL_INCNSTNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @hfsplus_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfsplus_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.TYPE_2__, align 8
  %4 = alloca %struct.hfsplus_vh*, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  %7 = alloca %struct.TYPE_2__, align 8
  %8 = alloca %struct.TYPE_2__, align 8
  %9 = alloca %struct.TYPE_2__, align 8
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca %struct.TYPE_2__, align 8
  %12 = alloca %struct.TYPE_2__, align 8
  %13 = alloca %struct.TYPE_2__, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %14 = load i32, i32* @DBG_SUPER, align 4
  %15 = call i32 @dprint(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.super_block*, %struct.super_block** %2, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %102

21:                                               ; preds = %1
  %22 = call i32 (...) @lock_kernel()
  %23 = load %struct.super_block*, %struct.super_block** %2, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.super_block*, %struct.super_block** %2, align 8
  %29 = call i32 @hfsplus_write_super(%struct.super_block* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MS_RDONLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %70, label %37

37:                                               ; preds = %30
  %38 = load %struct.super_block*, %struct.super_block** %2, align 8
  call void @HFSPLUS_SB(%struct.TYPE_2__* sret %3, %struct.super_block* %38)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 6
  %40 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %39, align 8
  %41 = icmp ne %struct.hfsplus_vh* %40, null
  br i1 %41, label %42, label %70

42:                                               ; preds = %37
  %43 = load %struct.super_block*, %struct.super_block** %2, align 8
  call void @HFSPLUS_SB(%struct.TYPE_2__* sret %5, %struct.super_block* %43)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 6
  %45 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %44, align 8
  store %struct.hfsplus_vh* %45, %struct.hfsplus_vh** %4, align 8
  %46 = call i32 (...) @hfsp_now2mt()
  %47 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %4, align 8
  %48 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @HFSPLUS_VOL_UNMNT, align 4
  %50 = call i32 @cpu_to_be32(i32 %49)
  %51 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %4, align 8
  %52 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @HFSPLUS_VOL_INCNSTNT, align 4
  %56 = xor i32 %55, -1
  %57 = call i32 @cpu_to_be32(i32 %56)
  %58 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %4, align 8
  %59 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.super_block*, %struct.super_block** %2, align 8
  call void @HFSPLUS_SB(%struct.TYPE_2__* sret %6, %struct.super_block* %62)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mark_buffer_dirty(i32 %64)
  %66 = load %struct.super_block*, %struct.super_block** %2, align 8
  call void @HFSPLUS_SB(%struct.TYPE_2__* sret %7, %struct.super_block* %66)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sync_dirty_buffer(i32 %68)
  br label %70

70:                                               ; preds = %42, %37, %30
  %71 = load %struct.super_block*, %struct.super_block** %2, align 8
  call void @HFSPLUS_SB(%struct.TYPE_2__* sret %8, %struct.super_block* %71)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @hfs_btree_close(i32 %73)
  %75 = load %struct.super_block*, %struct.super_block** %2, align 8
  call void @HFSPLUS_SB(%struct.TYPE_2__* sret %9, %struct.super_block* %75)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @hfs_btree_close(i32 %77)
  %79 = load %struct.super_block*, %struct.super_block** %2, align 8
  call void @HFSPLUS_SB(%struct.TYPE_2__* sret %10, %struct.super_block* %79)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @iput(i32 %81)
  %83 = load %struct.super_block*, %struct.super_block** %2, align 8
  call void @HFSPLUS_SB(%struct.TYPE_2__* sret %11, %struct.super_block* %83)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @iput(i32 %85)
  %87 = load %struct.super_block*, %struct.super_block** %2, align 8
  call void @HFSPLUS_SB(%struct.TYPE_2__* sret %12, %struct.super_block* %87)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @brelse(i32 %89)
  %91 = load %struct.super_block*, %struct.super_block** %2, align 8
  call void @HFSPLUS_SB(%struct.TYPE_2__* sret %13, %struct.super_block* %91)
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @unload_nls(i32 %93)
  %95 = load %struct.super_block*, %struct.super_block** %2, align 8
  %96 = getelementptr inbounds %struct.super_block, %struct.super_block* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @kfree(i32* %97)
  %99 = load %struct.super_block*, %struct.super_block** %2, align 8
  %100 = getelementptr inbounds %struct.super_block, %struct.super_block* %99, i32 0, i32 1
  store i32* null, i32** %100, align 8
  %101 = call i32 (...) @unlock_kernel()
  br label %102

102:                                              ; preds = %70, %20
  ret void
}

declare dso_local i32 @dprint(i32, i8*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @hfsplus_write_super(%struct.super_block*) #1

declare dso_local void @HFSPLUS_SB(%struct.TYPE_2__* sret, %struct.super_block*) #1

declare dso_local i32 @hfsp_now2mt(...) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mark_buffer_dirty(i32) #1

declare dso_local i32 @sync_dirty_buffer(i32) #1

declare dso_local i32 @hfs_btree_close(i32) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @unload_nls(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
