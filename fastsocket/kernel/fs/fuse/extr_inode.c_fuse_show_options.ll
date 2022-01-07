; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.fuse_conn = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c",user_id=%u\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c",group_id=%u\00", align 1
@FUSE_DEFAULT_PERMISSIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c",default_permissions\00", align 1
@FUSE_ALLOW_OTHER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c",allow_other\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c",max_read=%u\00", align 1
@FUSE_DEFAULT_BLKSIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c",blksize=%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @fuse_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.fuse_conn*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %6 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %7 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.TYPE_2__* %8)
  store %struct.fuse_conn* %9, %struct.fuse_conn** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %12 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %17 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %21 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FUSE_DEFAULT_PERMISSIONS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = call i32 @seq_puts(%struct.seq_file* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %31 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FUSE_ALLOW_OTHER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = call i32 @seq_puts(%struct.seq_file* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %41 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %47 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %52 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  %58 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %59 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FUSE_DEFAULT_BLKSIZE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %68 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %65, %57, %50
  ret i32 0
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.TYPE_2__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
