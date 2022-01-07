; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_mount.c_jfs_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_mount.c_jfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_sb_info = type { i32, %struct.inode*, %struct.inode*, %struct.inode*, %struct.inode* }
%struct.inode = type { i32 }

@AGGREGATE_I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"jfs_mount: Faild to read AGGREGATE_I\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"jfs_mount: ipaimap:0x%p\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"jfs_mount: diMount(ipaimap) failed w/rc = %d\00", align 1
@BMAP_I = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"jfs_mount: ipbmap:0x%p\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"jfs_mount: dbMount failed w/rc = %d\00", align 1
@JFS_BAD_SAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"jfs_mount: ipaimap2:0x%p\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"jfs_mount: diMount(ipaimap2) failed, rc = %d\00", align 1
@FILESYSTEM_I = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"jfs_mount: Failed to read FILESYSTEM_I\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"jfs_mount: ipimap:0x%p\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"jfs_mount: diMount failed w/rc = %d\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Mount JFS Failure: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jfs_mount(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.jfs_sb_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %9)
  store %struct.jfs_sb_info* %10, %struct.jfs_sb_info** %4, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  store %struct.inode* null, %struct.inode** %6, align 8
  store %struct.inode* null, %struct.inode** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = call i32 @chkSuper(%struct.super_block* %11)
  store i32 %12, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %137

15:                                               ; preds = %1
  %16 = load %struct.super_block*, %struct.super_block** %2, align 8
  %17 = load i32, i32* @AGGREGATE_I, align 4
  %18 = call %struct.inode* @diReadSpecial(%struct.super_block* %16, i32 %17, i32 0)
  store %struct.inode* %18, %struct.inode** %5, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = icmp eq %struct.inode* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %137

25:                                               ; preds = %15
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %28 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %27, i32 0, i32 4
  store %struct.inode* %26, %struct.inode** %28, align 8
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call i32 @jfs_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %29)
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i32 @diMount(%struct.inode* %31)
  store i32 %32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %134

37:                                               ; preds = %25
  %38 = load %struct.super_block*, %struct.super_block** %2, align 8
  %39 = load i32, i32* @BMAP_I, align 4
  %40 = call %struct.inode* @diReadSpecial(%struct.super_block* %38, i32 %39, i32 0)
  store %struct.inode* %40, %struct.inode** %8, align 8
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = icmp eq %struct.inode* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %131

46:                                               ; preds = %37
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i32 @jfs_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %51 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %50, i32 0, i32 3
  store %struct.inode* %49, %struct.inode** %51, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call i32 @dbMount(%struct.inode* %52)
  store i32 %53, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  br label %131

58:                                               ; preds = %46
  %59 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %60 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @JFS_BAD_SAIT, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %58
  %66 = load %struct.super_block*, %struct.super_block** %2, align 8
  %67 = load i32, i32* @AGGREGATE_I, align 4
  %68 = call %struct.inode* @diReadSpecial(%struct.super_block* %66, i32 %67, i32 1)
  store %struct.inode* %68, %struct.inode** %6, align 8
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = icmp ne %struct.inode* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %126

75:                                               ; preds = %65
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %78 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %77, i32 0, i32 2
  store %struct.inode* %76, %struct.inode** %78, align 8
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = call i32 @jfs_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), %struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = call i32 @diMount(%struct.inode* %81)
  store i32 %82, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* %3, align 4
  %86 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %85)
  br label %126

87:                                               ; preds = %75
  br label %91

88:                                               ; preds = %58
  %89 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %90 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %89, i32 0, i32 2
  store %struct.inode* null, %struct.inode** %90, align 8
  br label %91

91:                                               ; preds = %88, %87
  %92 = load %struct.super_block*, %struct.super_block** %2, align 8
  %93 = load i32, i32* @FILESYSTEM_I, align 4
  %94 = call %struct.inode* @diReadSpecial(%struct.super_block* %92, i32 %93, i32 0)
  store %struct.inode* %94, %struct.inode** %7, align 8
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = icmp eq %struct.inode* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %117

101:                                              ; preds = %91
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = call i32 @jfs_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), %struct.inode* %102)
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  %105 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %106 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %105, i32 0, i32 1
  store %struct.inode* %104, %struct.inode** %106, align 8
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = call i32 @diMount(%struct.inode* %107)
  store i32 %108, i32* %3, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* %3, align 4
  %112 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  br label %114

113:                                              ; preds = %101
  br label %138

114:                                              ; preds = %110
  %115 = load %struct.inode*, %struct.inode** %7, align 8
  %116 = call i32 @diFreeSpecial(%struct.inode* %115)
  br label %117

117:                                              ; preds = %114, %97
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = icmp ne %struct.inode* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.inode*, %struct.inode** %6, align 8
  %122 = call i32 @diUnmount(%struct.inode* %121, i32 1)
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = call i32 @diFreeSpecial(%struct.inode* %123)
  br label %125

125:                                              ; preds = %120, %117
  br label %126

126:                                              ; preds = %125, %84, %71
  %127 = load %struct.inode*, %struct.inode** %8, align 8
  %128 = call i32 @dbUnmount(%struct.inode* %127, i32 1)
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = call i32 @diFreeSpecial(%struct.inode* %129)
  br label %131

131:                                              ; preds = %126, %55, %43
  %132 = load %struct.inode*, %struct.inode** %5, align 8
  %133 = call i32 @diUnmount(%struct.inode* %132, i32 1)
  br label %134

134:                                              ; preds = %131, %34
  %135 = load %struct.inode*, %struct.inode** %5, align 8
  %136 = call i32 @diFreeSpecial(%struct.inode* %135)
  br label %137

137:                                              ; preds = %134, %21, %14
  br label %138

138:                                              ; preds = %137, %113
  %139 = load i32, i32* %3, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* %3, align 4
  %143 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @chkSuper(%struct.super_block*) #1

declare dso_local %struct.inode* @diReadSpecial(%struct.super_block*, i32, i32) #1

declare dso_local i32 @jfs_err(i8*, ...) #1

declare dso_local i32 @jfs_info(i8*, %struct.inode*) #1

declare dso_local i32 @diMount(%struct.inode*) #1

declare dso_local i32 @dbMount(%struct.inode*) #1

declare dso_local i32 @diFreeSpecial(%struct.inode*) #1

declare dso_local i32 @diUnmount(%struct.inode*, i32) #1

declare dso_local i32 @dbUnmount(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
