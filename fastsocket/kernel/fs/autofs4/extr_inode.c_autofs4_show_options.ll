; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_inode.c_autofs4_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_inode.c_autofs4_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i64, i64 }
%struct.autofs_sb_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c",fd=%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c",pgrp=%d\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c",timeout=%lu\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c",minproto=%d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c",maxproto=%d\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c",offset\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c",direct\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c",indirect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @autofs4_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs4_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %5, align 8
  %8 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %9 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.autofs_sb_info* @autofs4_sbi(%struct.TYPE_4__* %10)
  store %struct.autofs_sb_info* %11, %struct.autofs_sb_info** %6, align 8
  %12 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %13 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %7, align 8
  %19 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %20 = icmp ne %struct.autofs_sb_info* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

22:                                               ; preds = %2
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %25 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %32, %22
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %52 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %57 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @HZ, align 4
  %60 = sdiv i32 %58, %59
  %61 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %63 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %64 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %69 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %73 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @autofs_type_offset(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %49
  %78 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %79 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %93

80:                                               ; preds = %49
  %81 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %82 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @autofs_type_direct(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %88 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %92

89:                                               ; preds = %80
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %77
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %21
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.autofs_sb_info* @autofs4_sbi(%struct.TYPE_4__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @autofs_type_offset(i32) #1

declare dso_local i64 @autofs_type_direct(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
