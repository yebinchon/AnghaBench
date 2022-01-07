; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.super_block*, %struct.TYPE_2__, i32 }
%struct.super_block = type { i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@UBIFS_COMPR_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@UBIFS_COMPR_LZO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@UBIFS_COMPR_ZLIB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown compressor \22%s\22\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"unrecognized mount option \22%s\22 or missing value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, i32)* @ubifs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_parse_options(%struct.ubifs_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.super_block*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @MAX_OPT_ARGS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %146

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %144, %31, %23
  %25 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %145

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %24

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @tokens, align 4
  %35 = call i32 @match_token(i8* %33, i32 %34, i32* %19)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %125 [
    i32 132, label %37
    i32 129, label %41
    i32 134, label %45
    i32 131, label %51
    i32 133, label %57
    i32 130, label %63
    i32 128, label %69
  ]

37:                                               ; preds = %32
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 2, i32* %40, align 8
  br label %144

41:                                               ; preds = %32
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %144

45:                                               ; preds = %32
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 2, i32* %48, align 4
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %144

51:                                               ; preds = %32
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %144

57:                                               ; preds = %32
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 2, i32* %60, align 8
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %62 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %144

63:                                               ; preds = %32
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %65 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %144

69:                                               ; preds = %32
  %70 = getelementptr inbounds i32, i32* %19, i64 0
  %71 = call i8* @match_strdup(i32* %70)
  store i8* %71, i8** %13, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %146

77:                                               ; preds = %69
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @UBIFS_COMPR_NONE, align 4
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 8
  br label %113

86:                                               ; preds = %77
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @UBIFS_COMPR_LZO, align 4
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %93 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  store i32 %91, i32* %94, align 8
  br label %112

95:                                               ; preds = %86
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @UBIFS_COMPR_ZLIB, align 4
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %102 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  store i32 %100, i32* %103, align 8
  br label %111

104:                                              ; preds = %95
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @ubifs_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %105)
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @kfree(i8* %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %146

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %90
  br label %113

113:                                              ; preds = %112, %81
  %114 = load i8*, i8** %13, align 8
  %115 = call i32 @kfree(i8* %114)
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  store i32 1, i32* %118, align 4
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %120 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %124 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  br label %144

125:                                              ; preds = %32
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %127 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %126, i32 0, i32 2
  %128 = load %struct.super_block*, %struct.super_block** %127, align 8
  store %struct.super_block* %128, %struct.super_block** %15, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = call i64 @parse_standard_option(i8* %129)
  store i64 %130, i64* %14, align 8
  %131 = load i64, i64* %14, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %125
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @ubifs_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %146

138:                                              ; preds = %125
  %139 = load i64, i64* %14, align 8
  %140 = load %struct.super_block*, %struct.super_block** %15, align 8
  %141 = getelementptr inbounds %struct.super_block, %struct.super_block* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = or i64 %142, %139
  store i64 %143, i64* %141, align 8
  br label %144

144:                                              ; preds = %138, %113, %63, %57, %51, %45, %41, %37
  br label %24

145:                                              ; preds = %24
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %146

146:                                              ; preds = %145, %133, %104, %74, %22
  %147 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @ubifs_err(i8*, i8*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i64 @parse_standard_option(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
