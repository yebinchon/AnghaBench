; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_mount_data_kernel = type { i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"smbfs\00", align 1
@opts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"'%s' -> '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@SMB_MOUNT_VERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"smbfs: Bad mount version %ld, expected %d\0A\00", align 1
@SMB_MOUNT_UID = common dso_local global i64 0, align 8
@SMB_MOUNT_GID = common dso_local global i64 0, align 8
@S_IRWXUGO = common dso_local global i64 0, align 8
@S_IFREG = common dso_local global i64 0, align 8
@SMB_MOUNT_FMODE = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i64 0, align 8
@SMB_MOUNT_DMODE = common dso_local global i64 0, align 8
@SMB_NLS_MAXNAMELEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"smbfs: Unrecognized mount option %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_mount_data_kernel*, i8*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(%struct.smb_mount_data_kernel* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_mount_data_kernel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.smb_mount_data_kernel* %0, %struct.smb_mount_data_kernel** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %98, %2
  %12 = load i32, i32* @opts, align 4
  %13 = call i32 @smb_getopt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, i32 %12, i8** %10, i8** %9, i64* %7, i64* %8)
  store i32 %13, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %99

15:                                               ; preds = %11
  %16 = load i8*, i8** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8
  br label %22

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i8* [ %20, %19 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %21 ]
  %24 = call i32 @VERBOSE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* %23)
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %95 [
    i32 1, label %26
    i32 118, label %27
    i32 117, label %39
    i32 103, label %46
    i32 102, label %53
    i32 100, label %64
    i32 105, label %75
    i32 99, label %83
    i32 116, label %91
  ]

26:                                               ; preds = %22
  br label %98

27:                                               ; preds = %22
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @SMB_MOUNT_VERSION, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @SMB_MOUNT_VERSION, align 8
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %32, i64 %33)
  store i32 0, i32* %3, align 4
  br label %104

35:                                               ; preds = %27
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.smb_mount_data_kernel*, %struct.smb_mount_data_kernel** %4, align 8
  %38 = getelementptr inbounds %struct.smb_mount_data_kernel, %struct.smb_mount_data_kernel* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %98

39:                                               ; preds = %22
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.smb_mount_data_kernel*, %struct.smb_mount_data_kernel** %4, align 8
  %42 = getelementptr inbounds %struct.smb_mount_data_kernel, %struct.smb_mount_data_kernel* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* @SMB_MOUNT_UID, align 8
  %44 = load i64, i64* %7, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %7, align 8
  br label %98

46:                                               ; preds = %22
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.smb_mount_data_kernel*, %struct.smb_mount_data_kernel** %4, align 8
  %49 = getelementptr inbounds %struct.smb_mount_data_kernel, %struct.smb_mount_data_kernel* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* @SMB_MOUNT_GID, align 8
  %51 = load i64, i64* %7, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %98

53:                                               ; preds = %22
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @S_IRWXUGO, align 8
  %56 = and i64 %54, %55
  %57 = load i64, i64* @S_IFREG, align 8
  %58 = or i64 %56, %57
  %59 = load %struct.smb_mount_data_kernel*, %struct.smb_mount_data_kernel** %4, align 8
  %60 = getelementptr inbounds %struct.smb_mount_data_kernel, %struct.smb_mount_data_kernel* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* @SMB_MOUNT_FMODE, align 8
  %62 = load i64, i64* %7, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %7, align 8
  br label %98

64:                                               ; preds = %22
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @S_IRWXUGO, align 8
  %67 = and i64 %65, %66
  %68 = load i64, i64* @S_IFDIR, align 8
  %69 = or i64 %67, %68
  %70 = load %struct.smb_mount_data_kernel*, %struct.smb_mount_data_kernel** %4, align 8
  %71 = getelementptr inbounds %struct.smb_mount_data_kernel, %struct.smb_mount_data_kernel* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* @SMB_MOUNT_DMODE, align 8
  %73 = load i64, i64* %7, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %7, align 8
  br label %98

75:                                               ; preds = %22
  %76 = load %struct.smb_mount_data_kernel*, %struct.smb_mount_data_kernel** %4, align 8
  %77 = getelementptr inbounds %struct.smb_mount_data_kernel, %struct.smb_mount_data_kernel* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* @SMB_NLS_MAXNAMELEN, align 4
  %82 = call i32 @strlcpy(i32 %79, i8* %80, i32 %81)
  br label %98

83:                                               ; preds = %22
  %84 = load %struct.smb_mount_data_kernel*, %struct.smb_mount_data_kernel** %4, align 8
  %85 = getelementptr inbounds %struct.smb_mount_data_kernel, %struct.smb_mount_data_kernel* %84, i32 0, i32 7
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* @SMB_NLS_MAXNAMELEN, align 4
  %90 = call i32 @strlcpy(i32 %87, i8* %88, i32 %89)
  br label %98

91:                                               ; preds = %22
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.smb_mount_data_kernel*, %struct.smb_mount_data_kernel** %4, align 8
  %94 = getelementptr inbounds %struct.smb_mount_data_kernel, %struct.smb_mount_data_kernel* %93, i32 0, i32 5
  store i64 %92, i64* %94, align 8
  br label %98

95:                                               ; preds = %22
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  store i32 -1, i32* %3, align 4
  br label %104

98:                                               ; preds = %91, %83, %75, %64, %53, %46, %39, %35, %26
  br label %11

99:                                               ; preds = %11
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.smb_mount_data_kernel*, %struct.smb_mount_data_kernel** %4, align 8
  %102 = getelementptr inbounds %struct.smb_mount_data_kernel, %struct.smb_mount_data_kernel* %101, i32 0, i32 6
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %99, %95, %31
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @smb_getopt(i8*, i8**, i32, i8**, i8**, i64*, i64*) #1

declare dso_local i32 @VERBOSE(i8*, i8*, i8*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
