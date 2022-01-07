; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_crypto_hash_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_crypto_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_config_group = type { i32, i32, i64, i32 }
%struct.pohmelfs_crypto = type { i32, i32, i64 }

@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pohmelfs_config_group*, %struct.pohmelfs_crypto*)* @pohmelfs_crypto_hash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_crypto_hash_init(%struct.pohmelfs_config_group* %0, %struct.pohmelfs_crypto* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pohmelfs_config_group*, align 8
  %5 = alloca %struct.pohmelfs_crypto*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.pohmelfs_config_group* %0, %struct.pohmelfs_config_group** %4, align 8
  store %struct.pohmelfs_crypto* %1, %struct.pohmelfs_crypto** %5, align 8
  %8 = load %struct.pohmelfs_crypto*, %struct.pohmelfs_crypto** %5, align 8
  %9 = getelementptr inbounds %struct.pohmelfs_crypto, %struct.pohmelfs_crypto* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.pohmelfs_crypto*, %struct.pohmelfs_crypto** %5, align 8
  %14 = getelementptr inbounds %struct.pohmelfs_crypto, %struct.pohmelfs_crypto* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %7, align 8
  %19 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %20 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EEXIST, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %77

26:                                               ; preds = %2
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64 @kstrdup(i8* %27, i32 %28)
  %30 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %31 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %33 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %77

39:                                               ; preds = %26
  %40 = load %struct.pohmelfs_crypto*, %struct.pohmelfs_crypto** %5, align 8
  %41 = getelementptr inbounds %struct.pohmelfs_crypto, %struct.pohmelfs_crypto* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %44 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pohmelfs_crypto*, %struct.pohmelfs_crypto** %5, align 8
  %46 = getelementptr inbounds %struct.pohmelfs_crypto, %struct.pohmelfs_crypto* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %49 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pohmelfs_crypto*, %struct.pohmelfs_crypto** %5, align 8
  %51 = getelementptr inbounds %struct.pohmelfs_crypto, %struct.pohmelfs_crypto* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @kmalloc(i32 %52, i32 %53)
  %55 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %56 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %58 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %39
  %62 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %63 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @kfree(i64 %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %77

68:                                               ; preds = %39
  %69 = load %struct.pohmelfs_config_group*, %struct.pohmelfs_config_group** %4, align 8
  %70 = getelementptr inbounds %struct.pohmelfs_config_group, %struct.pohmelfs_config_group* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.pohmelfs_crypto*, %struct.pohmelfs_crypto** %5, align 8
  %74 = getelementptr inbounds %struct.pohmelfs_crypto, %struct.pohmelfs_crypto* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(i32 %71, i32* %72, i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %68, %61, %36, %23
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @kstrdup(i8*, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
