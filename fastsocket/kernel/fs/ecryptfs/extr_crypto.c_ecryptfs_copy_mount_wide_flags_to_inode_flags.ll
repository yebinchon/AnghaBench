; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_copy_mount_wide_flags_to_inode_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_copy_mount_wide_flags_to_inode_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i32 }
%struct.ecryptfs_mount_crypt_stat = type { i32 }

@ECRYPTFS_XATTR_METADATA_ENABLED = common dso_local global i32 0, align 4
@ECRYPTFS_METADATA_IN_XATTR = common dso_local global i32 0, align 4
@ECRYPTFS_ENCRYPTED_VIEW_ENABLED = common dso_local global i32 0, align 4
@ECRYPTFS_VIEW_AS_ENCRYPTED = common dso_local global i32 0, align 4
@ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES = common dso_local global i32 0, align 4
@ECRYPTFS_ENCRYPT_FILENAMES = common dso_local global i32 0, align 4
@ECRYPTFS_GLOBAL_ENCFN_USE_MOUNT_FNEK = common dso_local global i32 0, align 4
@ECRYPTFS_ENCFN_USE_MOUNT_FNEK = common dso_local global i32 0, align 4
@ECRYPTFS_GLOBAL_ENCFN_USE_FEK = common dso_local global i32 0, align 4
@ECRYPTFS_ENCFN_USE_FEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecryptfs_crypt_stat*, %struct.ecryptfs_mount_crypt_stat*)* @ecryptfs_copy_mount_wide_flags_to_inode_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecryptfs_copy_mount_wide_flags_to_inode_flags(%struct.ecryptfs_crypt_stat* %0, %struct.ecryptfs_mount_crypt_stat* %1) #0 {
  %3 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %4 = alloca %struct.ecryptfs_mount_crypt_stat*, align 8
  store %struct.ecryptfs_crypt_stat* %0, %struct.ecryptfs_crypt_stat** %3, align 8
  store %struct.ecryptfs_mount_crypt_stat* %1, %struct.ecryptfs_mount_crypt_stat** %4, align 8
  %5 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %4, align 8
  %6 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ECRYPTFS_XATTR_METADATA_ENABLED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @ECRYPTFS_METADATA_IN_XATTR, align 4
  %13 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %14 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %4, align 8
  %19 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ECRYPTFS_ENCRYPTED_VIEW_ENABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @ECRYPTFS_VIEW_AS_ENCRYPTED, align 4
  %26 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %27 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %4, align 8
  %32 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %30
  %38 = load i32, i32* @ECRYPTFS_ENCRYPT_FILENAMES, align 4
  %39 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %40 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %4, align 8
  %44 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ECRYPTFS_GLOBAL_ENCFN_USE_MOUNT_FNEK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load i32, i32* @ECRYPTFS_ENCFN_USE_MOUNT_FNEK, align 4
  %51 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %52 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %69

55:                                               ; preds = %37
  %56 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %4, align 8
  %57 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ECRYPTFS_GLOBAL_ENCFN_USE_FEK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @ECRYPTFS_ENCFN_USE_FEK, align 4
  %64 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %65 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %55
  br label %69

69:                                               ; preds = %68, %49
  br label %70

70:                                               ; preds = %69, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
