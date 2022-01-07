; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_decode_subscript_data_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_decode_subscript_data_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@SIZEOF_FORMAT_SPECIFIER = common dso_local global i32 0, align 4
@GET_UNSIGNED = common dso_local global i32 0, align 4
@current_objfile = common dso_local global i32 0, align 4
@SIZEOF_FMT_FT = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"DIE @ 0x%x \22%s\22, can't decode subscript data items\00", align 1
@DIE_ID = common dso_local global i32 0, align 4
@DIE_NAME = common dso_local global i32 0, align 4
@FT_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"DIE @ 0x%x \22%s\22, array subscript format 0x%x not handled yet\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"DIE @ 0x%x \22%s\22, unknown array subscript format %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i8*, i8*)* @decode_subscript_data_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @decode_subscript_data_item(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.type* null, %struct.type** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @SIZEOF_FORMAT_SPECIFIER, align 4
  %16 = load i32, i32* @GET_UNSIGNED, align 4
  %17 = load i32, i32* @current_objfile, align 4
  %18 = call i8* @target_to_host(i8* %14, i32 %15, i32 %16, i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @SIZEOF_FORMAT_SPECIFIER, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %3, align 8
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %96 [
    i32 136, label %25
    i32 135, label %28
    i32 134, label %83
    i32 133, label %83
    i32 132, label %83
    i32 131, label %83
    i32 130, label %83
    i32 129, label %83
    i32 128, label %83
  ]

25:                                               ; preds = %2
  %26 = load i8*, i8** %3, align 8
  %27 = call %struct.type* @decode_array_element_type(i8* %26)
  store %struct.type* %27, %struct.type** %5, align 8
  br label %109

28:                                               ; preds = %2
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @SIZEOF_FMT_FT, align 4
  %31 = load i32, i32* @GET_UNSIGNED, align 4
  %32 = load i32, i32* @current_objfile, align 4
  %33 = call i8* @target_to_host(i8* %29, i32 %30, i32 %31, i32 %32)
  %34 = ptrtoint i8* %33 to i16
  store i16 %34, i16* %10, align 2
  %35 = load i16, i16* %10, align 2
  %36 = call %struct.type* @decode_fund_type(i16 zeroext %35)
  store %struct.type* %36, %struct.type** %7, align 8
  %37 = load i32, i32* @SIZEOF_FMT_FT, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %3, align 8
  %41 = load i32, i32* @current_objfile, align 4
  %42 = call i32 @TARGET_FT_LONG_SIZE(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @GET_UNSIGNED, align 4
  %46 = load i32, i32* @current_objfile, align 4
  %47 = call i8* @target_to_host(i8* %43, i32 %44, i32 %45, i32 %46)
  %48 = ptrtoint i8* %47 to i64
  store i64 %48, i64* %11, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i8*, i8** %3, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %3, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @GET_UNSIGNED, align 4
  %56 = load i32, i32* @current_objfile, align 4
  %57 = call i8* @target_to_host(i8* %53, i32 %54, i32 %55, i32 %56)
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i8*, i8** %3, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %3, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call %struct.type* @decode_subscript_data_item(i8* %63, i8* %64)
  store %struct.type* %65, %struct.type** %6, align 8
  %66 = load %struct.type*, %struct.type** %6, align 8
  %67 = icmp eq %struct.type* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %28
  %69 = load i32, i32* @DIE_ID, align 4
  %70 = load i32, i32* @DIE_NAME, align 4
  %71 = call i32 (i32*, i8*, i32, i32, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* @current_objfile, align 4
  %73 = load i32, i32* @FT_INTEGER, align 4
  %74 = call %struct.type* @dwarf_fundamental_type(i32 %72, i32 %73)
  store %struct.type* %74, %struct.type** %6, align 8
  br label %75

75:                                               ; preds = %68, %28
  %76 = load %struct.type*, %struct.type** %7, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call %struct.type* @create_range_type(%struct.type* null, %struct.type* %76, i64 %77, i64 %78)
  store %struct.type* %79, %struct.type** %8, align 8
  %80 = load %struct.type*, %struct.type** %6, align 8
  %81 = load %struct.type*, %struct.type** %8, align 8
  %82 = call %struct.type* @create_array_type(%struct.type* null, %struct.type* %80, %struct.type* %81)
  store %struct.type* %82, %struct.type** %5, align 8
  br label %109

83:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %84 = load i32, i32* @DIE_ID, align 4
  %85 = load i32, i32* @DIE_NAME, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (i32*, i8*, i32, i32, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* @current_objfile, align 4
  %89 = load i32, i32* @FT_INTEGER, align 4
  %90 = call %struct.type* @dwarf_fundamental_type(i32 %88, i32 %89)
  store %struct.type* %90, %struct.type** %6, align 8
  %91 = load %struct.type*, %struct.type** %6, align 8
  %92 = call %struct.type* @create_range_type(%struct.type* null, %struct.type* %91, i64 0, i64 0)
  store %struct.type* %92, %struct.type** %8, align 8
  %93 = load %struct.type*, %struct.type** %6, align 8
  %94 = load %struct.type*, %struct.type** %8, align 8
  %95 = call %struct.type* @create_array_type(%struct.type* null, %struct.type* %93, %struct.type* %94)
  store %struct.type* %95, %struct.type** %5, align 8
  br label %109

96:                                               ; preds = %2
  %97 = load i32, i32* @DIE_ID, align 4
  %98 = load i32, i32* @DIE_NAME, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i32*, i8*, i32, i32, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* @current_objfile, align 4
  %102 = load i32, i32* @FT_INTEGER, align 4
  %103 = call %struct.type* @dwarf_fundamental_type(i32 %101, i32 %102)
  store %struct.type* %103, %struct.type** %6, align 8
  %104 = load %struct.type*, %struct.type** %6, align 8
  %105 = call %struct.type* @create_range_type(%struct.type* null, %struct.type* %104, i64 0, i64 0)
  store %struct.type* %105, %struct.type** %8, align 8
  %106 = load %struct.type*, %struct.type** %6, align 8
  %107 = load %struct.type*, %struct.type** %8, align 8
  %108 = call %struct.type* @create_array_type(%struct.type* null, %struct.type* %106, %struct.type* %107)
  store %struct.type* %108, %struct.type** %5, align 8
  br label %109

109:                                              ; preds = %96, %83, %75, %25
  %110 = load %struct.type*, %struct.type** %5, align 8
  ret %struct.type* %110
}

declare dso_local i8* @target_to_host(i8*, i32, i32, i32) #1

declare dso_local %struct.type* @decode_array_element_type(i8*) #1

declare dso_local %struct.type* @decode_fund_type(i16 zeroext) #1

declare dso_local i32 @TARGET_FT_LONG_SIZE(i32) #1

declare dso_local i32 @complaint(i32*, i8*, i32, i32, ...) #1

declare dso_local %struct.type* @dwarf_fundamental_type(i32, i32) #1

declare dso_local %struct.type* @create_range_type(%struct.type*, %struct.type*, i64, i64) #1

declare dso_local %struct.type* @create_array_type(%struct.type*, %struct.type*, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
