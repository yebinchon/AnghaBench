; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_kallsyms.c_symbol_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_kallsyms.c_symbol_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }
%struct.TYPE_4__ = type { i64, i8* }
%struct.sym_entry = type { i64*, i64 }

@symbol_valid.special_symbols = internal global [9 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [19 x i8] c"kallsyms_addresses\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"kallsyms_num_syms\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"kallsyms_names\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"kallsyms_markers\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"kallsyms_token_table\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"kallsyms_token_index\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"_SDA_BASE_\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"_SDA2_BASE_\00", align 1
@symbol_prefix_char = common dso_local global i64 0, align 8
@all_symbols = common dso_local global i32 0, align 4
@text_range_text = common dso_local global %struct.TYPE_3__* null, align 8
@text_range_inittext = common dso_local global %struct.TYPE_4__* null, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"_compiled.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_entry*)* @symbol_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbol_valid(%struct.sym_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sym_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sym_entry* %0, %struct.sym_entry** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load i64, i64* @symbol_prefix_char, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %10 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @symbol_prefix_char, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %8, %1
  %20 = load i32, i32* @all_symbols, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %71, label %22

22:                                               ; preds = %19
  %23 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %24 = call i64 @symbol_valid_tr(%struct.sym_entry* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %109

27:                                               ; preds = %22
  %28 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %29 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @text_range_text, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %37 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = bitcast i64* %38 to i8*
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @text_range_text, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %42, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %35, %27
  %49 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %50 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @text_range_inittext, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %48
  %57 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %58 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = bitcast i64* %59 to i8*
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @text_range_inittext, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %63, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56, %35
  store i32 0, i32* %2, align 4
  br label %109

70:                                               ; preds = %56, %48
  br label %71

71:                                               ; preds = %70, %19
  %72 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %73 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = bitcast i64* %74 to i8*
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = call i64 @strstr(i8* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %109

82:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %105, %82
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [9 x i8*], [9 x i8*]* @symbol_valid.special_symbols, i64 0, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %108

89:                                               ; preds = %83
  %90 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %91 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = bitcast i64* %92 to i8*
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [9 x i8*], [9 x i8*]* @symbol_valid.special_symbols, i64 0, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcmp(i8* %96, i8* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %109

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %83

108:                                              ; preds = %83
  store i32 1, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %103, %81, %69, %26
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @symbol_valid_tr(%struct.sym_entry*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
