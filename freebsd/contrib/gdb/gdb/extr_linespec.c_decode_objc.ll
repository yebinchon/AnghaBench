; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_objc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_objc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i32, i64, i64, i64 }
%struct.symtab = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }
%struct.symbol = type { i32 }
%struct.block = type { i32 }

@STATIC_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"debugging symbol \22%s\22 does not match selector; ignoring\00", align 1
@LOC_BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, %struct.symtab_and_line* } @decode_objc(i8** %0, i32 %1, %struct.symtab* %2, i8*** %3, i8* %4) #0 {
  %6 = alloca %struct.symtabs_and_lines, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.symtab*, align 8
  %10 = alloca i8***, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.symtabs_and_lines, align 8
  %13 = alloca %struct.symbol**, align 8
  %14 = alloca %struct.symbol*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.block*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.symtab_and_line, align 8
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.symtab* %2, %struct.symtab** %9, align 8
  store i8*** %3, i8**** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.symbol** null, %struct.symbol*** %13, align 8
  store %struct.symbol* null, %struct.symbol** %14, align 8
  store i8* null, i8** %15, align 8
  store %struct.block* null, %struct.block** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %20 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  store %struct.symtab_and_line* null, %struct.symtab_and_line** %20, align 8
  %21 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.symtab*, %struct.symtab** %9, align 8
  %23 = icmp ne %struct.symtab* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.symtab*, %struct.symtab** %9, align 8
  %26 = call i32 @BLOCKVECTOR(%struct.symtab* %25)
  %27 = load i32, i32* @STATIC_BLOCK, align 4
  %28 = call %struct.block* @BLOCKVECTOR_BLOCK(i32 %26, i32 %27)
  store %struct.block* %28, %struct.block** %16, align 8
  br label %31

29:                                               ; preds = %5
  %30 = call %struct.block* @get_selected_block(i32 0)
  store %struct.block* %30, %struct.block** %16, align 8
  br label %31

31:                                               ; preds = %29, %24
  %32 = load %struct.symtab*, %struct.symtab** %9, align 8
  %33 = load %struct.block*, %struct.block** %16, align 8
  %34 = load i8**, i8*** %7, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @find_imps(%struct.symtab* %32, %struct.block* %33, i8* %35, %struct.symbol** null, i32* %17, i32* %18)
  store i8* %36, i8** %15, align 8
  %37 = load i32, i32* %17, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %31
  %40 = load i32, i32* %17, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i64 @alloca(i32 %44)
  %46 = inttoptr i64 %45 to %struct.symbol**
  store %struct.symbol** %46, %struct.symbol*** %13, align 8
  %47 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.symbol*, %struct.symbol** %47, i64 %49
  store %struct.symbol* null, %struct.symbol** %50, align 8
  %51 = load %struct.symtab*, %struct.symtab** %9, align 8
  %52 = load %struct.block*, %struct.block** %16, align 8
  %53 = load i8**, i8*** %7, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %56 = call i8* @find_imps(%struct.symtab* %51, %struct.block* %52, i8* %54, %struct.symbol** %55, i32* %17, i32* %18)
  store i8* %56, i8** %15, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load i8**, i8*** %7, align 8
  store i8* %57, i8** %58, align 8
  br label %59

59:                                               ; preds = %39, %31
  %60 = load i32, i32* %17, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %141

62:                                               ; preds = %59
  %63 = load i32, i32* %18, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %67 = getelementptr inbounds %struct.symbol*, %struct.symbol** %66, i64 0
  %68 = load %struct.symbol*, %struct.symbol** %67, align 8
  store %struct.symbol* %68, %struct.symbol** %14, align 8
  br label %91

69:                                               ; preds = %62
  %70 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %71 = getelementptr inbounds %struct.symbol*, %struct.symbol** %70, i64 0
  %72 = load %struct.symbol*, %struct.symbol** %71, align 8
  %73 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %72)
  %74 = call %struct.symbol* @find_pc_function(i32 %73)
  store %struct.symbol* %74, %struct.symbol** %14, align 8
  %75 = load %struct.symbol*, %struct.symbol** %14, align 8
  %76 = icmp ne %struct.symbol* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %79 = getelementptr inbounds %struct.symbol*, %struct.symbol** %78, i64 0
  %80 = load %struct.symbol*, %struct.symbol** %79, align 8
  %81 = call i32 @SYMBOL_LINKAGE_NAME(%struct.symbol* %80)
  %82 = load %struct.symbol*, %struct.symbol** %14, align 8
  %83 = call i32 @SYMBOL_LINKAGE_NAME(%struct.symbol* %82)
  %84 = call i64 @strcmp(i32 %81, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load %struct.symbol*, %struct.symbol** %14, align 8
  %88 = call i32 @SYMBOL_LINKAGE_NAME(%struct.symbol* %87)
  %89 = call i32 @warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %88)
  store %struct.symbol* null, %struct.symbol** %14, align 8
  br label %90

90:                                               ; preds = %86, %77, %69
  br label %91

