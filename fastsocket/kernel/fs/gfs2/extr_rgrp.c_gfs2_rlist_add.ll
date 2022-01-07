; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rlist_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rlist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.gfs2_rgrpd*, i32 }
%struct.gfs2_rgrpd = type { i32 }
%struct.gfs2_rgrp_list = type { i32, i32, %struct.gfs2_rgrpd**, i32 }
%struct.gfs2_sbd = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"rlist_add: no rgrp for block %llu\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_rlist_add(%struct.gfs2_inode* %0, %struct.gfs2_rgrp_list* %1, i64 %2) #0 {
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_rgrp_list*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.gfs2_rgrpd*, align 8
  %9 = alloca %struct.gfs2_rgrpd**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.gfs2_rgrp_list* %1, %struct.gfs2_rgrp_list** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 1
  %14 = call %struct.gfs2_sbd* @GFS2_SB(i32* %13)
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %7, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %16 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %17 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @gfs2_assert_warn(%struct.gfs2_sbd* %15, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %133

25:                                               ; preds = %3
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %27 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %26, i32 0, i32 0
  %28 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %27, align 8
  %29 = icmp ne %struct.gfs2_rgrpd* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %32 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %31, i32 0, i32 0
  %33 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @rgrp_contains_block(%struct.gfs2_rgrpd* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 0
  %40 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %39, align 8
  store %struct.gfs2_rgrpd* %40, %struct.gfs2_rgrpd** %8, align 8
  br label %45

41:                                               ; preds = %30, %25
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %42, i64 %43, i32 1)
  store %struct.gfs2_rgrpd* %44, %struct.gfs2_rgrpd** %8, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %47 = icmp ne %struct.gfs2_rgrpd* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @fs_err(%struct.gfs2_sbd* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %50)
  br label %133

52:                                               ; preds = %45
  %53 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %55 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %54, i32 0, i32 0
  store %struct.gfs2_rgrpd* %53, %struct.gfs2_rgrpd** %55, align 8
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %74, %52
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %59 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %64 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %63, i32 0, i32 2
  %65 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %65, i64 %67
  %69 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %68, align 8
  %70 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %71 = icmp eq %struct.gfs2_rgrpd* %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %133

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %56

77:                                               ; preds = %56
  %78 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %79 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %82 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %122

85:                                               ; preds = %77
  %86 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %87 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add i32 %88, 10
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @GFP_NOFS, align 4
  %92 = load i32, i32* @__GFP_NOFAIL, align 4
  %93 = or i32 %91, %92
  %94 = call %struct.gfs2_rgrpd** @kcalloc(i32 %90, i32 8, i32 %93)
  store %struct.gfs2_rgrpd** %94, %struct.gfs2_rgrpd*** %9, align 8
  %95 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %96 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %95, i32 0, i32 2
  %97 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %96, align 8
  %98 = icmp ne %struct.gfs2_rgrpd** %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %85
  %100 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %9, align 8
  %101 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %102 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %101, i32 0, i32 2
  %103 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %102, align 8
  %104 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %105 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = zext i32 %106 to i64
  %108 = mul i64 %107, 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(%struct.gfs2_rgrpd** %100, %struct.gfs2_rgrpd** %103, i32 %109)
  %111 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %112 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %111, i32 0, i32 2
  %113 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %112, align 8
  %114 = call i32 @kfree(%struct.gfs2_rgrpd** %113)
  br label %115

115:                                              ; preds = %99, %85
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %118 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %9, align 8
  %120 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %121 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %120, i32 0, i32 2
  store %struct.gfs2_rgrpd** %119, %struct.gfs2_rgrpd*** %121, align 8
  br label %122

122:                                              ; preds = %115, %77
  %123 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %124 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %125 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %124, i32 0, i32 2
  %126 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %125, align 8
  %127 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %128 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %126, i64 %131
  store %struct.gfs2_rgrpd* %123, %struct.gfs2_rgrpd** %132, align 8
  br label %133

133:                                              ; preds = %122, %72, %48, %24
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i64 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i64 @rgrp_contains_block(%struct.gfs2_rgrpd*, i64) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i64) #1

declare dso_local %struct.gfs2_rgrpd** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.gfs2_rgrpd**, %struct.gfs2_rgrpd**, i32) #1

declare dso_local i32 @kfree(%struct.gfs2_rgrpd**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
