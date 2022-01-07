; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_should_update_atime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_should_update_atime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64 }
%struct.inode = type { i32, %struct.TYPE_3__, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.vfsmount = type { i32 }
%struct.ocfs2_super = type { i64 }

@S_NOATIME = common dso_local global i32 0, align 4
@MS_NODIRATIME = common dso_local global i32 0, align 4
@MNT_NOATIME = common dso_local global i32 0, align 4
@MNT_NODIRATIME = common dso_local global i32 0, align 4
@MNT_RELATIME = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global %struct.timespec zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_should_update_atime(%struct.inode* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_4__* %10)
  store %struct.ocfs2_super* %11, %struct.ocfs2_super** %7, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %13 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %17 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %106

20:                                               ; preds = %15
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @S_NOATIME, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 5
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MS_NODIRATIME, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @S_ISDIR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %20
  store i32 0, i32* %3, align 4
  br label %106

43:                                               ; preds = %36, %27
  %44 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %45 = icmp eq %struct.vfsmount* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %106

47:                                               ; preds = %43
  %48 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %49 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MNT_NOATIME, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %47
  %55 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %56 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MNT_NODIRATIME, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @S_ISDIR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %47
  store i32 0, i32* %3, align 4
  br label %106

68:                                               ; preds = %61, %54
  %69 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %70 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MNT_RELATIME, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 3
  %80 = call i64 @timespec_compare(%struct.TYPE_3__* %77, i32* %79)
  %81 = icmp sle i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 1
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 2
  %87 = call i64 @timespec_compare(%struct.TYPE_3__* %84, i32* %86)
  %88 = icmp sle i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82, %75
  store i32 1, i32* %3, align 4
  br label %106

90:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %106

91:                                               ; preds = %68
  %92 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 bitcast (%struct.timespec* @CURRENT_TIME to i8*), i64 8, i1 false)
  %93 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %94, %98
  %100 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %101 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sle i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %106

105:                                              ; preds = %91
  store i32 1, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %104, %90, %89, %67, %46, %42, %19
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_4__*) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @timespec_compare(%struct.TYPE_3__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
