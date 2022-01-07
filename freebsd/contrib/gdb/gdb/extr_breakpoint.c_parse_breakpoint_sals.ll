; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_parse_breakpoint_sals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_parse_breakpoint_sals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }
%struct.symtab_and_line = type { %struct.symtab*, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"if\00", align 1
@default_breakpoint_valid = common dso_local global i64 0, align 8
@default_breakpoint_address = common dso_local global i32 0, align 4
@default_breakpoint_line = common dso_local global i32 0, align 4
@default_breakpoint_symtab = common dso_local global %struct.symtab* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"No default breakpoint address now.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.symtabs_and_lines*, i8***, i32*)* @parse_breakpoint_sals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_breakpoint_sals(i8** %0, %struct.symtabs_and_lines* %1, i8*** %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.symtabs_and_lines*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.symtab_and_line, align 8
  %11 = alloca %struct.symtab_and_line, align 8
  %12 = alloca %struct.symtabs_and_lines, align 8
  %13 = alloca %struct.symtabs_and_lines, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store %struct.symtabs_and_lines* %1, %struct.symtabs_and_lines** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8***, i8**** %7, align 8
  store i8** null, i8*** %17, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %4
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %21
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isspace(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %26, %4
  %34 = load i64, i64* @default_breakpoint_valid, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = call i32 @init_sal(%struct.symtab_and_line* %10)
  %38 = call i64 @xmalloc(i32 24)
  %39 = inttoptr i64 %38 to %struct.symtab_and_line*
  %40 = load %struct.symtabs_and_lines*, %struct.symtabs_and_lines** %6, align 8
  %41 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %40, i32 0, i32 1
  store %struct.symtab_and_line* %39, %struct.symtab_and_line** %41, align 8
  %42 = load i32, i32* @default_breakpoint_address, align 4
  %43 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* @default_breakpoint_line, align 4
  %45 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = load %struct.symtab*, %struct.symtab** @default_breakpoint_symtab, align 8
  %47 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 0
  store %struct.symtab* %46, %struct.symtab** %47, align 8
  %48 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @find_pc_overlay(i32 %49)
  %51 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load %struct.symtabs_and_lines*, %struct.symtabs_and_lines** %6, align 8
  %53 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %52, i32 0, i32 1
  %54 = load %struct.symtab_and_line*, %struct.symtab_and_line** %53, align 8
  %55 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %54, i64 0
  %56 = bitcast %struct.symtab_and_line* %55 to i8*
  %57 = bitcast %struct.symtab_and_line* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 24, i1 false)
  %58 = load %struct.symtabs_and_lines*, %struct.symtabs_and_lines** %6, align 8
  %59 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %62

60:                                               ; preds = %33
  %61 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %36
  br label %113

63:                                               ; preds = %26, %21
  call void (%struct.symtab_and_line*, ...) @get_current_source_symtab_and_line(%struct.symtab_and_line* sret %11)
  %64 = load i64, i64* @default_breakpoint_valid, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %11, i32 0, i32 0
  %68 = load %struct.symtab*, %struct.symtab** %67, align 8
  %69 = icmp ne %struct.symtab* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = call i32* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8 signext %74)
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %99

77:                                               ; preds = %70
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 91
  br i1 %83, label %84, label %99

84:                                               ; preds = %77, %66
  %85 = load %struct.symtabs_and_lines*, %struct.symtabs_and_lines** %6, align 8
  %86 = load i8**, i8*** %5, align 8
  %87 = load %struct.symtab*, %struct.symtab** @default_breakpoint_symtab, align 8
  %88 = load i32, i32* @default_breakpoint_line, align 4
  %89 = load i8***, i8**** %7, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call { i32, %struct.symtab_and_line* } @decode_line_1(i8** %86, i32 1, %struct.symtab* %87, i32 %88, i8*** %89, i32* %90)
  %92 = bitcast %struct.symtabs_and_lines* %12 to { i32, %struct.symtab_and_line* }*
  %93 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %92, i32 0, i32 0
  %94 = extractvalue { i32, %struct.symtab_and_line* } %91, 0
  store i32 %94, i32* %93, align 8
  %95 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %92, i32 0, i32 1
  %96 = extractvalue { i32, %struct.symtab_and_line* } %91, 1
  store %struct.symtab_and_line* %96, %struct.symtab_and_line** %95, align 8
  %97 = bitcast %struct.symtabs_and_lines* %85 to i8*
  %98 = bitcast %struct.symtabs_and_lines* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 16, i1 false)
  br label %112

