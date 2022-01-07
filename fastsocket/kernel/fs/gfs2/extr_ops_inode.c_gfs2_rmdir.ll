; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, %struct.inode* }
%struct.gfs2_inode = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_rgrpd = type { i32 }

@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@RES_LEAF = common dso_local global i32 0, align 4
@RES_RG_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @gfs2_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca [3 x %struct.gfs2_holder], align 4
  %10 = alloca %struct.gfs2_rgrpd*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %12)
  store %struct.gfs2_inode* %13, %struct.gfs2_inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %7, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  %19 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %18)
  store %struct.gfs2_inode* %19, %struct.gfs2_inode** %8, align 8
  %20 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %21 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %3, align 4
  br label %155

26:                                               ; preds = %2
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %28 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %31 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %32 = call i32 @gfs2_holder_init(i32 %29, i32 %30, i32 0, %struct.gfs2_holder* %31)
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %34 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %37 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %38 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %37, i64 1
  %39 = call i32 @gfs2_holder_init(i32 %35, i32 %36, i32 0, %struct.gfs2_holder* %38)
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %42 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %40, i32 %43, i32 1)
  store %struct.gfs2_rgrpd* %44, %struct.gfs2_rgrpd** %10, align 8
  %45 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %46 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %49 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %50 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %49, i64 2
  %51 = call i32 @gfs2_holder_init(i32 %47, i32 %48, i32 0, %struct.gfs2_holder* %50)
  %52 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %53 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %26
  br label %151

57:                                               ; preds = %26
  %58 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %59 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %58, i64 1
  %60 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %145

64:                                               ; preds = %57
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %138

73:                                               ; preds = %64
  %74 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %75 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %74, i64 2
  %76 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %138

80:                                               ; preds = %73
  %81 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %82 = load %struct.dentry*, %struct.dentry** %5, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 0
  %84 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %85 = call i32 @gfs2_unlink_ok(%struct.gfs2_inode* %81, i32* %83, %struct.gfs2_inode* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %134

89:                                               ; preds = %80
  %90 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %91 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %96 = call i64 @gfs2_consist_inode(%struct.gfs2_inode* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %100 = call i32 @gfs2_dinode_print(%struct.gfs2_inode* %99)
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %11, align 4
  br label %134

104:                                              ; preds = %89
  %105 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %106 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %107, 2
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @ENOTEMPTY, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %11, align 4
  br label %134

112:                                              ; preds = %104
  %113 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %114 = load i32, i32* @RES_DINODE, align 4
  %115 = mul nsw i32 2, %114
  %116 = load i32, i32* @RES_LEAF, align 4
  %117 = mul nsw i32 3, %116
  %118 = add nsw i32 %115, %117
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @RES_RG_BIT, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %113, i64 %121, i32 0)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %112
  br label %134

126:                                              ; preds = %112
  %127 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %128 = load %struct.dentry*, %struct.dentry** %5, align 8
  %129 = getelementptr inbounds %struct.dentry, %struct.dentry* %128, i32 0, i32 0
  %130 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %131 = call i32 @gfs2_rmdiri(%struct.gfs2_inode* %127, i32* %129, %struct.gfs2_inode* %130)
  store i32 %131, i32* %11, align 4
  %132 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %133 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %132)
  br label %134

134:                                              ; preds = %126, %125, %109, %101, %88
  %135 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %136 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %135, i64 2
  %137 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %136)
  br label %138

138:                                              ; preds = %134, %79, %72
  %139 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %140 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %139, i64 2
  %141 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %140)
  %142 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %143 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %142, i64 1
  %144 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %143)
  br label %145

145:                                              ; preds = %138, %63
  %146 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %147 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %146, i64 1
  %148 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %147)
  %149 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %150 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %149)
  br label %151

151:                                              ; preds = %145, %56
  %152 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %153 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %152)
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %24
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_unlink_ok(%struct.gfs2_inode*, i32*, %struct.gfs2_inode*) #1

declare dso_local i64 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dinode_print(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_rmdiri(%struct.gfs2_inode*, i32*, %struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
