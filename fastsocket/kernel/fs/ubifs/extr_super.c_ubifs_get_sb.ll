; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_get_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_get_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 }
%struct.vfsmount = type { i32 }
%struct.ubi_volume_desc = type { i32, %struct.ubi_volume_desc*, i64 }
%struct.ubi_volume_info = type { i32, i32, i32 }
%struct.super_block = type { i32, %struct.super_block*, i64 }

@.str = private unnamed_addr constant [19 x i8] c"name %s, flags %#x\00", align 1
@UBI_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot open \22%s\22, error %d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"opened ubi%d_%d\00", align 1
@sb_test = common dso_local global i32 0, align 4
@set_anon_super = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"this ubi volume is already mounted\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MS_SILENT = common dso_local global i32 0, align 4
@MS_ACTIVE = common dso_local global i32 0, align 4
@MS_NOATIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)* @ubifs_get_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_get_sb(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, %struct.vfsmount* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_system_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca %struct.ubi_volume_desc*, align 8
  %13 = alloca %struct.ubi_volume_info, align 4
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* @UBI_READONLY, align 4
  %21 = call %struct.ubi_volume_desc* @open_ubi(i8* %19, i32 %20)
  store %struct.ubi_volume_desc* %21, %struct.ubi_volume_desc** %12, align 8
  %22 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %12, align 8
  %23 = call i64 @IS_ERR(%struct.ubi_volume_desc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %12, align 8
  %28 = call i32 @PTR_ERR(%struct.ubi_volume_desc* %27)
  %29 = call i32 @ubifs_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %28)
  %30 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %12, align 8
  %31 = call i32 @PTR_ERR(%struct.ubi_volume_desc* %30)
  store i32 %31, i32* %6, align 4
  br label %115

32:                                               ; preds = %5
  %33 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %12, align 8
  %34 = call i32 @ubi_get_volume_info(%struct.ubi_volume_desc* %33, %struct.ubi_volume_info* %13)
  %35 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %13, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %13, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %38)
  %40 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %41 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %13, i32 0, i32 0
  %42 = call %struct.ubi_volume_desc* @sget(%struct.file_system_type* %40, i32* @sb_test, i32* @set_anon_super, i32* %41)
  %43 = bitcast %struct.ubi_volume_desc* %42 to %struct.super_block*
  store %struct.super_block* %43, %struct.super_block** %14, align 8
  %44 = load %struct.super_block*, %struct.super_block** %14, align 8
  %45 = bitcast %struct.super_block* %44 to %struct.ubi_volume_desc*
  %46 = call i64 @IS_ERR(%struct.ubi_volume_desc* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load %struct.super_block*, %struct.super_block** %14, align 8
  %50 = bitcast %struct.super_block* %49 to %struct.ubi_volume_desc*
  %51 = call i32 @PTR_ERR(%struct.ubi_volume_desc* %50)
  store i32 %51, i32* %15, align 4
  br label %111

52:                                               ; preds = %32
  %53 = load %struct.super_block*, %struct.super_block** %14, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.super_block*, %struct.super_block** %14, align 8
  %61 = getelementptr inbounds %struct.super_block, %struct.super_block* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = xor i32 %59, %62
  %64 = load i32, i32* @MS_RDONLY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %15, align 4
  br label %107

70:                                               ; preds = %57
  br label %100

71:                                               ; preds = %52
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.super_block*, %struct.super_block** %14, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %12, align 8
  %76 = bitcast %struct.ubi_volume_desc* %75 to %struct.super_block*
  %77 = load %struct.super_block*, %struct.super_block** %14, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 1
  store %struct.super_block* %76, %struct.super_block** %78, align 8
  %79 = load %struct.super_block*, %struct.super_block** %14, align 8
  %80 = bitcast %struct.super_block* %79 to %struct.ubi_volume_desc*
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @MS_SILENT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = call i32 @ubifs_fill_super(%struct.ubi_volume_desc* %80, i8* %81, i32 %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %71
  br label %107

92:                                               ; preds = %71
  %93 = load i32, i32* @MS_ACTIVE, align 4
  %94 = load i32, i32* @MS_NOATIME, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.super_block*, %struct.super_block** %14, align 8
  %97 = getelementptr inbounds %struct.super_block, %struct.super_block* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %92, %70
  %101 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %12, align 8
  %102 = call i32 @ubi_close_volume(%struct.ubi_volume_desc* %101)
  %103 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %104 = load %struct.super_block*, %struct.super_block** %14, align 8
  %105 = bitcast %struct.super_block* %104 to %struct.ubi_volume_desc*
  %106 = call i32 @simple_set_mnt(%struct.vfsmount* %103, %struct.ubi_volume_desc* %105)
  store i32 0, i32* %6, align 4
  br label %115

107:                                              ; preds = %91, %67
  %108 = load %struct.super_block*, %struct.super_block** %14, align 8
  %109 = bitcast %struct.super_block* %108 to %struct.ubi_volume_desc*
  %110 = call i32 @deactivate_locked_super(%struct.ubi_volume_desc* %109)
  br label %111

111:                                              ; preds = %107, %48
  %112 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %12, align 8
  %113 = call i32 @ubi_close_volume(%struct.ubi_volume_desc* %112)
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %111, %100, %25
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @dbg_gen(i8*, ...) #1

declare dso_local %struct.ubi_volume_desc* @open_ubi(i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubi_volume_desc*) #1

declare dso_local i32 @ubifs_err(i8*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.ubi_volume_desc*) #1

declare dso_local i32 @ubi_get_volume_info(%struct.ubi_volume_desc*, %struct.ubi_volume_info*) #1

declare dso_local %struct.ubi_volume_desc* @sget(%struct.file_system_type*, i32*, i32*, i32*) #1

declare dso_local i32 @ubifs_fill_super(%struct.ubi_volume_desc*, i8*, i32) #1

declare dso_local i32 @ubi_close_volume(%struct.ubi_volume_desc*) #1

declare dso_local i32 @simple_set_mnt(%struct.vfsmount*, %struct.ubi_volume_desc*) #1

declare dso_local i32 @deactivate_locked_super(%struct.ubi_volume_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
