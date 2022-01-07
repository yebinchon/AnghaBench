; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_try_read_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_try_read_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, i32 }
%struct.ubifs_ch = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"LEB %d:%d, %s, length %d\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot read node type %d from LEB %d:%d, error %d\00", align 1
@UBIFS_NODE_MAGIC = common dso_local global i8* null, align 8
@UBIFS_DATA_NODE = common dso_local global i32 0, align 4
@UBIFS_CRC32_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, i32, i32, i32, i32)* @try_read_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_read_node(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ubifs_ch*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %20, %struct.ubifs_ch** %16, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @dbg_ntype(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @dbg_io(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %24, i32 %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @ubi_read(i32 %29, i32 %30, i8* %31, i32 %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %6
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @ubifs_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %7, align 4
  br label %100

44:                                               ; preds = %6
  %45 = load %struct.ubifs_ch*, %struct.ubifs_ch** %16, align 8
  %46 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le32_to_cpu(i32 %47)
  %49 = load i8*, i8** @UBIFS_NODE_MAGIC, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %100

52:                                               ; preds = %44
  %53 = load %struct.ubifs_ch*, %struct.ubifs_ch** %16, align 8
  %54 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %100

59:                                               ; preds = %52
  %60 = load %struct.ubifs_ch*, %struct.ubifs_ch** %16, align 8
  %61 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le32_to_cpu(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %100

69:                                               ; preds = %59
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @UBIFS_DATA_NODE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %75 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %80 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 1, i32* %7, align 4
  br label %100

84:                                               ; preds = %78, %73, %69
  %85 = load i32, i32* @UBIFS_CRC32_INIT, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr i8, i8* %86, i64 8
  %88 = load i32, i32* %15, align 4
  %89 = sub nsw i32 %88, 8
  %90 = call i8* @crc32(i32 %85, i8* %87, i32 %89)
  store i8* %90, i8** %17, align 8
  %91 = load %struct.ubifs_ch*, %struct.ubifs_ch** %16, align 8
  %92 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le32_to_cpu(i32 %93)
  store i8* %94, i8** %18, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = icmp ne i8* %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  store i32 0, i32* %7, align 4
  br label %100

99:                                               ; preds = %84
  store i32 1, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %98, %83, %68, %58, %51, %37
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_ntype(i32) #1

declare dso_local i32 @ubi_read(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @crc32(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
