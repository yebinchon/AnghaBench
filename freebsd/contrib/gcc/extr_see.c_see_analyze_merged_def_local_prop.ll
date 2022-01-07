; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_analyze_merged_def_local_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_analyze_merged_def_local_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.see_register_properties = type { i32, i64, %struct.see_occr*, i32 }
%struct.see_occr = type { i32, %struct.see_occr*, i8* }
%struct.see_ref_s = type { i8* }
%struct.see_pre_extension_expr = type { i32, i64, %struct.see_occr*, i32 }

@DEF_EXTENSION = common dso_local global i32 0, align 4
@see_bb_hash_ar = common dso_local global %struct.see_register_properties** null, align 8
@INSERT = common dso_local global i32 0, align 4
@transp = common dso_local global i32* null, align 8
@ae_kill = common dso_local global i32* null, align 8
@df = common dso_local global i32 0, align 4
@comp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @see_analyze_merged_def_local_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_analyze_merged_def_local_prop(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.see_ref_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.see_pre_extension_expr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.see_register_properties*, align 8
  %12 = alloca %struct.see_register_properties*, align 8
  %13 = alloca %struct.see_register_properties**, align 8
  %14 = alloca %struct.see_register_properties, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.see_occr*, align 8
  %17 = alloca %struct.see_occr*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load i8**, i8*** %3, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.see_ref_s*
  store %struct.see_ref_s* %21, %struct.see_ref_s** %6, align 8
  %22 = load %struct.see_ref_s*, %struct.see_ref_s** %6, align 8
  %23 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @BLOCK_NUM(i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @see_get_extension_reg(i8* %27, i32 1)
  store i8* %28, i8** %15, align 8
  store %struct.see_occr* null, %struct.see_occr** %16, align 8
  store %struct.see_occr* null, %struct.see_occr** %17, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @DEF_EXTENSION, align 4
  %31 = call %struct.see_register_properties* @see_seek_pre_extension_expr(i8* %29, i32 %30)
  %32 = bitcast %struct.see_register_properties* %31 to %struct.see_pre_extension_expr*
  store %struct.see_pre_extension_expr* %32, %struct.see_pre_extension_expr** %8, align 8
  %33 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %8, align 8
  %34 = bitcast %struct.see_pre_extension_expr* %33 to %struct.see_register_properties*
  %35 = call i32 @gcc_assert(%struct.see_register_properties* %34)
  %36 = load %struct.see_register_properties**, %struct.see_register_properties*** @see_bb_hash_ar, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.see_register_properties*, %struct.see_register_properties** %36, i64 %38
  %40 = load %struct.see_register_properties*, %struct.see_register_properties** %39, align 8
  store %struct.see_register_properties* %40, %struct.see_register_properties** %11, align 8
  %41 = load %struct.see_register_properties*, %struct.see_register_properties** %11, align 8
  %42 = call i32 @gcc_assert(%struct.see_register_properties* %41)
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 @REGNO(i8* %43)
  %45 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %14, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = load %struct.see_register_properties*, %struct.see_register_properties** %11, align 8
  %47 = load i32, i32* @INSERT, align 4
  %48 = call i64 @htab_find_slot(%struct.see_register_properties* %46, %struct.see_register_properties* %14, i32 %47)
  %49 = inttoptr i64 %48 to %struct.see_register_properties**
  store %struct.see_register_properties** %49, %struct.see_register_properties*** %13, align 8
  %50 = load %struct.see_register_properties**, %struct.see_register_properties*** %13, align 8
  %51 = load %struct.see_register_properties*, %struct.see_register_properties** %50, align 8
  store %struct.see_register_properties* %51, %struct.see_register_properties** %12, align 8
  %52 = load %struct.see_register_properties*, %struct.see_register_properties** %12, align 8
  %53 = call i32 @gcc_assert(%struct.see_register_properties* %52)
  %54 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %8, align 8
  %55 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** @transp, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @RESET_BIT(i32 %61, i32 %62)
  %64 = load i32*, i32** @ae_kill, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @RESET_BIT(i32 %68, i32 %69)
  %71 = load %struct.see_register_properties*, %struct.see_register_properties** %12, align 8
  %72 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @df, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = call i64 @DF_INSN_LUID(i32 %74, i8* %75)
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %119

78:                                               ; preds = %2
  %79 = load i32*, i32** @comp, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @SET_BIT(i32 %83, i32 %84)
  %86 = call %struct.see_occr* @xmalloc(i32 24)
  store %struct.see_occr* %86, %struct.see_occr** %16, align 8
  %87 = load %struct.see_occr*, %struct.see_occr** %16, align 8
  %88 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %87, i32 0, i32 1
  store %struct.see_occr* null, %struct.see_occr** %88, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load %struct.see_occr*, %struct.see_occr** %16, align 8
  %91 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.see_occr*, %struct.see_occr** %16, align 8
  %94 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %8, align 8
  %96 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %95, i32 0, i32 2
  %97 = load %struct.see_occr*, %struct.see_occr** %96, align 8
  store %struct.see_occr* %97, %struct.see_occr** %17, align 8
  %98 = load %struct.see_occr*, %struct.see_occr** %17, align 8
  %99 = icmp ne %struct.see_occr* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %78
  %101 = load %struct.see_occr*, %struct.see_occr** %16, align 8
  %102 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %8, align 8
  %103 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %102, i32 0, i32 2
  store %struct.see_occr* %101, %struct.see_occr** %103, align 8
  br label %118

104:                                              ; preds = %78
  br label %105

105:                                              ; preds = %110, %104
  %106 = load %struct.see_occr*, %struct.see_occr** %17, align 8
  %107 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %106, i32 0, i32 1
  %108 = load %struct.see_occr*, %struct.see_occr** %107, align 8
  %109 = icmp ne %struct.see_occr* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.see_occr*, %struct.see_occr** %17, align 8
  %112 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %111, i32 0, i32 1
  %113 = load %struct.see_occr*, %struct.see_occr** %112, align 8
  store %struct.see_occr* %113, %struct.see_occr** %17, align 8
  br label %105

114:                                              ; preds = %105
  %115 = load %struct.see_occr*, %struct.see_occr** %16, align 8
  %116 = load %struct.see_occr*, %struct.see_occr** %17, align 8
  %117 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %116, i32 0, i32 1
  store %struct.see_occr* %115, %struct.see_occr** %117, align 8
  br label %118

118:                                              ; preds = %114, %100
  br label %119

119:                                              ; preds = %118, %2
  ret i32 1
}

declare dso_local i32 @BLOCK_NUM(i8*) #1

declare dso_local i8* @see_get_extension_reg(i8*, i32) #1

declare dso_local %struct.see_register_properties* @see_seek_pre_extension_expr(i8*, i32) #1

declare dso_local i32 @gcc_assert(%struct.see_register_properties*) #1

declare dso_local i32 @REGNO(i8*) #1

declare dso_local i64 @htab_find_slot(%struct.see_register_properties*, %struct.see_register_properties*, i32) #1

declare dso_local i32 @RESET_BIT(i32, i32) #1

declare dso_local i64 @DF_INSN_LUID(i32, i8*) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local %struct.see_occr* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
