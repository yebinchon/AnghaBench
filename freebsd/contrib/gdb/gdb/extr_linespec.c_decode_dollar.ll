; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_dollar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_dollar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64, i32, %struct.symtab* }
%struct.symtab = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }
%struct.value = type { i32 }
%struct.symbol = type { i32 }
%struct.minimal_symbol = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"History values used in line specs must have integer values.\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Convenience variables used in line specs must have integer values.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, %struct.symtab_and_line* } (i8*, i32, %struct.symtab*, i8***, %struct.symtab*)* @decode_dollar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, %struct.symtab_and_line* } @decode_dollar(i8* %0, i32 %1, %struct.symtab* %2, i8*** %3, %struct.symtab* %4) #0 {
  %6 = alloca %struct.symtabs_and_lines, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.symtab*, align 8
  %10 = alloca i8***, align 8
  %11 = alloca %struct.symtab*, align 8
  %12 = alloca %struct.value*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.symtabs_and_lines, align 8
  %16 = alloca %struct.symtab_and_line, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.symbol*, align 8
  %19 = alloca %struct.symtab*, align 8
  %20 = alloca %struct.minimal_symbol*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.symtab* %2, %struct.symtab** %9, align 8
  store i8*** %3, i8**** %10, align 8
  store %struct.symtab* %4, %struct.symtab** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 36
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  br label %32

29:                                               ; preds = %5
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i8* [ %28, %26 ], [ %31, %29 ]
  store i8* %33, i8** %17, align 8
  br label %34

34:                                               ; preds = %46, %32
  %35 = load i8*, i8** %17, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 48
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %17, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 57
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ false, %34 ], [ %43, %39 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i8*, i8** %17, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %17, align 8
  br label %34

49:                                               ; preds = %44
  %50 = load i8*, i8** %17, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %89, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 36
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  br label %65

62:                                               ; preds = %53
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i8* [ %61, %59 ], [ %64, %62 ]
  %67 = call i32 @sscanf(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %13)
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 36
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 0, %74
  br label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %13, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %75, %73 ], [ %77, %76 ]
  %80 = call %struct.value* @access_value_history(i32 %79)
  store %struct.value* %80, %struct.value** %12, align 8
  %81 = load %struct.value*, %struct.value** %12, align 8
  %82 = call i32 @VALUE_TYPE(%struct.value* %81)
  %83 = call i64 @TYPE_CODE(i32 %82)
  %84 = load i64, i64* @TYPE_CODE_INT, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = call i32 @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %78
  br label %138

89:                                               ; preds = %49
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* @VAR_DOMAIN, align 4
  %92 = call %struct.symbol* @lookup_symbol(i8* %90, i32 0, i32 %91, i32 0, %struct.symtab** %19)
  store %struct.symbol* %92, %struct.symbol** %18, align 8
  store %struct.symtab* null, %struct.symtab** %11, align 8
  store i32 1, i32* %14, align 4
  %93 = load %struct.symbol*, %struct.symbol** %18, align 8
  %94 = icmp ne %struct.symbol* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = load i8***, i8**** %10, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load %struct.symbol*, %struct.symbol** %18, align 8
  %100 = load %struct.symtab*, %struct.symtab** %19, align 8
  %101 = call { i32, %struct.symtab_and_line* } @symbol_found(i32 %96, i8*** %97, i8* %98, %struct.symbol* %99, i32* null, %struct.symtab* %100)
  %102 = bitcast %struct.symtabs_and_lines* %6 to { i32, %struct.symtab_and_line* }*
  %103 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %102, i32 0, i32 0
  %104 = extractvalue { i32, %struct.symtab_and_line* } %101, 0
  store i32 %104, i32* %103, align 8
  %105 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %102, i32 0, i32 1
  %106 = extractvalue { i32, %struct.symtab_and_line* } %101, 1
  store %struct.symtab_and_line* %106, %struct.symtab_and_line** %105, align 8
  br label %172