99:                                               ; preds = %77, %70, %63
  %100 = load %struct.symtabs_and_lines*, %struct.symtabs_and_lines** %6, align 8
  %101 = load i8**, i8*** %5, align 8
  %102 = load i8***, i8**** %7, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call { i32, %struct.symtab_and_line* } @decode_line_1(i8** %101, i32 1, %struct.symtab* null, i32 0, i8*** %102, i32* %103)
  %105 = bitcast %struct.symtabs_and_lines* %13 to { i32, %struct.symtab_and_line* }*
  %106 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %105, i32 0, i32 0
  %107 = extractvalue { i32, %struct.symtab_and_line* } %104, 0
  store i32 %107, i32* %106, align 8
  %108 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %105, i32 0, i32 1
  %109 = extractvalue { i32, %struct.symtab_and_line* } %104, 1
  store %struct.symtab_and_line* %109, %struct.symtab_and_line** %108, align 8
  %110 = bitcast %struct.symtabs_and_lines* %100 to i8*
  %111 = bitcast %struct.symtabs_and_lines* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 16, i1 false)
  br label %112

112:                                              ; preds = %99, %84
  br label %113

113:                                              ; preds = %112, %62
  %114 = load %struct.symtabs_and_lines*, %struct.symtabs_and_lines** %6, align 8
  %115 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load i8***, i8**** %7, align 8
  %120 = load i8**, i8*** %119, align 8
  %121 = icmp eq i8** %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load %struct.symtabs_and_lines*, %struct.symtabs_and_lines** %6, align 8
  %124 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i8** @xcalloc(i32 %125, i32 8)
  %127 = load i8***, i8**** %7, align 8
  store i8** %126, i8*** %127, align 8
  br label %128

128:                                              ; preds = %122, %118, %113
  %129 = load i8*, i8** %9, align 8
  %130 = load i8**, i8*** %5, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %129, %131
  br i1 %132, label %133, label %168

133:                                              ; preds = %128
  store i32 0, i32* %14, align 4
  br label %134

134:                                              ; preds = %164, %133
  %135 = load i32, i32* %14, align 4
  %136 = load %struct.symtabs_and_lines*, %struct.symtabs_and_lines** %6, align 8
  %137 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %167

140:                                              ; preds = %134
  %141 = load i8***, i8**** %7, align 8
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %163

148:                                              ; preds = %140
  %149 = load i8*, i8** %9, align 8
  %150 = load i8**, i8*** %5, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = ptrtoint i8* %151 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = trunc i64 %155 to i32
  %157 = call i8* @savestring(i8* %149, i32 %156)
  %158 = load i8***, i8**** %7, align 8
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  store i8* %157, i8** %162, align 8
  br label %163

163:                                              ; preds = %148, %140
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %134

167:                                              ; preds = %134
  br label %168

168:                                              ; preds = %167, %128
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @init_sal(%struct.symtab_and_line*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @find_pc_overlay(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @error(i8*) #1

declare dso_local void @get_current_source_symtab_and_line(%struct.symtab_and_line* sret, ...) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local { i32, %struct.symtab_and_line* } @decode_line_1(i8**, i32, %struct.symtab*, i32, i8***, i32*) #1

declare dso_local i8** @xcalloc(i32, i32) #1

declare dso_local i8* @savestring(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
