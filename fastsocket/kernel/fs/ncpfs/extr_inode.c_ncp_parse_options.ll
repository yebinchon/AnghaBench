; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_inode.c_ncp_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_inode.c_ncp_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_mount_data_kernel = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32*, i64*, i64 }

@NCP_DEFAULT_TIME_OUT = common dso_local global i64 0, align 8
@NCP_DEFAULT_RETRY_COUNT = common dso_local global i64 0, align 8
@NCP_DEFAULT_FILE_MODE = common dso_local global i64 0, align 8
@NCP_DEFAULT_DIR_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"ncpfs\00", align 1
@ncp_opts = common dso_local global i32 0, align 4
@ECHRNG = common dso_local global i32 0, align 4
@NCP_MOUNT_VERSION_V4 = common dso_local global i64 0, align 8
@NCP_MOUNT_VERSION_V5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncp_mount_data_kernel*, i8*)* @ncp_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncp_parse_options(%struct.ncp_mount_data_kernel* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ncp_mount_data_kernel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ncp_mount_data_kernel* %0, %struct.ncp_mount_data_kernel** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %12 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %14 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %13, i32 0, i32 12
  store i64 0, i64* %14, align 8
  %15 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %16 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %18 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %17, i32 0, i32 10
  store i32* null, i32** %18, align 8
  %19 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %20 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %19, i32 0, i32 2
  store i64 -1, i64* %20, align 8
  %21 = load i64, i64* @NCP_DEFAULT_TIME_OUT, align 8
  %22 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %23 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %22, i32 0, i32 3
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* @NCP_DEFAULT_RETRY_COUNT, align 8
  %25 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %26 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %25, i32 0, i32 4
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %28 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %30 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @NCP_DEFAULT_FILE_MODE, align 8
  %32 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %33 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %32, i32 0, i32 7
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* @NCP_DEFAULT_DIR_MODE, align 8
  %35 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %36 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %35, i32 0, i32 8
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %38 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %37, i32 0, i32 9
  store i32 -1, i32* %38, align 8
  %39 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %40 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %39, i32 0, i32 11
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %115, %2
  %44 = load i32, i32* @ncp_opts, align 4
  %45 = call i32 @ncp_getopt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, i32 %44, i32* null, i8** %7, i64* %8)
  store i32 %45, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %116

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %117

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %115 [
    i32 117, label %54
    i32 103, label %58
    i32 111, label %62
    i32 109, label %66
    i32 100, label %70
    i32 116, label %74
    i32 114, label %78
    i32 102, label %82
    i32 119, label %86
    i32 110, label %91
    i32 105, label %95
    i32 118, label %100
  ]

54:                                               ; preds = %52
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %57 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %56, i32 0, i32 5
  store i64 %55, i64* %57, align 8
  br label %115

58:                                               ; preds = %52
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %61 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %60, i32 0, i32 6
  store i64 %59, i64* %61, align 8
  br label %115

62:                                               ; preds = %52
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %65 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %115

66:                                               ; preds = %52
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %69 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %68, i32 0, i32 7
  store i64 %67, i64* %69, align 8
  br label %115

70:                                               ; preds = %52
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %73 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %72, i32 0, i32 8
  store i64 %71, i64* %73, align 8
  br label %115

74:                                               ; preds = %52
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %77 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  br label %115

78:                                               ; preds = %52
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %81 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  br label %115

82:                                               ; preds = %52
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %85 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %115

86:                                               ; preds = %52
  %87 = load i64, i64* %8, align 8
  %88 = call i32* @find_get_pid(i64 %87)
  %89 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %90 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %89, i32 0, i32 10
  store i32* %88, i32** %90, align 8
  br label %115

91:                                               ; preds = %52
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %94 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  br label %115

95:                                               ; preds = %52
  %96 = load i64, i64* %8, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %99 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %98, i32 0, i32 9
  store i32 %97, i32* %99, align 8
  br label %115

100:                                              ; preds = %52
  %101 = load i32, i32* @ECHRNG, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %10, align 4
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* @NCP_MOUNT_VERSION_V4, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %117

107:                                              ; preds = %100
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* @NCP_MOUNT_VERSION_V5, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %117

112:                                              ; preds = %107
  %113 = load i64, i64* %8, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %52, %112, %95, %91, %86, %82, %78, %74, %70, %66, %62, %58, %54
  br label %43

116:                                              ; preds = %43
  store i32 0, i32* %3, align 4
  br label %125

117:                                              ; preds = %111, %106, %51
  %118 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %119 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %118, i32 0, i32 10
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @put_pid(i32* %120)
  %122 = load %struct.ncp_mount_data_kernel*, %struct.ncp_mount_data_kernel** %4, align 8
  %123 = getelementptr inbounds %struct.ncp_mount_data_kernel, %struct.ncp_mount_data_kernel* %122, i32 0, i32 10
  store i32* null, i32** %123, align 8
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %117, %116
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @ncp_getopt(i8*, i8**, i32, i32*, i8**, i64*) #1

declare dso_local i32* @find_get_pid(i64) #1

declare dso_local i32 @put_pid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