107:                                              ; preds = %89
  %108 = load i8*, i8** %7, align 8
  %109 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* %108, i32* null, i32* null)
  store %struct.minimal_symbol* %109, %struct.minimal_symbol** %20, align 8
  %110 = load %struct.minimal_symbol*, %struct.minimal_symbol** %20, align 8
  %111 = icmp ne %struct.minimal_symbol* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.minimal_symbol*, %struct.minimal_symbol** %20, align 8
  %115 = call { i32, %struct.symtab_and_line* } @minsym_found(i32 %113, %struct.minimal_symbol* %114)
  %116 = bitcast %struct.symtabs_and_lines* %6 to { i32, %struct.symtab_and_line* }*
  %117 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %116, i32 0, i32 0
  %118 = extractvalue { i32, %struct.symtab_and_line* } %115, 0
  store i32 %118, i32* %117, align 8
  %119 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %116, i32 0, i32 1
  %120 = extractvalue { i32, %struct.symtab_and_line* } %115, 1
  store %struct.symtab_and_line* %120, %struct.symtab_and_line** %119, align 8
  br label %172

121:                                              ; preds = %107
  %122 = load %struct.symtab*, %struct.symtab** %11, align 8
  %123 = icmp eq %struct.symtab* %122, null
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 1, i32 0
  store i32 %125, i32* %14, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = call i32 @lookup_internalvar(i8* %127)
  %129 = call %struct.value* @value_of_internalvar(i32 %128)
  store %struct.value* %129, %struct.value** %12, align 8
  %130 = load %struct.value*, %struct.value** %12, align 8
  %131 = call i32 @VALUE_TYPE(%struct.value* %130)
  %132 = call i64 @TYPE_CODE(i32 %131)
  %133 = load i64, i64* @TYPE_CODE_INT, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %121
  %136 = call i32 @error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %121
  br label %138

138:                                              ; preds = %137, %88
  %139 = call i32 @init_sal(%struct.symtab_and_line* %16)
  %140 = load %struct.symtab*, %struct.symtab** %11, align 8
  %141 = icmp ne %struct.symtab* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load %struct.symtab*, %struct.symtab** %11, align 8
  br label %146

144:                                              ; preds = %138
  %145 = load %struct.symtab*, %struct.symtab** %9, align 8
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi %struct.symtab* [ %143, %142 ], [ %145, %144 ]
  %148 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %16, i32 0, i32 2
  store %struct.symtab* %147, %struct.symtab** %148, align 8
  %149 = load %struct.value*, %struct.value** %12, align 8
  %150 = call i32 @value_as_long(%struct.value* %149)
  %151 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %16, i32 0, i32 1
  store i32 %150, i32* %151, align 8
  %152 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %16, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = call i64 @xmalloc(i32 24)
  %154 = inttoptr i64 %153 to %struct.symtab_and_line*
  %155 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %15, i32 0, i32 1
  store %struct.symtab_and_line* %154, %struct.symtab_and_line** %155, align 8
  %156 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %15, i32 0, i32 1
  %157 = load %struct.symtab_and_line*, %struct.symtab_and_line** %156, align 8
  %158 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %157, i64 0
  %159 = bitcast %struct.symtab_and_line* %158 to i8*
  %160 = bitcast %struct.symtab_and_line* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 24, i1 false)
  %161 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %15, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %146
  %165 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %15, i32 0, i32 1
  %166 = load %struct.symtab_and_line*, %struct.symtab_and_line** %165, align 8
  %167 = load i8***, i8**** %10, align 8
  %168 = call i32 @build_canonical_line_spec(%struct.symtab_and_line* %166, i32* null, i8*** %167)
  br label %169

169:                                              ; preds = %164, %146
  %170 = bitcast %struct.symtabs_and_lines* %6 to i8*
  %171 = bitcast %struct.symtabs_and_lines* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %170, i8* align 8 %171, i64 16, i1 false)
  br label %172

172:                                              ; preds = %169, %112, %95
  %173 = bitcast %struct.symtabs_and_lines* %6 to { i32, %struct.symtab_and_line* }*
  %174 = load { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %173, align 8
  ret { i32, %struct.symtab_and_line* } %174
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local %struct.value* @access_value_history(i32) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32, i32, i32, %struct.symtab**) #1

declare dso_local { i32, %struct.symtab_and_line* } @symbol_found(i32, i8***, i8*, %struct.symbol*, i32*, %struct.symtab*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local { i32, %struct.symtab_and_line* } @minsym_found(i32, %struct.minimal_symbol*) #1

declare dso_local %struct.value* @value_of_internalvar(i32) #1

declare dso_local i32 @lookup_internalvar(i8*) #1

declare dso_local i32 @init_sal(%struct.symtab_and_line*) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local i64 @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @build_canonical_line_spec(%struct.symtab_and_line*, i32*, i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
