; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_compute_root_iv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_compute_root_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i32, i32, i32, i32, i32 }

@MD5_DIGEST_SIZE = common dso_local global i32 0, align 4
@ECRYPTFS_KEY_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Session key not valid; cannot generate root IV\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Error attempting to compute MD5 while generating root IV\0A\00", align 1
@ECRYPTFS_SECURITY_WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_compute_root_iv(%struct.ecryptfs_crypt_stat* %0) #0 {
  %2 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.ecryptfs_crypt_stat* %0, %struct.ecryptfs_crypt_stat** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @MD5_DIGEST_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %11 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MD5_DIGEST_SIZE, align 4
  %14 = icmp sgt i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %18 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %24 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ECRYPTFS_KEY_VALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @KERN_WARNING, align 4
  %33 = call i32 @ecryptfs_printk(i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %56

34:                                               ; preds = %1
  %35 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %36 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %37 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %40 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ecryptfs_calculate_md5(i8* %9, %struct.ecryptfs_crypt_stat* %35, i32 %38, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @KERN_WARNING, align 4
  %47 = call i32 @ecryptfs_printk(i32 %46, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %56

48:                                               ; preds = %34
  %49 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %50 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %53 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i32 %51, i8* %9, i32 %54)
  br label %56

56:                                               ; preds = %48, %45, %29
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %61 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %64 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memset(i32 %62, i32 0, i32 %65)
  %67 = load i32, i32* @ECRYPTFS_SECURITY_WARNING, align 4
  %68 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %2, align 8
  %69 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %59, %56
  %73 = load i32, i32* %3, align 4
  %74 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %74)
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @ecryptfs_printk(i32, i8*) #2

declare dso_local i32 @ecryptfs_calculate_md5(i8*, %struct.ecryptfs_crypt_stat*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
