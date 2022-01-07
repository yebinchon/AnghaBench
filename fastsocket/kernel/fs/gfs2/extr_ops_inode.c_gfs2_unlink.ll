; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, %struct.inode* }
%struct.gfs2_inode = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_rgrpd = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@RES_LEAF = common dso_local global i64 0, align 8
@RES_RG_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @gfs2_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
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
  br label %144

26:                                               ; preds = %2
  %27 = load i32, i32* @EROFS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %33 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %34 = call i32 @gfs2_holder_init(i32 %31, i32 %32, i32 0, %struct.gfs2_holder* %33)
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %36 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %39 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %40 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %39, i64 1
  %41 = call i32 @gfs2_holder_init(i32 %37, i32 %38, i32 0, %struct.gfs2_holder* %40)
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %44 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %42, i32 %45, i32 1)
  store %struct.gfs2_rgrpd* %46, %struct.gfs2_rgrpd** %10, align 8
  %47 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %48 = icmp ne %struct.gfs2_rgrpd* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %26
  br label %137

50:                                               ; preds = %26
  %51 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %52 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %55 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %56 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %55, i64 2
  %57 = call i32 @gfs2_holder_init(i32 %53, i32 %54, i32 0, %struct.gfs2_holder* %56)
  %58 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %59 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %133

63:                                               ; preds = %50
  %64 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %65 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %64, i64 1
  %66 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %130

70:                                               ; preds = %63
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  %73 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %74 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %126

79:                                               ; preds = %70
  %80 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %81 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %80, i64 2
  %82 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %126

86:                                               ; preds = %79
  %87 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %88 = load %struct.dentry*, %struct.dentry** %5, align 8
  %89 = getelementptr inbounds %struct.dentry, %struct.dentry* %88, i32 0, i32 0
  %90 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %91 = call i32 @gfs2_unlink_ok(%struct.gfs2_inode* %87, i32* %89, %struct.gfs2_inode* %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %122

95:                                               ; preds = %86
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %97 = load i32, i32* @RES_DINODE, align 4
  %98 = mul nsw i32 2, %97
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @RES_LEAF, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i64, i64* @RES_RG_BIT, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %96, i64 %103, i32 0)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %122

108:                                              ; preds = %95
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %110 = load %struct.dentry*, %struct.dentry** %5, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 0
  %112 = call i32 @gfs2_dir_del(%struct.gfs2_inode* %109, i32* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %119

116:                                              ; preds = %108
  %117 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %118 = call i32 @gfs2_change_nlink(%struct.gfs2_inode* %117, i32 -1)
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %116, %115
  %120 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %121 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %120)
  br label %122

122:                                              ; preds = %119, %107, %94
  %123 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %124 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %123, i64 2
  %125 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %124)
  br label %126

126:                                              ; preds = %122, %85, %78
  %127 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %128 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %127, i64 1
  %129 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %128)
  br label %130

130:                                              ; preds = %126, %69
  %131 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %132 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %131)
  br label %133

133:                                              ; preds = %130, %62
  %134 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %135 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %134, i64 2
  %136 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %135)
  br label %137

137:                                              ; preds = %133, %49
  %138 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %139 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %138, i64 1
  %140 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %139)
  %141 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %9, i64 0, i64 0
  %142 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %141)
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %137, %24
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_unlink_ok(%struct.gfs2_inode*, i32*, %struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_dir_del(%struct.gfs2_inode*, i32*) #1

declare dso_local i32 @gfs2_change_nlink(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
