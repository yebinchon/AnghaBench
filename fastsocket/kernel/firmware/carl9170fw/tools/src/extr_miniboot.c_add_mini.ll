; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_miniboot.c_add_mini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_miniboot.c_add_mini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw = type { i32 }
%struct.stat = type { i64 }
%struct.carl9170fw_otus_desc = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to open file %s (%d).\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to query file infos from \22%s\22 (%d).\0A\00", align 1
@OTUS_MAGIC = common dso_local global i64 0, align 8
@CARL9170FW_OTUS_DESC_CUR_VER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"No OTUS descriptor found\0A\00", align 1
@CARL9170FW_MINIBOOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Firmware has already a miniboot image.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Unable to add miniboot image.\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Unable to load miniboot.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carlfw*, i8*)* @add_mini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_mini(%struct.carlfw* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.carlfw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.carl9170fw_otus_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.carlfw* %0, %struct.carlfw** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.carl9170fw_otus_desc* null, %struct.carl9170fw_otus_desc** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %18, i32 %19)
  %21 = load i32, i32* @errno, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  br label %95

23:                                               ; preds = %2
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @fileno(i32* %24)
  %26 = call i32 @fstat(i32 %25, %struct.stat* %6)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %31, i32 %32)
  %34 = load i32, i32* @errno, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %95

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %40 = load i64, i64* @OTUS_MAGIC, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* @CARL9170FW_OTUS_DESC_CUR_VER, align 4
  %43 = call %struct.carl9170fw_otus_desc* @carlfw_find_desc(%struct.carlfw* %39, i32* %41, i32 8, i32 %42)
  store %struct.carl9170fw_otus_desc* %43, %struct.carl9170fw_otus_desc** %7, align 8
  %44 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %7, align 8
  %45 = icmp ne %struct.carl9170fw_otus_desc* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %95

49:                                               ; preds = %36
  %50 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %7, align 8
  %51 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CARL9170FW_MINIBOOT, align 4
  %54 = call i64 @carl9170fw_supports(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %95

59:                                               ; preds = %49
  %60 = load i32, i32* @CARL9170FW_MINIBOOT, align 4
  %61 = call i32 @BIT(i32 %60)
  %62 = call i32 @cpu_to_le32(i32 %61)
  %63 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %7, align 8
  %64 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @cpu_to_le16(i64 %67)
  %69 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %7, align 8
  %70 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i8* @carlfw_mod_headroom(%struct.carlfw* %71, i64 %72)
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i64 @IS_ERR_OR_NULL(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %95

80:                                               ; preds = %59
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @fread(i8* %81, i64 %82, i32 1, i32* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %95

90:                                               ; preds = %80
  %91 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %92 = call i32 @carlfw_store(%struct.carlfw* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @fclose(i32* %93)
  store i32 0, i32* %3, align 4
  br label %103

95:                                               ; preds = %87, %77, %56, %46, %29, %16
  %96 = load i32*, i32** %8, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @fclose(i32* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %90
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local %struct.carl9170fw_otus_desc* @carlfw_find_desc(%struct.carlfw*, i32*, i32, i32) #1

declare dso_local i64 @carl9170fw_supports(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i8* @carlfw_mod_headroom(%struct.carlfw*, i64) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @carlfw_store(%struct.carlfw*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
