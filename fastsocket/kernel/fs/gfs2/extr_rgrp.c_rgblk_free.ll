; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_rgblk_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_rgblk_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_rbm = type { %struct.gfs2_rgrpd*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"block = %llu\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_rgrpd* (%struct.gfs2_sbd*, i64, i32, i8)* @rgblk_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_rgrpd* @rgblk_free(%struct.gfs2_sbd* %0, i64 %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.gfs2_rgrpd*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct.gfs2_rbm, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %11, i64 %12, i32 1)
  %14 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 0
  store %struct.gfs2_rgrpd* %13, %struct.gfs2_rgrpd** %14, align 8
  %15 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 0
  %16 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %15, align 8
  %17 = icmp ne %struct.gfs2_rgrpd* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %4
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %20 = call i64 @gfs2_consist(%struct.gfs2_sbd* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @fs_err(%struct.gfs2_sbd* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %22, %18
  store %struct.gfs2_rgrpd* null, %struct.gfs2_rgrpd** %5, align 8
  br label %96

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %81, %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %93

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @gfs2_rbm_from_block(%struct.gfs2_rbm* %10, i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %7, align 8
  %37 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %81, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_NOFS, align 4
  %50 = load i32, i32* @__GFP_NOFAIL, align 4
  %51 = or i32 %49, %50
  %52 = call i64 @kmalloc(i32 %48, i32 %51)
  %53 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  store i64 %52, i64* %55, align 8
  %56 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %59, %63
  %65 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %70, %74
  %76 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @memcpy(i64 %64, i64 %75, i32 %79)
  br label %81

81:                                               ; preds = %42, %32
  %82 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 0
  %83 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %82, align 8
  %84 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = call i32 @gfs2_trans_add_meta(i32 %85, %struct.TYPE_4__* %89)
  %91 = load i8, i8* %9, align 1
  %92 = call i32 @gfs2_setbit(%struct.gfs2_rbm* %10, i32 0, i8 zeroext %91)
  br label %28

93:                                               ; preds = %28
  %94 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %10, i32 0, i32 0
  %95 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %94, align 8
  store %struct.gfs2_rgrpd* %95, %struct.gfs2_rgrpd** %5, align 8
  br label %96

96:                                               ; preds = %93, %26
  %97 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  ret %struct.gfs2_rgrpd* %97
}

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i64 @gfs2_consist(%struct.gfs2_sbd*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i64) #1

declare dso_local i32 @gfs2_rbm_from_block(%struct.gfs2_rbm*, i64) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_setbit(%struct.gfs2_rbm*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
