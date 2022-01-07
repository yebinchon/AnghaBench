; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_rd.c_rd_set_configfs_dev_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_rd.c_rd_set_configfs_dev_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.rd_dev = type { i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"RAMDISK: Referencing Page Count: %u\0A\00", align 1
@RDF_HAS_PAGE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*, i32)* @rd_set_configfs_dev_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_set_configfs_dev_params(%struct.se_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rd_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.se_device*, %struct.se_device** %5, align 8
  %19 = call %struct.rd_dev* @RD_DEV(%struct.se_device* %18)
  store %struct.rd_dev* %19, %struct.rd_dev** %8, align 8
  %20 = load i32, i32* @MAX_OPT_ARGS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kstrdup(i8* %24, i32 %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %74

32:                                               ; preds = %3
  %33 = load i8*, i8** %11, align 8
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %62, %41, %32
  %35 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load i8*, i8** %10, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %34

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* @tokens, align 4
  %45 = call i32 @match_token(i8* %43, i32 %44, i32* %23)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  switch i32 %46, label %61 [
    i32 128, label %47
  ]

47:                                               ; preds = %42
  %48 = call i32 @match_int(i32* %23, i32* %15)
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.rd_dev*, %struct.rd_dev** %8, align 8
  %51 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.rd_dev*, %struct.rd_dev** %8, align 8
  %53 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @RDF_HAS_PAGE_COUNT, align 4
  %57 = load %struct.rd_dev*, %struct.rd_dev** %8, align 8
  %58 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %62

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61, %47
  br label %34

63:                                               ; preds = %34
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @kfree(i8* %64)
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %14, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %74

74:                                               ; preds = %72, %29
  %75 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.rd_dev* @RD_DEV(%struct.se_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_int(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