91:                                               ; preds = %90, %65
  %92 = call i64 @xmalloc(i32 32)
  %93 = inttoptr i64 %92 to %struct.symtab_and_line*
  %94 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  store %struct.symtab_and_line* %93, %struct.symtab_and_line** %94, align 8
  %95 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.symbol*, %struct.symbol** %14, align 8
  %97 = icmp ne %struct.symbol* %96, null
  br i1 %97, label %98, label %117

98:                                               ; preds = %91
  %99 = load %struct.symbol*, %struct.symbol** %14, align 8
  %100 = call i64 @SYMBOL_CLASS(%struct.symbol* %99)
  %101 = load i64, i64* @LOC_BLOCK, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %105 = load %struct.symtab_and_line*, %struct.symtab_and_line** %104, align 8
  %106 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %105, i64 0
  %107 = load %struct.symbol*, %struct.symbol** %14, align 8
  %108 = load i32, i32* %8, align 4
  call void @find_function_start_sal(%struct.symtab_and_line* sret %19, %struct.symbol* %107, i32 %108)
  %109 = bitcast %struct.symtab_and_line* %106 to i8*
  %110 = bitcast %struct.symtab_and_line* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 32, i1 false)
  %111 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %112 = load %struct.symtab_and_line*, %struct.symtab_and_line** %111, align 8
  %113 = load %struct.symbol*, %struct.symbol** %14, align 8
  %114 = call i32 @SYMBOL_NATURAL_NAME(%struct.symbol* %113)
  %115 = load i8***, i8**** %10, align 8
  %116 = call i32 @build_canonical_line_spec(%struct.symtab_and_line* %112, i32 %114, i8*** %115)
  br label %138

117:                                              ; preds = %98, %91
  %118 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %119 = load %struct.symtab_and_line*, %struct.symtab_and_line** %118, align 8
  %120 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %119, i64 0
  %121 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %123 = load %struct.symtab_and_line*, %struct.symtab_and_line** %122, align 8
  %124 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %123, i64 0
  %125 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %127 = load %struct.symtab_and_line*, %struct.symtab_and_line** %126, align 8
  %128 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %127, i64 0
  %129 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %131 = getelementptr inbounds %struct.symbol*, %struct.symbol** %130, i64 0
  %132 = load %struct.symbol*, %struct.symbol** %131, align 8
  %133 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %132)
  %134 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %135 = load %struct.symtab_and_line*, %struct.symtab_and_line** %134, align 8
  %136 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %135, i64 0
  %137 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 8
  br label %138

138:                                              ; preds = %117, %103
  %139 = bitcast %struct.symtabs_and_lines* %6 to i8*
  %140 = bitcast %struct.symtabs_and_lines* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %139, i8* align 8 %140, i64 16, i1 false)
  br label %158

141:                                              ; preds = %59
  %142 = load i32, i32* %17, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i8***, i8**** %10, align 8
  %149 = call { i32, %struct.symtab_and_line* } @decode_line_2(%struct.symbol** %145, i32 %146, i32 %147, i8*** %148)
  %150 = bitcast %struct.symtabs_and_lines* %6 to { i32, %struct.symtab_and_line* }*
  %151 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %150, i32 0, i32 0
  %152 = extractvalue { i32, %struct.symtab_and_line* } %149, 0
  store i32 %152, i32* %151, align 8
  %153 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %150, i32 0, i32 1
  %154 = extractvalue { i32, %struct.symtab_and_line* } %149, 1
  store %struct.symtab_and_line* %154, %struct.symtab_and_line** %153, align 8
  br label %158

155:                                              ; preds = %141
  %156 = bitcast %struct.symtabs_and_lines* %6 to i8*
  %157 = bitcast %struct.symtabs_and_lines* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 %157, i64 16, i1 false)
  br label %158

158:                                              ; preds = %155, %144, %138
  %159 = bitcast %struct.symtabs_and_lines* %6 to { i32, %struct.symtab_and_line* }*
  %160 = load { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %159, align 8
  ret { i32, %struct.symtab_and_line* } %160
}

declare dso_local %struct.block* @BLOCKVECTOR_BLOCK(i32, i32) #1

declare dso_local i32 @BLOCKVECTOR(%struct.symtab*) #1

declare dso_local %struct.block* @get_selected_block(i32) #1

declare dso_local i8* @find_imps(%struct.symtab*, %struct.block*, i8*, %struct.symbol**, i32*, i32*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local %struct.symbol* @find_pc_function(i32) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @SYMBOL_LINKAGE_NAME(%struct.symbol*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local void @find_function_start_sal(%struct.symtab_and_line* sret, %struct.symbol*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @build_canonical_line_spec(%struct.symtab_and_line*, i32, i8***) #1

declare dso_local i32 @SYMBOL_NATURAL_NAME(%struct.symbol*) #1

declare dso_local { i32, %struct.symtab_and_line* } @decode_line_2(%struct.symbol**, i32, i32, i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
