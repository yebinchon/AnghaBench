; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw = type { %struct.carlfw_file, %struct.carlfw_file, i32 }
%struct.carlfw_file = type { i64, i32*, i64 }
%struct.carl9170fw_otus_desc = type { i32 }
%struct.carl9170fw_last_desc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@OTUS_MAGIC = common dso_local global i64 0, align 8
@CARL9170FW_OTUS_DESC_CUR_VER = common dso_local global i32 0, align 4
@LAST_MAGIC = common dso_local global i64 0, align 8
@CARL9170FW_LAST_DESC_CUR_VER = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.carlfw* @carlfw_load(i8* %0) #0 {
  %2 = alloca %struct.carlfw*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.carlfw*, align 8
  %6 = alloca %struct.carl9170fw_otus_desc*, align 8
  %7 = alloca %struct.carl9170fw_last_desc*, align 8
  %8 = alloca %struct.carlfw_file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = call %struct.carlfw* @calloc(i32 1, i32 56)
  store %struct.carlfw* %14, %struct.carlfw** %5, align 8
  %15 = load %struct.carlfw*, %struct.carlfw** %5, align 8
  %16 = icmp ne %struct.carlfw* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.carlfw* @ERR_PTR(i32 %19)
  store %struct.carlfw* %20, %struct.carlfw** %2, align 8
  br label %161

