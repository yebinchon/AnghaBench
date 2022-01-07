; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_analyze_unmerged_def_local_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_analyze_unmerged_def_local_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.see_register_properties = type { i32, i32 }
%struct.see_ref_s = type { i8* }
%struct.see_pre_extension_expr = type { i32, i32 }

@DEF_EXTENSION = common dso_local global i32 0, align 4
@see_bb_hash_ar = common dso_local global %struct.see_register_properties** null, align 8
@INSERT = common dso_local global i32 0, align 4
@transp = common dso_local global i32* null, align 8
@ae_kill = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @see_analyze_unmerged_def_local_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_analyze_unmerged_def_local_prop(i8** %0, i8* %1) #0 {
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
  %14 = alloca %struct.see_register_properties, align 4
  %15 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i8**, i8*** %3, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.see_ref_s*
  store %struct.see_ref_s* %19, %struct.see_ref_s** %6, align 8
  %20 = load %struct.see_ref_s*, %struct.see_ref_s** %6, align 8
  %21 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @BLOCK_NUM(i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @see_get_extension_reg(i8* %25, i32 1)
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @DEF_EXTENSION, align 4
  %29 = call %struct.see_register_properties* @see_seek_pre_extension_expr(i8* %27, i32 %28)
  %30 = bitcast %struct.see_register_properties* %29 to %struct.see_pre_extension_expr*
  store %struct.see_pre_extension_expr* %30, %struct.see_pre_extension_expr** %8, align 8
  %31 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %8, align 8
  %32 = bitcast %struct.see_pre_extension_expr* %31 to %struct.see_register_properties*
  %33 = call i32 @gcc_assert(%struct.see_register_properties* %32)
  %34 = load %struct.see_register_properties**, %struct.see_register_properties*** @see_bb_hash_ar, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.see_register_properties*, %struct.see_register_properties** %34, i64 %36
  %38 = load %struct.see_register_properties*, %struct.see_register_properties** %37, align 8
  store %struct.see_register_properties* %38, %struct.see_register_properties** %11, align 8
  %39 = load %struct.see_register_properties*, %struct.see_register_properties** %11, align 8
  %40 = call i32 @gcc_assert(%struct.see_register_properties* %39)
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 @REGNO(i8* %41)
  %43 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %14, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.see_register_properties*, %struct.see_register_properties** %11, align 8
  %45 = load i32, i32* @INSERT, align 4
  %46 = call i64 @htab_find_slot(%struct.see_register_properties* %44, %struct.see_register_properties* %14, i32 %45)
  %47 = inttoptr i64 %46 to %struct.see_register_properties**
  store %struct.see_register_properties** %47, %struct.see_register_properties*** %13, align 8
  %48 = load %struct.see_register_properties**, %struct.see_register_properties*** %13, align 8
  %49 = load %struct.see_register_properties*, %struct.see_register_properties** %48, align 8
  store %struct.see_register_properties* %49, %struct.see_register_properties** %12, align 8
  %50 = load %struct.see_register_properties*, %struct.see_register_properties** %12, align 8
  %51 = call i32 @gcc_assert(%struct.see_register_properties* %50)
  %52 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %8, align 8
  %53 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32*, i32** @transp, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @RESET_BIT(i32 %59, i32 %60)
  %62 = load i32*, i32** @ae_kill, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @SET_BIT(i32 %66, i32 %67)
  ret i32 1
}

declare dso_local i32 @BLOCK_NUM(i8*) #1

declare dso_local i8* @see_get_extension_reg(i8*, i32) #1

declare dso_local %struct.see_register_properties* @see_seek_pre_extension_expr(i8*, i32) #1

declare dso_local i32 @gcc_assert(%struct.see_register_properties*) #1

declare dso_local i32 @REGNO(i8*) #1

declare dso_local i64 @htab_find_slot(%struct.see_register_properties*, %struct.see_register_properties*, i32) #1

declare dso_local i32 @RESET_BIT(i32, i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
