; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_find_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_find_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i32 }
%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }

@LOC_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"operator \00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"the class `%s' does not have destructor defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"the class %s does not have any method named %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, %struct.symtab_and_line* } (i32, i8***, i8*, i8*, %struct.type*, %struct.symbol*)* @find_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, %struct.symtab_and_line* } @find_method(i32 %0, i8*** %1, i8* %2, i8* %3, %struct.type* %4, %struct.symbol* %5) #0 {
  %7 = alloca %struct.symtabs_and_lines, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8***, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.type*, align 8
  %13 = alloca %struct.symbol*, align 8
  %14 = alloca %struct.symtabs_and_lines, align 8
  %15 = alloca %struct.symbol*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.symbol**, align 8
  %18 = alloca %struct.symtab_and_line, align 4
  %19 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i8*** %1, i8**** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.type* %4, %struct.type** %12, align 8
  store %struct.symbol* %5, %struct.symbol** %13, align 8
  store %struct.symbol* null, %struct.symbol** %15, align 8
  %20 = load %struct.type*, %struct.type** %12, align 8
  %21 = call i32 @total_number_of_methods(%struct.type* %20)
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = call %struct.symbol** @alloca(i32 %24)
  store %struct.symbol** %25, %struct.symbol*** %17, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.type*, %struct.type** %12, align 8
  %28 = load %struct.symbol**, %struct.symbol*** %17, align 8
  %29 = call i32 @collect_methods(i8* %26, %struct.type* %27, %struct.symbol** %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %62

32:                                               ; preds = %6
  %33 = load %struct.symbol**, %struct.symbol*** %17, align 8
  %34 = getelementptr inbounds %struct.symbol*, %struct.symbol** %33, i64 0
  %35 = load %struct.symbol*, %struct.symbol** %34, align 8
  store %struct.symbol* %35, %struct.symbol** %15, align 8
  %36 = load %struct.symbol*, %struct.symbol** %15, align 8
  %37 = icmp ne %struct.symbol* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.symbol*, %struct.symbol** %15, align 8
  %40 = call i64 @SYMBOL_CLASS(%struct.symbol* %39)
  %41 = load i64, i64* @LOC_BLOCK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = call i64 @xmalloc(i32 4)
  %45 = inttoptr i64 %44 to %struct.symtab_and_line*
  %46 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %14, i32 0, i32 1
  store %struct.symtab_and_line* %45, %struct.symtab_and_line** %46, align 8
  %47 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %14, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %14, i32 0, i32 1
  %49 = load %struct.symtab_and_line*, %struct.symtab_and_line** %48, align 8
  %50 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %49, i64 0
  %51 = load %struct.symbol*, %struct.symbol** %15, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @find_function_start_sal(%struct.symbol* %51, i32 %52)
  %54 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %18, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = bitcast %struct.symtab_and_line* %50 to i8*
  %56 = bitcast %struct.symtab_and_line* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  br label %59

57:                                               ; preds = %38, %32
  %58 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %14, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %57, %43
  %60 = bitcast %struct.symtabs_and_lines* %7 to i8*
  %61 = bitcast %struct.symtabs_and_lines* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  br label %113

62:                                               ; preds = %6
  %63 = load i32, i32* %16, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.symbol**, %struct.symbol*** %17, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i8***, i8**** %9, align 8
  %70 = call { i32, %struct.symtab_and_line* } @decode_line_2(%struct.symbol** %66, i32 %67, i32 %68, i8*** %69)
  %71 = bitcast %struct.symtabs_and_lines* %7 to { i32, %struct.symtab_and_line* }*
  %72 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %71, i32 0, i32 0
  %73 = extractvalue { i32, %struct.symtab_and_line* } %70, 0
  store i32 %73, i32* %72, align 8
  %74 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %71, i32 0, i32 1
  %75 = extractvalue { i32, %struct.symtab_and_line* } %70, 1
  store %struct.symtab_and_line* %75, %struct.symtab_and_line** %74, align 8
  br label %113

76:                                               ; preds = %62
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @is_operator_name(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 3
  %83 = call i32 @strlen(i8* %82)
  %84 = add nsw i32 %83, 9
  %85 = call %struct.symbol** @alloca(i32 %84)
  %86 = bitcast %struct.symbol** %85 to i8*
  store i8* %86, i8** %19, align 8
  %87 = load i8*, i8** %19, align 8
  %88 = call i32 @strcpy(i8* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %89 = load i8*, i8** %19, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 3
  %92 = call i32 @strcat(i8* %89, i8* %91)
  br label %95

93:                                               ; preds = %76
  %94 = load i8*, i8** %11, align 8
  store i8* %94, i8** %19, align 8
  br label %95

95:                                               ; preds = %93, %80
  %96 = load i8*, i8** %19, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 126
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.symbol*, %struct.symbol** %13, align 8
  %104 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %103)
  %105 = call i32 (i8*, i8*, i32, ...) @cplusplus_error(i8* %102, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %112

106:                                              ; preds = %95
  %107 = load i8*, i8** %10, align 8
  %108 = load %struct.symbol*, %struct.symbol** %13, align 8
  %109 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %108)
  %110 = load i8*, i8** %19, align 8
  %111 = call i32 (i8*, i8*, i32, ...) @cplusplus_error(i8* %107, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %109, i8* %110)
  br label %112

112:                                              ; preds = %106, %101
  br label %113

113:                                              ; preds = %59, %65, %112
  %114 = bitcast %struct.symtabs_and_lines* %7 to { i32, %struct.symtab_and_line* }*
  %115 = load { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %114, align 8
  ret { i32, %struct.symtab_and_line* } %115
}

declare dso_local %struct.symbol** @alloca(i32) #1

declare dso_local i32 @total_number_of_methods(%struct.type*) #1

declare dso_local i32 @collect_methods(i8*, %struct.type*, %struct.symbol**) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @find_function_start_sal(%struct.symbol*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i32, %struct.symtab_and_line* } @decode_line_2(%struct.symbol**, i32, i32, i8***) #1

declare dso_local i64 @is_operator_name(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @cplusplus_error(i8*, i8*, i32, ...) #1

declare dso_local i32 @SYMBOL_PRINT_NAME(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