21:                                               ; preds = %1
  %22 = load %struct.carlfw*, %struct.carlfw** %5, align 8
  %23 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %22, i32 0, i32 2
  %24 = call i32 @init_list_head(i32* %23)
  %25 = load %struct.carlfw*, %struct.carlfw** %5, align 8
  %26 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %25, i32 0, i32 0
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @__carlfw_load(%struct.carlfw_file* %26, i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %156

32:                                               ; preds = %21
  %33 = load %struct.carlfw*, %struct.carlfw** %5, align 8
  %34 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.carlfw*, %struct.carlfw** %5, align 8
  %40 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %39, i32 0, i32 1
  store %struct.carlfw_file* %40, %struct.carlfw_file** %8, align 8
  br label %44

41:                                               ; preds = %32
  %42 = load %struct.carlfw*, %struct.carlfw** %5, align 8
  %43 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %42, i32 0, i32 0
  store %struct.carlfw_file* %43, %struct.carlfw_file** %8, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.carlfw_file*, %struct.carlfw_file** %8, align 8
  %46 = load i64, i64* @OTUS_MAGIC, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* @CARL9170FW_OTUS_DESC_CUR_VER, align 4
  %49 = call i8* @__carlfw_find_desc(%struct.carlfw_file* %45, i32* %47, i32 4, i32 %48)
  %50 = bitcast i8* %49 to %struct.carl9170fw_otus_desc*
  store %struct.carl9170fw_otus_desc* %50, %struct.carl9170fw_otus_desc** %6, align 8
  %51 = load %struct.carlfw_file*, %struct.carlfw_file** %8, align 8
  %52 = load i64, i64* @LAST_MAGIC, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = load i32, i32* @CARL9170FW_LAST_DESC_CUR_VER, align 4
  %55 = call i8* @__carlfw_find_desc(%struct.carlfw_file* %51, i32* %53, i32 4, i32 %54)
  %56 = bitcast i8* %55 to %struct.carl9170fw_last_desc*
  store %struct.carl9170fw_last_desc* %56, %struct.carl9170fw_last_desc** %7, align 8
  %57 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %6, align 8
  %58 = icmp ne %struct.carl9170fw_otus_desc* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %44
  %60 = load %struct.carl9170fw_last_desc*, %struct.carl9170fw_last_desc** %7, align 8
  %61 = icmp ne %struct.carl9170fw_last_desc* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %6, align 8
  %64 = ptrtoint %struct.carl9170fw_otus_desc* %63 to i64
  %65 = load %struct.carl9170fw_last_desc*, %struct.carl9170fw_last_desc** %7, align 8
  %66 = ptrtoint %struct.carl9170fw_last_desc* %65 to i64
  %67 = icmp ugt i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %59, %44
  %69 = load i32, i32* @ENODATA, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  br label %156

71:                                               ; preds = %62
  %72 = load %struct.carlfw*, %struct.carlfw** %5, align 8
  %73 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %6, align 8
  %74 = call i32 @carlfw_parse_descs(%struct.carlfw* %72, %struct.carl9170fw_otus_desc* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %156

78:                                               ; preds = %71
  %79 = load %struct.carl9170fw_last_desc*, %struct.carl9170fw_last_desc** %7, align 8
  %80 = ptrtoint %struct.carl9170fw_last_desc* %79 to i64
  %81 = add i64 %80, 4
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %6, align 8
  %84 = ptrtoint %struct.carl9170fw_otus_desc* %83 to i64
  %85 = sub i64 %82, %84
  store i64 %85, i64* %10, align 8
  %86 = load %struct.carlfw_file*, %struct.carlfw_file** %8, align 8
  %87 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.carlfw_file*, %struct.carlfw_file** %8, align 8
  %91 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = ptrtoint i32* %92 to i64
  %94 = sub i64 %89, %93
  %95 = sub i64 %88, %94
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %78
  %99 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %6, align 8
  %100 = ptrtoint %struct.carl9170fw_otus_desc* %99 to i64
  %101 = load %struct.carlfw_file*, %struct.carlfw_file** %8, align 8
  %102 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = ptrtoint i32* %103 to i64
  %105 = sub i64 %100, %104
  store i64 %105, i64* %11, align 8
  %106 = load %struct.carlfw_file*, %struct.carlfw_file** %8, align 8
  %107 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load %struct.carl9170fw_last_desc*, %struct.carl9170fw_last_desc** %7, align 8
  %112 = bitcast %struct.carl9170fw_last_desc* %111 to i32*
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @memmove(i32* %110, i32* %113, i64 %114)
  br label %116

116:                                              ; preds = %98, %78
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.carlfw_file*, %struct.carlfw_file** %8, align 8
  %119 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load %struct.carlfw_file*, %struct.carlfw_file** %8, align 8
  %123 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.carlfw_file*, %struct.carlfw_file** %8, align 8
  %126 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32* @realloc(i32* %124, i64 %127)
  %129 = load %struct.carlfw_file*, %struct.carlfw_file** %8, align 8
  %130 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  %131 = load %struct.carlfw_file*, %struct.carlfw_file** %8, align 8
  %132 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %143, label %135

135:                                              ; preds = %116
  %136 = load %struct.carlfw_file*, %struct.carlfw_file** %8, align 8
  %137 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %13, align 4
  br label %156

143:                                              ; preds = %135, %116
  %144 = load %struct.carlfw*, %struct.carlfw** %5, align 8
  %145 = call i32 @carlfw_check_crc32s(%struct.carlfw* %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @ENODATA, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %156

154:                                              ; preds = %148, %143
  %155 = load %struct.carlfw*, %struct.carlfw** %5, align 8
  store %struct.carlfw* %155, %struct.carlfw** %2, align 8
  br label %161

156:                                              ; preds = %153, %140, %77, %68, %31
  %157 = load %struct.carlfw*, %struct.carlfw** %5, align 8
  %158 = call i32 @carlfw_release(%struct.carlfw* %157)
  %159 = load i32, i32* %13, align 4
  %160 = call %struct.carlfw* @ERR_PTR(i32 %159)
  store %struct.carlfw* %160, %struct.carlfw** %2, align 8
  br label %161

161:                                              ; preds = %156, %154, %17
  %162 = load %struct.carlfw*, %struct.carlfw** %2, align 8
  ret %struct.carlfw* %162
}

declare dso_local %struct.carlfw* @calloc(i32, i32) #1

declare dso_local %struct.carlfw* @ERR_PTR(i32) #1

declare dso_local i32 @init_list_head(i32*) #1

declare dso_local i32 @__carlfw_load(%struct.carlfw_file*, i8*, i8*) #1

declare dso_local i8* @__carlfw_find_desc(%struct.carlfw_file*, i32*, i32, i32) #1

declare dso_local i32 @carlfw_parse_descs(%struct.carlfw*, %struct.carl9170fw_otus_desc*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @carlfw_check_crc32s(%struct.carlfw*) #1

declare dso_local i32 @carlfw_release(%struct.carlfw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
