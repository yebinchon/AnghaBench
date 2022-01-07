; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_super.c_adfs_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_super.c_adfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { i32 }
%struct.adfs_sb_info = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@ADFS_DEFAULT_OWNER_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c",ownmask=%o\00", align 1
@ADFS_DEFAULT_OTHER_MASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c",othmask=%o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @adfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.adfs_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %6 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %7 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.adfs_sb_info* @ADFS_SB(i32 %8)
  store %struct.adfs_sb_info* %9, %struct.adfs_sb_info** %5, align 8
  %10 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %17 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %22 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %28 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %33 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ADFS_DEFAULT_OWNER_MASK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %40 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %45 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ADFS_DEFAULT_OTHER_MASK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %5, align 8
  %52 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %49, %43
  ret i32 0
}

declare dso_local %struct.adfs_sb_info* @ADFS_SB(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
