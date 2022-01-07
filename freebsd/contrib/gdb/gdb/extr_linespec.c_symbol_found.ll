; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_symbol_found.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_symbol_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64, %struct.symtab* }
%struct.symbol = type { i32 }
%struct.symtab = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }
%struct.blockvector = type { i32 }
%struct.block = type { i32 }

@LOC_BLOCK = common dso_local global i64 0, align 8
@STATIC_BLOCK = common dso_local global i32 0, align 4
@VAR_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\22%s\22 is not a function\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Line number not known for symbol \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, %struct.symtab_and_line* } (i32, i8***, i8*, %struct.symbol*, %struct.symtab*, %struct.symtab*)* @symbol_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, %struct.symtab_and_line* } @symbol_found(i32 %0, i8*** %1, i8* %2, %struct.symbol* %3, %struct.symtab* %4, %struct.symtab* %5) #0 {
  %7 = alloca %struct.symtabs_and_lines, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8***, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.symbol*, align 8
  %12 = alloca %struct.symtab*, align 8
  %13 = alloca %struct.symtab*, align 8
  %14 = alloca %struct.symtab_and_line, align 8
  %15 = alloca %struct.blockvector*, align 8
  %16 = alloca %struct.block*, align 8
  store i32 %0, i32* %8, align 4
  store i8*** %1, i8**** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.symbol* %3, %struct.symbol** %11, align 8
  store %struct.symtab* %4, %struct.symtab** %12, align 8
  store %struct.symtab* %5, %struct.symtab** %13, align 8
  %17 = load %struct.symbol*, %struct.symbol** %11, align 8
  %18 = call i64 @SYMBOL_CLASS(%struct.symbol* %17)
  %19 = load i64, i64* @LOC_BLOCK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %6
  %22 = call i64 @xmalloc(i32 16)
  %23 = inttoptr i64 %22 to %struct.symtab_and_line*
  %24 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  store %struct.symtab_and_line* %23, %struct.symtab_and_line** %24, align 8
  %25 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %26 = load %struct.symtab_and_line*, %struct.symtab_and_line** %25, align 8
  %27 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %26, i64 0
  %28 = load %struct.symbol*, %struct.symbol** %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call { i64, %struct.symtab* } @find_function_start_sal(%struct.symbol* %28, i32 %29)
  %31 = bitcast %struct.symtab_and_line* %14 to { i64, %struct.symtab* }*
  %32 = getelementptr inbounds { i64, %struct.symtab* }, { i64, %struct.symtab* }* %31, i32 0, i32 0
  %33 = extractvalue { i64, %struct.symtab* } %30, 0
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds { i64, %struct.symtab* }, { i64, %struct.symtab* }* %31, i32 0, i32 1
  %35 = extractvalue { i64, %struct.symtab* } %30, 1
  store %struct.symtab* %35, %struct.symtab** %34, align 8
  %36 = bitcast %struct.symtab_and_line* %27 to i8*
  %37 = bitcast %struct.symtab_and_line* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.symtab*, %struct.symtab** %12, align 8
  %40 = icmp eq %struct.symtab* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %21
  %42 = load %struct.symtab*, %struct.symtab** %13, align 8
  %43 = call %struct.blockvector* @BLOCKVECTOR(%struct.symtab* %42)
  store %struct.blockvector* %43, %struct.blockvector** %15, align 8
  %44 = load %struct.blockvector*, %struct.blockvector** %15, align 8
  %45 = load i32, i32* @STATIC_BLOCK, align 4
  %46 = call %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector* %44, i32 %45)
  store %struct.block* %46, %struct.block** %16, align 8
  %47 = load %struct.block*, %struct.block** %16, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* @VAR_DOMAIN, align 4
  %50 = call i32* @lookup_block_symbol(%struct.block* %47, i8* %48, i32* null, i32 %49)
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %54 = load %struct.symtab_and_line*, %struct.symtab_and_line** %53, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i8***, i8**** %9, align 8
  %57 = call i32 @build_canonical_line_spec(%struct.symtab_and_line* %54, i8* %55, i8*** %56)
  br label %58

58:                                               ; preds = %52, %41
  br label %59

59:                                               ; preds = %58, %21
  br label %95

60:                                               ; preds = %6
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %64)
  br label %94

66:                                               ; preds = %60
  %67 = load %struct.symbol*, %struct.symbol** %11, align 8
  %68 = call i64 @SYMBOL_LINE(%struct.symbol* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = call i64 @xmalloc(i32 16)
  %72 = inttoptr i64 %71 to %struct.symtab_and_line*
  %73 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  store %struct.symtab_and_line* %72, %struct.symtab_and_line** %73, align 8
  %74 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %76 = load %struct.symtab_and_line*, %struct.symtab_and_line** %75, align 8
  %77 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %76, i64 0
  %78 = call i32 @memset(%struct.symtab_and_line* %77, i32 0, i32 16)
  %79 = load %struct.symtab*, %struct.symtab** %13, align 8
  %80 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %81 = load %struct.symtab_and_line*, %struct.symtab_and_line** %80, align 8
  %82 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %81, i64 0
  %83 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %82, i32 0, i32 1
  store %struct.symtab* %79, %struct.symtab** %83, align 8
  %84 = load %struct.symbol*, %struct.symbol** %11, align 8
  %85 = call i64 @SYMBOL_LINE(%struct.symbol* %84)
  %86 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %87 = load %struct.symtab_and_line*, %struct.symtab_and_line** %86, align 8
  %88 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %87, i64 0
  %89 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %88, i32 0, i32 0
  store i64 %85, i64* %89, align 8
  br label %95

90:                                               ; preds = %66
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %93, %63
  br label %95

95:                                               ; preds = %59, %70, %94
  %96 = bitcast %struct.symtabs_and_lines* %7 to { i32, %struct.symtab_and_line* }*
  %97 = load { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %96, align 8
  ret { i32, %struct.symtab_and_line* } %97
}

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local { i64, %struct.symtab* } @find_function_start_sal(%struct.symbol*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.blockvector* @BLOCKVECTOR(%struct.symtab*) #1

declare dso_local %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector*, i32) #1

declare dso_local i32* @lookup_block_symbol(%struct.block*, i8*, i32*, i32) #1

declare dso_local i32 @build_canonical_line_spec(%struct.symtab_and_line*, i8*, i8***) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @SYMBOL_LINE(%struct.symbol*) #1

declare dso_local i32 @memset(%struct.symtab_and_line*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
