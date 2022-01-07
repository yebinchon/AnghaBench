; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_scan_procs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_scan_procs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i64, i64 }
%struct.partial_symtab = type { i32 }
%struct.objfile = type { i32, i32, i32 }
%union.dnttentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@CURR_PROC_START = common dso_local global i32 0, align 4
@language_cplus = common dso_local global i64 0, align 8
@DMGL_ANSI = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"_MAIN_\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@main_string = common dso_local global i8* null, align 8
@CURR_PROC_END = common dso_local global i32 0, align 4
@TELL_OBJFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Procedure \22%s\22 [0x%x] spans file or module boundaries.\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@LOC_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i32, i32, %struct.partial_symtab*, i8*, %struct.objfile*)* @scan_procs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_procs(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32 %4, %struct.partial_symtab* %5, i8* %6, %struct.objfile* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.partial_symtab*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.objfile*, align 8
  %17 = alloca %union.dnttentry*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.partial_symtab* %5, %struct.partial_symtab** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.objfile* %7, %struct.objfile** %16, align 8
  store i32 0, i32* %18, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %19, align 4
  br label %26

26:                                               ; preds = %190, %8
  %27 = load i32, i32* @CURR_PROC_START, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %196

36:                                               ; preds = %34
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = load i32, i32* %19, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @trans_lang(i32 %43)
  %45 = load i64, i64* @language_cplus, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %36
  %48 = load i8*, i8** %15, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i8, i8* %48, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %47
  %60 = load i8*, i8** %15, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8, i8* %60, i64 %66
  store i8* %67, i8** %20, align 8
  %68 = load i8*, i8** %20, align 8
  %69 = load i32, i32* @DMGL_ANSI, align 4
  %70 = load i32, i32* @DMGL_PARAMS, align 4
  %71 = or i32 %69, %70
  %72 = call i8* @cplus_demangle(i8* %68, i32 %71)
  store i8* %72, i8** %21, align 8
  br label %82

73:                                               ; preds = %47, %36
  %74 = load i8*, i8** %15, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i8, i8* %74, i64 %80
  store i8* %81, i8** %20, align 8
  store i8* null, i8** %21, align 8
  br label %82

82:                                               ; preds = %73, %59
  %83 = load i8*, i8** %20, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load i8*, i8** %15, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i8, i8* %87, i64 %93
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = load i8*, i8** @main_string, align 8
  store i8* %98, i8** %20, align 8
  store i8* %98, i8** %21, align 8
  br label %99

99:                                               ; preds = %97, %86, %82
  %100 = load i32, i32* @CURR_PROC_END, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* @TELL_OBJFILE, align 4
  %105 = load i8*, i8** %20, align 8
  %106 = load i32, i32* %19, align 4
  %107 = call i32 @warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %99
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.objfile*, %struct.objfile** %16, align 8
  %116 = call %union.dnttentry* @hpread_get_lntt(i32 %114, %struct.objfile* %115)
  store %union.dnttentry* %116, %union.dnttentry** %17, align 8
  %117 = load %union.dnttentry*, %union.dnttentry** %17, align 8
  %118 = bitcast %union.dnttentry* %117 to %struct.TYPE_4__*
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %156

122:                                              ; preds = %108
  %123 = load i8*, i8** %20, align 8
  %124 = load i8*, i8** %20, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = load i8*, i8** %21, align 8
  %127 = load i8*, i8** %21, align 8
  %128 = call i32 @strlen(i8* %127)
  %129 = load i32, i32* @VAR_DOMAIN, align 4
  %130 = load i32, i32* @LOC_BLOCK, align 4
  %131 = load %struct.objfile*, %struct.objfile** %16, align 8
  %132 = getelementptr inbounds %struct.objfile, %struct.objfile* %131, i32 0, i32 2
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %134 = load i32, i32* %19, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.objfile*, %struct.objfile** %16, align 8
  %140 = getelementptr inbounds %struct.objfile, %struct.objfile* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.objfile*, %struct.objfile** %16, align 8
  %143 = call i32 @SECT_OFF_TEXT(%struct.objfile* %142)
  %144 = call i64 @ANOFFSET(i32 %141, i32 %143)
  %145 = add nsw i64 %138, %144
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %147 = load i32, i32* %19, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i64 @trans_lang(i32 %152)
  %154 = load %struct.objfile*, %struct.objfile** %16, align 8
  %155 = call i32 @add_psymbol_with_dem_name_to_list(i8* %123, i32 %125, i8* %126, i32 %128, i32 %129, i32 %130, i32* %132, i64 %145, i32 0, i64 %153, %struct.objfile* %154)
  br label %190

156:                                              ; preds = %108
  %157 = load i8*, i8** %20, align 8
  %158 = load i8*, i8** %20, align 8
  %159 = call i32 @strlen(i8* %158)
  %160 = load i8*, i8** %21, align 8
  %161 = load i8*, i8** %21, align 8
  %162 = call i32 @strlen(i8* %161)
  %163 = load i32, i32* @VAR_DOMAIN, align 4
  %164 = load i32, i32* @LOC_BLOCK, align 4
  %165 = load %struct.objfile*, %struct.objfile** %16, align 8
  %166 = getelementptr inbounds %struct.objfile, %struct.objfile* %165, i32 0, i32 1
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %168 = load i32, i32* %19, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.objfile*, %struct.objfile** %16, align 8
  %174 = getelementptr inbounds %struct.objfile, %struct.objfile* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.objfile*, %struct.objfile** %16, align 8
  %177 = call i32 @SECT_OFF_TEXT(%struct.objfile* %176)
  %178 = call i64 @ANOFFSET(i32 %175, i32 %177)
  %179 = add nsw i64 %172, %178
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i64 @trans_lang(i32 %186)
  %188 = load %struct.objfile*, %struct.objfile** %16, align 8
  %189 = call i32 @add_psymbol_with_dem_name_to_list(i8* %157, i32 %159, i8* %160, i32 %162, i32 %163, i32 %164, i32* %166, i64 %179, i32 0, i64 %187, %struct.objfile* %188)
  br label %190

190:                                              ; preds = %156, %122
  %191 = load i32, i32* %18, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %18, align 4
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %19, align 4
  %195 = load i32*, i32** %9, align 8
  store i32 %194, i32* %195, align 4
  br label %26

196:                                              ; preds = %34
  %197 = load i32, i32* %18, align 4
  ret i32 %197
}

declare dso_local i64 @trans_lang(i32) #1

declare dso_local i8* @cplus_demangle(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @warning(i8*, i8*, i32) #1

declare dso_local %union.dnttentry* @hpread_get_lntt(i32, %struct.objfile*) #1

declare dso_local i32 @add_psymbol_with_dem_name_to_list(i8*, i32, i8*, i32, i32, i32, i32*, i64, i32, i64, %struct.objfile*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ANOFFSET(i32, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
