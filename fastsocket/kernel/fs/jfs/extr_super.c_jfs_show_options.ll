; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_super.c_jfs_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_super.c_jfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { i32 }
%struct.jfs_sb_info = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c",uid=%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c",umask=%03o\00", align 1
@JFS_NOINTEGRITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c",nointegrity\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c",iocharset=%s\00", align 1
@JFS_ERR_CONTINUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c",errors=continue\00", align 1
@JFS_ERR_PANIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c",errors=panic\00", align 1
@JFS_GRPQUOTA = common dso_local global i32 0, align 4
@JFS_USRQUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @jfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.jfs_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %6 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %7 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.jfs_sb_info* @JFS_SBI(i32 %8)
  store %struct.jfs_sb_info* %9, %struct.jfs_sb_info** %5, align 8
  %10 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %17 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %22 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %28 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %33 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %39 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %44 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @JFS_NOINTEGRITY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = call i32 @seq_puts(%struct.seq_file* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %54 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %53, i32 0, i32 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = icmp ne %struct.TYPE_2__* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %60 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %57, %52
  %66 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %67 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @JFS_ERR_CONTINUE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %77 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @JFS_ERR_PANIC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %84 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %75
  ret i32 0
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
