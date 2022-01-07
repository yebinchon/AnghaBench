; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_get_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_get_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 }
%struct.vfsmount = type { i32 }
%struct.super_block = type { i32, i32 }
%struct.cifs_sb_info = type { %struct.cifs_sb_info* }
%struct.smb_vol = type { i32, i32 }
%struct.cifs_mnt_data = type { i32, %struct.cifs_sb_info*, %struct.super_block* }

@.str = private unnamed_addr constant [23 x i8] c"Devname: %s flags: %d \00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MS_SILENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cifs_mount failed w/return code = %d\00", align 1
@cifs_set_super = common dso_local global i32 0, align 4
@MS_NODIRATIME = common dso_local global i32 0, align 4
@MS_NOATIME = common dso_local global i32 0, align 4
@MS_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)* @cifs_get_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_get_sb(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, %struct.vfsmount* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_system_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.cifs_sb_info*, align 8
  %15 = alloca %struct.smb_vol*, align 8
  %16 = alloca %struct.cifs_mnt_data, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call %struct.super_block* @cifs_get_volume_info(i8* %20, i8* %21)
  %23 = bitcast %struct.super_block* %22 to %struct.smb_vol*
  store %struct.smb_vol* %23, %struct.smb_vol** %15, align 8
  %24 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %25 = bitcast %struct.smb_vol* %24 to %struct.super_block*
  %26 = call i64 @IS_ERR(%struct.super_block* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %30 = bitcast %struct.smb_vol* %29 to %struct.super_block*
  %31 = call i32 @PTR_ERR(%struct.super_block* %30)
  store i32 %31, i32* %6, align 4
  br label %139

32:                                               ; preds = %5
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.cifs_sb_info* @kzalloc(i32 8, i32 %33)
  store %struct.cifs_sb_info* %34, %struct.cifs_sb_info** %14, align 8
  %35 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %36 = icmp eq %struct.cifs_sb_info* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %134

40:                                               ; preds = %32
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.cifs_sb_info* @kstrndup(i8* %41, i32 %42, i32 %43)
  %45 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %46 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %45, i32 0, i32 0
  store %struct.cifs_sb_info* %44, %struct.cifs_sb_info** %46, align 8
  %47 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %48 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %47, i32 0, i32 0
  %49 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %48, align 8
  %50 = icmp eq %struct.cifs_sb_info* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %131

54:                                               ; preds = %40
  %55 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %56 = bitcast %struct.smb_vol* %55 to %struct.super_block*
  %57 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %58 = call i32 @cifs_setup_cifs_sb(%struct.super_block* %56, %struct.cifs_sb_info* %57)
  %59 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %60 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %61 = bitcast %struct.smb_vol* %60 to %struct.super_block*
  %62 = call i32 @cifs_mount(%struct.cifs_sb_info* %59, %struct.super_block* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @MS_SILENT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %65
  br label %126

74:                                               ; preds = %54
  %75 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %76 = bitcast %struct.smb_vol* %75 to %struct.super_block*
  %77 = getelementptr inbounds %struct.cifs_mnt_data, %struct.cifs_mnt_data* %16, i32 0, i32 2
  store %struct.super_block* %76, %struct.super_block** %77, align 8
  %78 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %79 = getelementptr inbounds %struct.cifs_mnt_data, %struct.cifs_mnt_data* %16, i32 0, i32 1
  store %struct.cifs_sb_info* %78, %struct.cifs_sb_info** %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds %struct.cifs_mnt_data, %struct.cifs_mnt_data* %16, i32 0, i32 0
  store i32 %80, i32* %81, align 8
  %82 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %83 = load i32, i32* @cifs_set_super, align 4
  %84 = call %struct.super_block* @sget(%struct.file_system_type* %82, i32* null, i32 %83, %struct.cifs_mnt_data* %16)
  store %struct.super_block* %84, %struct.super_block** %13, align 8
  %85 = load %struct.super_block*, %struct.super_block** %13, align 8
  %86 = call i64 @IS_ERR(%struct.super_block* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %74
  %89 = load %struct.super_block*, %struct.super_block** %13, align 8
  %90 = call i32 @PTR_ERR(%struct.super_block* %89)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %92 = call i32 @cifs_umount(%struct.cifs_sb_info* %91)
  br label %121

93:                                               ; preds = %74
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.super_block*, %struct.super_block** %13, align 8
  %96 = getelementptr inbounds %struct.super_block, %struct.super_block* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @MS_NODIRATIME, align 4
  %98 = load i32, i32* @MS_NOATIME, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.super_block*, %struct.super_block** %13, align 8
  %101 = getelementptr inbounds %struct.super_block, %struct.super_block* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.super_block*, %struct.super_block** %13, align 8
  %105 = call i32 @cifs_read_super(%struct.super_block* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %93
  br label %118

109:                                              ; preds = %93
  %110 = load i32, i32* @MS_ACTIVE, align 4
  %111 = load %struct.super_block*, %struct.super_block** %13, align 8
  %112 = getelementptr inbounds %struct.super_block, %struct.super_block* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %116 = load %struct.super_block*, %struct.super_block** %13, align 8
  %117 = call i32 @simple_set_mnt(%struct.vfsmount* %115, %struct.super_block* %116)
  br label %121

118:                                              ; preds = %108
  %119 = load %struct.super_block*, %struct.super_block** %13, align 8
  %120 = call i32 @deactivate_locked_super(%struct.super_block* %119)
  br label %121

121:                                              ; preds = %134, %118, %109, %88
  %122 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %123 = bitcast %struct.smb_vol* %122 to %struct.super_block*
  %124 = call i32 @cifs_cleanup_volume_info(%struct.super_block* %123)
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %6, align 4
  br label %139

126:                                              ; preds = %73
  %127 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %128 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %127, i32 0, i32 0
  %129 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %128, align 8
  %130 = call i32 @kfree(%struct.cifs_sb_info* %129)
  br label %131

131:                                              ; preds = %126, %51
  %132 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %133 = call i32 @kfree(%struct.cifs_sb_info* %132)
  br label %134

134:                                              ; preds = %131, %37
  %135 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %136 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @unload_nls(i32 %137)
  br label %121

139:                                              ; preds = %121, %28
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @cFYI(i32, i8*, i8*, i32) #1

declare dso_local %struct.super_block* @cifs_get_volume_info(i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.super_block*) #1

declare dso_local %struct.cifs_sb_info* @kzalloc(i32, i32) #1

declare dso_local %struct.cifs_sb_info* @kstrndup(i8*, i32, i32) #1

declare dso_local i32 @cifs_setup_cifs_sb(%struct.super_block*, %struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_mount(%struct.cifs_sb_info*, %struct.super_block*) #1

declare dso_local i32 @cERROR(i32, i8*, i32) #1

declare dso_local %struct.super_block* @sget(%struct.file_system_type*, i32*, i32, %struct.cifs_mnt_data*) #1

declare dso_local i32 @cifs_umount(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_read_super(%struct.super_block*) #1

declare dso_local i32 @simple_set_mnt(%struct.vfsmount*, %struct.super_block*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

declare dso_local i32 @cifs_cleanup_volume_info(%struct.super_block*) #1

declare dso_local i32 @kfree(%struct.cifs_sb_info*) #1

declare dso_local i32 @unload_nls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
