; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_func_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_func_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i64, %struct.die_info*, i32 }
%struct.dwarf2_cu = type { i64, i32*, %struct.objfile* }
%struct.objfile = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.context_stack = type { i32, i32, i32, i32 }
%struct.attribute = type { i32 }
%struct.cleanup = type { i32 }

@processing_current_prefix = common dso_local global i8* null, align 8
@language_cplus = common dso_local global i64 0, align 8
@xfree = common dso_local global i32 0, align 4
@DW_AT_frame_base = common dso_local global i32 0, align 4
@local_symbols = common dso_local global i32 0, align 4
@param_symbols = common dso_local global i32 0, align 4
@file_symbols = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*, %struct.dwarf2_cu*)* @read_func_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_func_scope(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca %struct.context_stack*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.die_info*, align 8
  %10 = alloca %struct.attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.cleanup*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.die_info*, align 8
  %16 = alloca i8*, align 8
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  %17 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %18 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %17, i32 0, i32 2
  %19 = load %struct.objfile*, %struct.objfile** %18, align 8
  store %struct.objfile* %19, %struct.objfile** %5, align 8
  %20 = load i8*, i8** @processing_current_prefix, align 8
  store i8* %20, i8** %12, align 8
  store %struct.cleanup* null, %struct.cleanup** %13, align 8
  %21 = load %struct.objfile*, %struct.objfile** %5, align 8
  %22 = getelementptr inbounds %struct.objfile, %struct.objfile* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.objfile*, %struct.objfile** %5, align 8
  %25 = call i32 @SECT_OFF_TEXT(%struct.objfile* %24)
  %26 = call i64 @ANOFFSET(i32 %23, i32 %25)
  store i64 %26, i64* %14, align 8
  %27 = load %struct.die_info*, %struct.die_info** %3, align 8
  %28 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %29 = call i8* @dwarf2_linkage_name(%struct.die_info* %27, %struct.dwarf2_cu* %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load %struct.die_info*, %struct.die_info** %3, align 8
  %34 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %35 = call i32 @dwarf2_get_pc_bounds(%struct.die_info* %33, i64* %7, i64* %8, %struct.dwarf2_cu* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %2
  br label %175

38:                                               ; preds = %32
  %39 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %40 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @language_cplus, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.die_info*, %struct.die_info** %3, align 8
  %46 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %47 = call %struct.die_info* @die_specification(%struct.die_info* %45, %struct.dwarf2_cu* %46)
  store %struct.die_info* %47, %struct.die_info** %15, align 8
  %48 = load %struct.die_info*, %struct.die_info** %15, align 8
  %49 = icmp ne %struct.die_info* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.die_info*, %struct.die_info** %15, align 8
  %52 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %53 = call i8* @determine_prefix(%struct.die_info* %51, %struct.dwarf2_cu* %52)
  store i8* %53, i8** %16, align 8
  %54 = load i8*, i8** %16, align 8
  store i8* %54, i8** @processing_current_prefix, align 8
  %55 = load i32, i32* @xfree, align 4
  %56 = load i8*, i8** %16, align 8
  %57 = call %struct.cleanup* @make_cleanup(i32 %55, i8* %56)
  store %struct.cleanup* %57, %struct.cleanup** %13, align 8
  br label %58

58:                                               ; preds = %50, %44
  br label %59

59:                                               ; preds = %58, %38
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %70 = call i32 @add_to_cu_func_list(i8* %66, i64 %67, i64 %68, %struct.dwarf2_cu* %69)
  %71 = load %struct.objfile*, %struct.objfile** %5, align 8
  %72 = getelementptr inbounds %struct.objfile, %struct.objfile* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %59
  %78 = load %struct.objfile*, %struct.objfile** %5, align 8
  %79 = getelementptr inbounds %struct.objfile, %struct.objfile* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.objfile*, %struct.objfile** %5, align 8
  %87 = getelementptr inbounds %struct.objfile, %struct.objfile* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i64 %85, i64* %88, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.objfile*, %struct.objfile** %5, align 8
  %91 = getelementptr inbounds %struct.objfile, %struct.objfile* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i64 %89, i64* %92, align 8
  br label %93

93:                                               ; preds = %84, %77, %59
  %94 = load i64, i64* %7, align 8
  %95 = call %struct.context_stack* @push_context(i32 0, i64 %94)
  store %struct.context_stack* %95, %struct.context_stack** %6, align 8
  %96 = load %struct.die_info*, %struct.die_info** %3, align 8
  %97 = load %struct.die_info*, %struct.die_info** %3, align 8
  %98 = getelementptr inbounds %struct.die_info, %struct.die_info* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %101 = call i32 @new_symbol(%struct.die_info* %96, i32 %99, %struct.dwarf2_cu* %100)
  %102 = load %struct.context_stack*, %struct.context_stack** %6, align 8
  %103 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.die_info*, %struct.die_info** %3, align 8
  %105 = load i32, i32* @DW_AT_frame_base, align 4
  %106 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %107 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %104, i32 %105, %struct.dwarf2_cu* %106)
  store %struct.attribute* %107, %struct.attribute** %10, align 8
  %108 = load %struct.attribute*, %struct.attribute** %10, align 8
  %109 = icmp ne %struct.attribute* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %93
  %111 = load %struct.attribute*, %struct.attribute** %10, align 8
  %112 = load %struct.context_stack*, %struct.context_stack** %6, align 8
  %113 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %116 = call i32 @dwarf2_symbol_mark_computed(%struct.attribute* %111, i32 %114, %struct.dwarf2_cu* %115)
  br label %117

117:                                              ; preds = %110, %93
  %118 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %119 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %118, i32 0, i32 1
  store i32* @local_symbols, i32** %119, align 8
  %120 = load %struct.die_info*, %struct.die_info** %3, align 8
  %121 = getelementptr inbounds %struct.die_info, %struct.die_info* %120, i32 0, i32 1
  %122 = load %struct.die_info*, %struct.die_info** %121, align 8
  %123 = icmp ne %struct.die_info* %122, null
  br i1 %123, label %124, label %145

124:                                              ; preds = %117
  %125 = load %struct.die_info*, %struct.die_info** %3, align 8
  %126 = getelementptr inbounds %struct.die_info, %struct.die_info* %125, i32 0, i32 1
  %127 = load %struct.die_info*, %struct.die_info** %126, align 8
  store %struct.die_info* %127, %struct.die_info** %9, align 8
  br label %128

128:                                              ; preds = %138, %124
  %129 = load %struct.die_info*, %struct.die_info** %9, align 8
  %130 = icmp ne %struct.die_info* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.die_info*, %struct.die_info** %9, align 8
  %133 = getelementptr inbounds %struct.die_info, %struct.die_info* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %131, %128
  %137 = phi i1 [ false, %128 ], [ %135, %131 ]
  br i1 %137, label %138, label %144

138:                                              ; preds = %136
  %139 = load %struct.die_info*, %struct.die_info** %9, align 8
  %140 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %141 = call i32 @process_die(%struct.die_info* %139, %struct.dwarf2_cu* %140)
  %142 = load %struct.die_info*, %struct.die_info** %9, align 8
  %143 = call %struct.die_info* @sibling_die(%struct.die_info* %142)
  store %struct.die_info* %143, %struct.die_info** %9, align 8
  br label %128

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %117
  %146 = call %struct.context_stack* (...) @pop_context()
  store %struct.context_stack* %146, %struct.context_stack** %6, align 8
  %147 = load %struct.context_stack*, %struct.context_stack** %6, align 8
  %148 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.context_stack*, %struct.context_stack** %6, align 8
  %151 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %7, align 8
  %154 = load i64, i64* %8, align 8
  %155 = load %struct.objfile*, %struct.objfile** %5, align 8
  %156 = call i32 @finish_block(i32 %149, i32* @local_symbols, i32 %152, i64 %153, i64 %154, %struct.objfile* %155)
  %157 = load %struct.context_stack*, %struct.context_stack** %6, align 8
  %158 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* @local_symbols, align 4
  %160 = load %struct.context_stack*, %struct.context_stack** %6, align 8
  %161 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* @param_symbols, align 4
  %163 = call i64 (...) @outermost_context_p()
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %145
  %166 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %167 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %166, i32 0, i32 1
  store i32* @file_symbols, i32** %167, align 8
  br label %168

168:                                              ; preds = %165, %145
  %169 = load i8*, i8** %12, align 8
  store i8* %169, i8** @processing_current_prefix, align 8
  %170 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %171 = icmp ne %struct.cleanup* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %174 = call i32 @do_cleanups(%struct.cleanup* %173)
  br label %175

175:                                              ; preds = %37, %172, %168
  ret void
}

declare dso_local i64 @ANOFFSET(i32, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i8* @dwarf2_linkage_name(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @dwarf2_get_pc_bounds(%struct.die_info*, i64*, i64*, %struct.dwarf2_cu*) #1

declare dso_local %struct.die_info* @die_specification(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i8* @determine_prefix(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @add_to_cu_func_list(i8*, i64, i64, %struct.dwarf2_cu*) #1

declare dso_local %struct.context_stack* @push_context(i32, i64) #1

declare dso_local i32 @new_symbol(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

declare dso_local %struct.attribute* @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

declare dso_local i32 @dwarf2_symbol_mark_computed(%struct.attribute*, i32, %struct.dwarf2_cu*) #1

declare dso_local i32 @process_die(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local %struct.die_info* @sibling_die(%struct.die_info*) #1

declare dso_local %struct.context_stack* @pop_context(...) #1

declare dso_local i32 @finish_block(i32, i32*, i32, i64, i64, %struct.objfile*) #1

declare dso_local i64 @outermost_context_p(...) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
