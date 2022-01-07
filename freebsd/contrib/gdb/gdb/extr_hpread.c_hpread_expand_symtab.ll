; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_expand_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_expand_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }
%struct.symtab = type { i32 }
%struct.section_offsets = type { i32 }
%union.dnttentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i64 }

@current_objfile = common dso_local global %struct.objfile* null, align 8
@subfile_stack = common dso_local global i64 0, align 8
@last_source_file = common dso_local global i64 0, align 8
@current_demangling_style = common dso_local global i64 0, align 8
@edg_demangling = common dso_local global i64 0, align 8
@HP_DEMANGLING_STYLE_STRING = common dso_local global i32 0, align 4
@DNTT_TYPE_SRCFILE = common dso_local global i64 0, align 8
@DNTT_TYPE_MODULE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"globals\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@symnum = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@hp_som_som_object_present = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symtab* (%struct.objfile*, i32, i32, i32, i32, %struct.section_offsets*, i8*)* @hpread_expand_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symtab* @hpread_expand_symtab(%struct.objfile* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.section_offsets* %5, i8* %6) #0 {
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.section_offsets*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %union.dnttentry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.section_offsets* %5, %struct.section_offsets** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load %struct.objfile*, %struct.objfile** %8, align 8
  store %struct.objfile* %24, %struct.objfile** @current_objfile, align 8
  store i64 0, i64* @subfile_stack, align 8
  store i64 0, i64* @last_source_file, align 8
  %25 = load i64, i64* @current_demangling_style, align 8
  %26 = load i64, i64* @edg_demangling, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i32, i32* @HP_DEMANGLING_STYLE_STRING, align 4
  %30 = call i32 @set_demangling_style(i32 %29)
  br label %31

31:                                               ; preds = %28, %7
  %32 = load i32, i32* %19, align 4
  %33 = load %struct.objfile*, %struct.objfile** %8, align 8
  %34 = call %union.dnttentry* @hpread_get_lntt(i32 %32, %struct.objfile* %33)
  store %union.dnttentry* %34, %union.dnttentry** %16, align 8
  %35 = load %union.dnttentry*, %union.dnttentry** %16, align 8
  %36 = bitcast %union.dnttentry* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 8
  %39 = zext i8 %38 to i32
  %40 = load i64, i64* @DNTT_TYPE_SRCFILE, align 8
  %41 = trunc i64 %40 to i8
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %57, label %44

44:                                               ; preds = %31
  %45 = load %union.dnttentry*, %union.dnttentry** %16, align 8
  %46 = bitcast %union.dnttentry* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 8
  %49 = zext i8 %48 to i32
  %50 = load i64, i64* @DNTT_TYPE_MODULE, align 8
  %51 = trunc i64 %50 to i8
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = call i32 @start_symtab(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  %56 = call i32 @record_debugformat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %44, %31
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %59, 4
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %17, align 4
  store i32 0, i32* @symnum, align 4
  br label %62

62:                                               ; preds = %98, %57
  %63 = load i32, i32* @symnum, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %62
  %67 = load i32, i32* @QUIT, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* @symnum, align 4
  %70 = add i32 %68, %69
  %71 = load %struct.objfile*, %struct.objfile** %8, align 8
  %72 = call %union.dnttentry* @hpread_get_lntt(i32 %70, %struct.objfile* %71)
  store %union.dnttentry* %72, %union.dnttentry** %16, align 8
  %73 = load %union.dnttentry*, %union.dnttentry** %16, align 8
  %74 = bitcast %union.dnttentry* %73 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %98

79:                                               ; preds = %66
  %80 = load %union.dnttentry*, %union.dnttentry** %16, align 8
  %81 = load %struct.objfile*, %struct.objfile** %8, align 8
  %82 = call i32 @set_namestring(%union.dnttentry* %80, i8** %15, %struct.objfile* %81)
  %83 = load %union.dnttentry*, %union.dnttentry** %16, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = load %struct.section_offsets*, %struct.section_offsets** %13, align 8
  %86 = load %struct.objfile*, %struct.objfile** %8, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = load i32, i32* @symnum, align 4
  %91 = load i32, i32* %19, align 4
  %92 = add i32 %90, %91
  %93 = call i32 @hpread_process_one_debug_symbol(%union.dnttentry* %83, i8* %84, %struct.section_offsets* %85, %struct.objfile* %86, i32 %87, i32 %88, i8* %89, i32 %92, i32* %18)
  %94 = load i32, i32* %18, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %97

96:                                               ; preds = %79
  br label %101

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97, %78
  %99 = load i32, i32* @symnum, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* @symnum, align 4
  br label %62

101:                                              ; preds = %96, %62
  store %struct.objfile* null, %struct.objfile** @current_objfile, align 8
  store i32 1, i32* @hp_som_som_object_present, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %102, %103
  %105 = load %struct.objfile*, %struct.objfile** %8, align 8
  %106 = load %struct.objfile*, %struct.objfile** %8, align 8
  %107 = call i32 @SECT_OFF_TEXT(%struct.objfile* %106)
  %108 = call %struct.symtab* @end_symtab(i32 %104, %struct.objfile* %105, i32 %107)
  ret %struct.symtab* %108
}

declare dso_local i32 @set_demangling_style(i32) #1

declare dso_local %union.dnttentry* @hpread_get_lntt(i32, %struct.objfile*) #1

declare dso_local i32 @start_symtab(i8*, i32*, i32) #1

declare dso_local i32 @record_debugformat(i8*) #1

declare dso_local i32 @set_namestring(%union.dnttentry*, i8**, %struct.objfile*) #1

declare dso_local i32 @hpread_process_one_debug_symbol(%union.dnttentry*, i8*, %struct.section_offsets*, %struct.objfile*, i32, i32, i8*, i32, i32*) #1

declare dso_local %struct.symtab* @end_symtab(i32, %struct.objfile*, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
