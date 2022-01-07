; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_locval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_locval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dieinfo = type { i8*, i32, i32, i32, i8* }

@AT_location = common dso_local global i32 0, align 4
@GET_UNSIGNED = common dso_local global i32 0, align 4
@current_objfile = common dso_local global i32 0, align 4
@SIZEOF_LOC_ATOM_CODE = common dso_local global i32 0, align 4
@GET_SIGNED = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"DIE @ 0x%x \22%s\22, OP_DEREF2 address 0x%lx not handled\00", align 1
@DIE_ID = common dso_local global i32 0, align 4
@DIE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"DIE @ 0x%x \22%s\22, OP_DEREF4 address 0x%lx not handled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dieinfo*)* @locval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locval(%struct.dieinfo* %0) #0 {
  %2 = alloca %struct.dieinfo*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca [64 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dieinfo* %0, %struct.dieinfo** %2, align 8
  %11 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %12 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i32, i32* @AT_location, align 4
  %15 = call zeroext i16 @attribute_size(i32 %14)
  store i16 %15, i16* %3, align 2
  %16 = load i8*, i8** %7, align 8
  %17 = load i16, i16* %3, align 2
  %18 = zext i16 %17 to i32
  %19 = load i32, i32* @GET_UNSIGNED, align 4
  %20 = load i32, i32* @current_objfile, align 4
  %21 = call i8* @target_to_host(i8* %16, i32 %18, i32 %19, i32 %20)
  %22 = ptrtoint i8* %21 to i16
  store i16 %22, i16* %4, align 2
  %23 = load i16, i16* %3, align 2
  %24 = zext i16 %23 to i32
  %25 = load i8*, i8** %7, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i16, i16* %4, align 2
  %30 = zext i16 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8* %32, i8** %8, align 8
  store i32 0, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %37 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %36, i32 0, i32 1
  store i32 0, i32* %37, align 8
  %38 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %39 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %38, i32 0, i32 2
  store i32 0, i32* %39, align 4
  %40 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %41 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %40, i32 0, i32 3
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @current_objfile, align 4
  %43 = call i32 @TARGET_FT_LONG_SIZE(i32 %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %158, %1
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ult i8* %45, %46
  br i1 %47, label %48, label %159

48:                                               ; preds = %44
  %49 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %50 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %49, i32 0, i32 3
  store i32 0, i32* %50, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @SIZEOF_LOC_ATOM_CODE, align 4
  %53 = load i32, i32* @GET_UNSIGNED, align 4
  %54 = load i32, i32* @current_objfile, align 4
  %55 = call i8* @target_to_host(i8* %51, i32 %52, i32 %53, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @SIZEOF_LOC_ATOM_CODE, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %7, align 8
  %61 = load i32, i32* %9, align 4
  switch i32 %61, label %158 [
    i32 0, label %62
    i32 128, label %64
    i32 132, label %81
    i32 133, label %99
    i32 131, label %114
    i32 130, label %129
    i32 129, label %137
    i32 134, label %145
  ]

62:                                               ; preds = %48
  %63 = load i8*, i8** %8, align 8
  store i8* %63, i8** %7, align 8
  br label %158

64:                                               ; preds = %48
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @GET_UNSIGNED, align 4
  %68 = load i32, i32* @current_objfile, align 4
  %69 = call i8* @target_to_host(i8* %65, i32 %66, i32 %67, i32 %68)
  %70 = call i64 @DWARF_REG_TO_REGNUM(i8* %69)
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %73
  store i64 %70, i64* %74, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %7, align 8
  %79 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %80 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  br label %158

81:                                               ; preds = %48
  %82 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %83 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %82, i32 0, i32 2
  store i32 1, i32* %83, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @GET_UNSIGNED, align 4
  %87 = load i32, i32* @current_objfile, align 4
  %88 = call i8* @target_to_host(i8* %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %90 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %7, align 8
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %97
  store i64 0, i64* %98, align 8
  br label %158

99:                                               ; preds = %48
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @GET_UNSIGNED, align 4
  %103 = load i32, i32* @current_objfile, align 4
  %104 = call i8* @target_to_host(i8* %100, i32 %101, i32 %102, i32 %103)
  %105 = ptrtoint i8* %104 to i64
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %108
  store i64 %105, i64* %109, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i8*, i8** %7, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %7, align 8
  br label %158

114:                                              ; preds = %48
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @GET_SIGNED, align 4
  %118 = load i32, i32* @current_objfile, align 4
  %119 = call i8* @target_to_host(i8* %115, i32 %116, i32 %117, i32 %118)
  %120 = ptrtoint i8* %119 to i64
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %123
  store i64 %120, i64* %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %7, align 8
  br label %158

129:                                              ; preds = %48
  %130 = load i32, i32* @DIE_ID, align 4
  %131 = load i32, i32* @DIE_NAME, align 4
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %131, i64 %135)
  br label %158

137:                                              ; preds = %48
  %138 = load i32, i32* @DIE_ID, align 4
  %139 = load i32, i32* @DIE_NAME, align 4
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %139, i64 %143)
  br label %158

145:                                              ; preds = %48
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, %149
  store i64 %155, i64* %153, align 8
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %48, %145, %137, %129, %114, %99, %81, %64, %62
  br label %44

159:                                              ; preds = %44
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  ret i32 %164
}

declare dso_local zeroext i16 @attribute_size(i32) #1

declare dso_local i8* @target_to_host(i8*, i32, i32, i32) #1

declare dso_local i32 @TARGET_FT_LONG_SIZE(i32) #1

declare dso_local i64 @DWARF_REG_TO_REGNUM(i8*) #1

declare dso_local i32 @complaint(i32*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
