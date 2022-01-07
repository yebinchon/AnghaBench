; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_validate_data_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_validate_data_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_zbranch = type { i32, i64, i32, i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_ch = type { i64, i32 }

@UBIFS_DATA_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"bad node type (%d but expected %d)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"expected node type %d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"bad node length %d, expected %d\00", align 1
@UBIFS_KEY_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"bad key in node at LEB %d:%d\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"looked for key %s found node's key %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"bad node at LEB %d:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, %struct.ubifs_zbranch*)* @validate_data_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_data_node(%struct.ubifs_info* %0, i8* %1, %struct.ubifs_zbranch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ubifs_zbranch*, align 8
  %8 = alloca %union.ubifs_key, align 4
  %9 = alloca %struct.ubifs_ch*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ubifs_zbranch* %2, %struct.ubifs_zbranch** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %13, %struct.ubifs_ch** %9, align 8
  %14 = load %struct.ubifs_ch*, %struct.ubifs_ch** %9, align 8
  %15 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UBIFS_DATA_NODE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.ubifs_ch*, %struct.ubifs_ch** %9, align 8
  %21 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* @UBIFS_DATA_NODE, align 8
  %25 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %24)
  br label %84

26:                                               ; preds = %3
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %30 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %33 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ubifs_check_node(%struct.ubifs_info* %27, i8* %28, i32 %31, i64 %34, i32 0, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load i64, i64* @UBIFS_DATA_NODE, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %87

42:                                               ; preds = %26
  %43 = load %struct.ubifs_ch*, %struct.ubifs_ch** %9, align 8
  %44 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @le32_to_cpu(i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %49 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %55 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %56)
  br label %84

58:                                               ; preds = %42
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @UBIFS_KEY_OFFSET, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %60, i64 %62
  %64 = call i32 @key_read(%struct.ubifs_info* %59, i8* %63, %union.ubifs_key* %8)
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %66 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %67 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %66, i32 0, i32 3
  %68 = call i32 @keys_eq(%struct.ubifs_info* %65, i32* %67, %union.ubifs_key* %8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %58
  %71 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %72 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %75 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %73, i64 %76)
  %78 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %79 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %78, i32 0, i32 3
  %80 = call i32 @DBGKEY(i32* %79)
  %81 = call i32 @DBGKEY1(%union.ubifs_key* %8)
  %82 = call i32 @dbg_tnc(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %80, i32 %81)
  br label %84

83:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %100

84:                                               ; preds = %70, %52, %19
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %84, %38
  %88 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %89 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %92 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %90, i64 %93)
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @dbg_dump_node(%struct.ubifs_info* %95, i8* %96)
  %98 = call i32 (...) @dbg_dump_stack()
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %87, %83
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @ubifs_err(i8*, i32, ...) #1

declare dso_local i32 @ubifs_check_node(%struct.ubifs_info*, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @key_read(%struct.ubifs_info*, i8*, %union.ubifs_key*) #1

declare dso_local i32 @keys_eq(%struct.ubifs_info*, i32*, %union.ubifs_key*) #1

declare dso_local i32 @dbg_tnc(i8*, i32, i32) #1

declare dso_local i32 @DBGKEY(i32*) #1

declare dso_local i32 @DBGKEY1(%union.ubifs_key*) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @dbg_dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
