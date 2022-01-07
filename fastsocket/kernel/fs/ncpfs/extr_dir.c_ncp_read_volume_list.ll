; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_read_volume_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_read_volume_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ncp_cache_control = type { i32 }
%struct.ncp_server = type { i32 }
%struct.ncp_volume_info = type { i64 }
%struct.ncp_entry_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"ncp_read_volume_list: pos=%ld\0A\00", align 1
@NCP_NUMBER_OF_VOLUMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"ncp_read_volume_list: found vol: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ncpfs: could not lookup vol %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, i8*, i32, %struct.ncp_cache_control*)* @ncp_read_volume_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncp_read_volume_list(%struct.file* %0, i8* %1, i32 %2, %struct.ncp_cache_control* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ncp_cache_control*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ncp_server*, align 8
  %12 = alloca %struct.ncp_volume_info, align 8
  %13 = alloca %struct.ncp_entry_info, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ncp_cache_control* %3, %struct.ncp_cache_control** %8, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %18, %struct.dentry** %9, align 8
  %19 = load %struct.dentry*, %struct.dentry** %9, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = call %struct.ncp_server* @NCP_SERVER(%struct.inode* %22)
  store %struct.ncp_server* %23, %struct.ncp_server** %11, align 8
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %71, %4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @NCP_NUMBER_OF_VOLUMES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %28
  %33 = load %struct.ncp_server*, %struct.ncp_server** %11, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i64 @ncp_get_volume_info_with_number(%struct.ncp_server* %33, i32 %34, %struct.ncp_volume_info* %12)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %74

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %12, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @strlen(i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %71

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %12, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load %struct.ncp_server*, %struct.ncp_server** %11, align 8
  %49 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %12, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %13, i32 0, i32 0
  %52 = call i64 @ncp_lookup_volume(%struct.ncp_server* %48, i64 %50, %struct.TYPE_4__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.ncp_volume_info, %struct.ncp_volume_info* %12, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  br label %71

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %13, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %13, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load %struct.file*, %struct.file** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.ncp_cache_control*, %struct.ncp_cache_control** %8, align 8
  %67 = call i32 @ncp_fill_cache(%struct.file* %63, i8* %64, i32 %65, %struct.ncp_cache_control* %66, %struct.ncp_entry_info* %13)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %74

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %54, %43
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %28

74:                                               ; preds = %37, %69, %28
  ret void
}

declare dso_local %struct.ncp_server* @NCP_SERVER(%struct.inode*) #1

declare dso_local i32 @DPRINTK(i8*, i64) #1

declare dso_local i64 @ncp_get_volume_info_with_number(%struct.ncp_server*, i32, %struct.ncp_volume_info*) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i64 @ncp_lookup_volume(%struct.ncp_server*, i64, %struct.TYPE_4__*) #1

declare dso_local i32 @ncp_fill_cache(%struct.file*, i8*, i32, %struct.ncp_cache_control*, %struct.ncp_entry_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
