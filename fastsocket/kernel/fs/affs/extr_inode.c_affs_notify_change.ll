; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_inode.c_affs_notify_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_inode.c_affs_notify_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.iattr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"AFFS: notify_change(%lu,0x%x)\0A\00", align 1
@ATTR_UID = common dso_local global i32 0, align 4
@SF_SETUID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@SF_SETGID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@SF_SETMODE = common dso_local global i32 0, align 4
@SF_IMMUTABLE = common dso_local global i32 0, align 4
@SF_QUIET = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_notify_change(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iattr*, %struct.iattr** %4, align 8
  %14 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load %struct.iattr*, %struct.iattr** %4, align 8
  %19 = call i32 @inode_change_ok(%struct.inode* %17, %struct.iattr* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %107

23:                                               ; preds = %2
  %24 = load %struct.iattr*, %struct.iattr** %4, align 8
  %25 = getelementptr inbounds %struct.iattr, %struct.iattr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ATTR_UID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_2__* @AFFS_SB(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SF_SETUID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %76, label %40

40:                                               ; preds = %30, %23
  %41 = load %struct.iattr*, %struct.iattr** %4, align 8
  %42 = getelementptr inbounds %struct.iattr, %struct.iattr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATTR_GID, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_2__* @AFFS_SB(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SF_SETGID, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %47, %40
  %58 = load %struct.iattr*, %struct.iattr** %4, align 8
  %59 = getelementptr inbounds %struct.iattr, %struct.iattr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATTR_MODE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %57
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.TYPE_2__* @AFFS_SB(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SF_SETMODE, align 4
  %72 = load i32, i32* @SF_IMMUTABLE, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %64, %47, %30
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_2__* @AFFS_SB(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SF_QUIET, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @EPERM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %76
  br label %107

90:                                               ; preds = %64, %57
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = load %struct.iattr*, %struct.iattr** %4, align 8
  %93 = call i32 @inode_setattr(%struct.inode* %91, %struct.iattr* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %90
  %97 = load %struct.iattr*, %struct.iattr** %4, align 8
  %98 = getelementptr inbounds %struct.iattr, %struct.iattr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ATTR_MODE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = call i32 @mode_to_prot(%struct.inode* %104)
  br label %106

106:                                              ; preds = %103, %96, %90
  br label %107

107:                                              ; preds = %106, %89, %22
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local %struct.TYPE_2__* @AFFS_SB(i32) #1

declare dso_local i32 @inode_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mode_to_prot(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
