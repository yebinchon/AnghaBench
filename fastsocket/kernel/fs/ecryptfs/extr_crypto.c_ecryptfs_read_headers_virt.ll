; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_read_headers_virt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_read_headers_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i64, i32* }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ECRYPTFS_FILE_SIZE_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAGIC_ECRYPTFS_MARKER_SIZE_BYTES = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error processing flags\0A\00", align 1
@ECRYPTFS_SUPPORTED_FILE_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [87 x i8] c"File version is [%d]; only file version [%d] is supported by this version of eCryptfs\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Error reading header metadata; rc = [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ecryptfs_crypt_stat*, %struct.dentry*, i32)* @ecryptfs_read_headers_virt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_read_headers_virt(i8* %0, %struct.ecryptfs_crypt_stat* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ecryptfs_crypt_stat* %1, %struct.ecryptfs_crypt_stat** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %13 = call i32 @ecryptfs_set_default_sizes(%struct.ecryptfs_crypt_stat* %12)
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_2__* @ecryptfs_superblock_to_private(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %20 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load i32, i32* @ECRYPTFS_FILE_SIZE_BYTES, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = call i32 @contains_ecryptfs_marker(i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %101

32:                                               ; preds = %4
  %33 = load i64, i64* @MAGIC_ECRYPTFS_MARKER_SIZE_BYTES, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i32 @ecryptfs_process_flags(%struct.ecryptfs_crypt_stat* %38, i8* %42, i32* %11)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load i32, i32* @KERN_WARNING, align 4
  %48 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %101

49:                                               ; preds = %32
  %50 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %51 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ECRYPTFS_SUPPORTED_FILE_VERSION, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i32, i32* @KERN_WARNING, align 4
  %57 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %58 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ECRYPTFS_SUPPORTED_FILE_VERSION, align 8
  %61 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %56, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %101

64:                                               ; preds = %49
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %69 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %70, 1
  br i1 %71, label %72, label %90

72:                                               ; preds = %64
  %73 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @parse_header_metadata(%struct.ecryptfs_crypt_stat* %73, i8* %77, i32* %11, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32, i32* @KERN_WARNING, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %72
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %93

90:                                               ; preds = %64
  %91 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %92 = call i32 @set_default_header_data(%struct.ecryptfs_crypt_stat* %91)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load %struct.dentry*, %struct.dentry** %7, align 8
  %100 = call i32 @ecryptfs_parse_packet_set(%struct.ecryptfs_crypt_stat* %94, i8* %98, %struct.dentry* %99)
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %93, %55, %46, %29
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i32 @ecryptfs_set_default_sizes(%struct.ecryptfs_crypt_stat*) #1

declare dso_local %struct.TYPE_2__* @ecryptfs_superblock_to_private(i32) #1

declare dso_local i32 @contains_ecryptfs_marker(i8*) #1

declare dso_local i32 @ecryptfs_process_flags(%struct.ecryptfs_crypt_stat*, i8*, i32*) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*, ...) #1

declare dso_local i32 @parse_header_metadata(%struct.ecryptfs_crypt_stat*, i8*, i32*, i32) #1

declare dso_local i32 @set_default_header_data(%struct.ecryptfs_crypt_stat*) #1

declare dso_local i32 @ecryptfs_parse_packet_set(%struct.ecryptfs_crypt_stat*, i8*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
