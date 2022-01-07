; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_get_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_get_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32*, i32, %struct.se_cmd*, i32 }
%struct.se_cmd = type { i32 }
%struct.iblock_dev = type { i32, i32 }

@BIO_MAX_PAGES = common dso_local global i64 0, align 8
@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate memory for bio\0A\00", align 1
@iblock_bio_destructor = common dso_local global i32 0, align 4
@iblock_bio_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.se_cmd*, i32, i64)* @iblock_get_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @iblock_get_bio(%struct.se_cmd* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.iblock_dev*, align 8
  %9 = alloca %struct.bio*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.iblock_dev* @IBLOCK_DEV(i32 %12)
  store %struct.iblock_dev* %13, %struct.iblock_dev** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @BIO_MAX_PAGES, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @BIO_MAX_PAGES, align 8
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i32, i32* @GFP_NOIO, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.iblock_dev*, %struct.iblock_dev** %8, align 8
  %23 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.bio* @bio_alloc_bioset(i32 %20, i64 %21, i32 %24)
  store %struct.bio* %25, %struct.bio** %9, align 8
  %26 = load %struct.bio*, %struct.bio** %9, align 8
  %27 = icmp ne %struct.bio* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %48

30:                                               ; preds = %19
  %31 = load %struct.iblock_dev*, %struct.iblock_dev** %8, align 8
  %32 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bio*, %struct.bio** %9, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %37 = load %struct.bio*, %struct.bio** %9, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 3
  store %struct.se_cmd* %36, %struct.se_cmd** %38, align 8
  %39 = load i32, i32* @iblock_bio_destructor, align 4
  %40 = load %struct.bio*, %struct.bio** %9, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bio*, %struct.bio** %9, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 1
  store i32* @iblock_bio_done, i32** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.bio*, %struct.bio** %9, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.bio*, %struct.bio** %9, align 8
  store %struct.bio* %47, %struct.bio** %4, align 8
  br label %48

48:                                               ; preds = %30, %28
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  ret %struct.bio* %49
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(i32) #1

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i64, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
