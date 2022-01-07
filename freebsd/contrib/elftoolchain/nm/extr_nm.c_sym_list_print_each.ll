; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_list_print_each.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_list_print_each.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 (i8, i8*, %struct.TYPE_5__*, i32*)* }
%struct.TYPE_5__ = type { i32 }
%struct.sym_entry = type { i32*, %struct.TYPE_5__* }
%struct.sym_print_data = type { i8*, i8*, i32, i8**, i32 }
%struct.func_info_head = type { i32 }
%struct.var_info_head = type { i32 }
%struct.line_info_head = type { i32 }

@nm_opts = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PRINT_NAME_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"*LOPROC*\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"*HIPROC*\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"*LOOS*\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"*HIOS*\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"*ABS*\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"*COM*\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"*HIRESERVE*\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_entry*, %struct.sym_print_data*, %struct.func_info_head*, %struct.var_info_head*, %struct.line_info_head*)* @sym_list_print_each to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_list_print_each(%struct.sym_entry* %0, %struct.sym_print_data* %1, %struct.func_info_head* %2, %struct.var_info_head* %3, %struct.line_info_head* %4) #0 {
  %6 = alloca %struct.sym_entry*, align 8
  %7 = alloca %struct.sym_print_data*, align 8
  %8 = alloca %struct.func_info_head*, align 8
  %9 = alloca %struct.var_info_head*, align 8
  %10 = alloca %struct.line_info_head*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store %struct.sym_entry* %0, %struct.sym_entry** %6, align 8
  store %struct.sym_print_data* %1, %struct.sym_print_data** %7, align 8
  store %struct.func_info_head* %2, %struct.func_info_head** %8, align 8
  store %struct.var_info_head* %3, %struct.var_info_head** %9, align 8
  store %struct.line_info_head* %4, %struct.line_info_head** %10, align 8
  %13 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %14 = icmp eq %struct.sym_entry* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load %struct.sym_print_data*, %struct.sym_print_data** %7, align 8
  %17 = call i64 @CHECK_SYM_PRINT_DATA(%struct.sym_print_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %5
  br label %136

20:                                               ; preds = %15
  %21 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %22 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %28 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %34 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load %struct.sym_print_data*, %struct.sym_print_data** %7, align 8
  %37 = getelementptr inbounds %struct.sym_print_data, %struct.sym_print_data* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call signext i8 @get_sym_type(%struct.TYPE_5__* %35, i32 %38)
  store i8 %39, i8* %12, align 1
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nm_opts, i32 0, i32 0), align 8
  %41 = load i64, i64* @PRINT_NAME_FULL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %20
  %44 = load %struct.sym_print_data*, %struct.sym_print_data** %7, align 8
  %45 = getelementptr inbounds %struct.sym_print_data, %struct.sym_print_data* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32 (i8, i8*, %struct.TYPE_5__*, i32*)*, i32 (i8, i8*, %struct.TYPE_5__*, i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nm_opts, i32 0, i32 2), align 8
  %49 = icmp eq i32 (i8, i8*, %struct.TYPE_5__*, i32*)* %48, @sym_elem_print_all_portable
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.sym_print_data*, %struct.sym_print_data** %7, align 8
  %52 = getelementptr inbounds %struct.sym_print_data, %struct.sym_print_data* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.sym_print_data*, %struct.sym_print_data** %7, align 8
  %57 = getelementptr inbounds %struct.sym_print_data, %struct.sym_print_data* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %74

62:                                               ; preds = %43
  %63 = load %struct.sym_print_data*, %struct.sym_print_data** %7, align 8
  %64 = getelementptr inbounds %struct.sym_print_data, %struct.sym_print_data* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.sym_print_data*, %struct.sym_print_data** %7, align 8
  %69 = getelementptr inbounds %struct.sym_print_data, %struct.sym_print_data* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %60
  br label %75

75:                                               ; preds = %74, %20
  %76 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %77 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %88 [
    i32 128, label %81
    i32 131, label %82
    i32 129, label %83
    i32 132, label %84
    i32 134, label %85
    i32 133, label %86
    i32 130, label %87
  ]

81:                                               ; preds = %75
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %111

82:                                               ; preds = %75
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %111

83:                                               ; preds = %75
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %111

84:                                               ; preds = %75
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %111

85:                                               ; preds = %75
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %11, align 8
  br label %111

86:                                               ; preds = %75
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %11, align 8
  br label %111

87:                                               ; preds = %75
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %11, align 8
  br label %111

88:                                               ; preds = %75
  %89 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %90 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sym_print_data*, %struct.sym_print_data** %7, align 8
  %95 = getelementptr inbounds %struct.sym_print_data, %struct.sym_print_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %136

99:                                               ; preds = %88
  %100 = load %struct.sym_print_data*, %struct.sym_print_data** %7, align 8
  %101 = getelementptr inbounds %struct.sym_print_data, %struct.sym_print_data* %100, i32 0, i32 3
  %102 = load i8**, i8*** %101, align 8
  %103 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %104 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %102, i64 %108
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %11, align 8
  br label %111

111:                                              ; preds = %99, %87, %86, %85, %84, %83, %82, %81
  %112 = load i32 (i8, i8*, %struct.TYPE_5__*, i32*)*, i32 (i8, i8*, %struct.TYPE_5__*, i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nm_opts, i32 0, i32 2), align 8
  %113 = load i8, i8* %12, align 1
  %114 = load i8*, i8** %11, align 8
  %115 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %116 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %119 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 %112(i8 signext %113, i8* %114, %struct.TYPE_5__* %117, i32* %120)
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nm_opts, i32 0, i32 1), align 8
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %134

124:                                              ; preds = %111
  %125 = load i8, i8* %12, align 1
  %126 = call i32 @IS_UNDEF_SYM_TYPE(i8 signext %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %130 = load %struct.func_info_head*, %struct.func_info_head** %8, align 8
  %131 = load %struct.var_info_head*, %struct.var_info_head** %9, align 8
  %132 = load %struct.line_info_head*, %struct.line_info_head** %10, align 8
  %133 = call i32 @print_lineno(%struct.sym_entry* %129, %struct.func_info_head* %130, %struct.var_info_head* %131, %struct.line_info_head* %132)
  br label %134

134:                                              ; preds = %128, %124, %111
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %98, %19
  ret void
}

declare dso_local i64 @CHECK_SYM_PRINT_DATA(%struct.sym_print_data*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local signext i8 @get_sym_type(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sym_elem_print_all_portable(i8 signext, i8*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @IS_UNDEF_SYM_TYPE(i8 signext) #1

declare dso_local i32 @print_lineno(%struct.sym_entry*, %struct.func_info_head*, %struct.var_info_head*, %struct.line_info_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
