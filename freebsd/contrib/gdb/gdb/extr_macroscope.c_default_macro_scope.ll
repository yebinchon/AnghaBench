; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroscope.c_default_macro_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroscope.c_default_macro_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_scope = type { i32 }
%struct.symtab_and_line = type { i32, i32 }
%struct.macro_source_file = type { i32 }

@deprecated_selected_frame = common dso_local global i64 0, align 8
@target_has_registers = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.macro_scope* @default_macro_scope() #0 {
  %1 = alloca %struct.symtab_and_line, align 4
  %2 = alloca %struct.macro_source_file*, align 8
  %3 = alloca %struct.macro_scope*, align 8
  %4 = alloca %struct.symtab_and_line, align 4
  %5 = alloca %struct.symtab_and_line, align 4
  %6 = alloca %struct.symtab_and_line, align 4
  %7 = load i64, i64* @deprecated_selected_frame, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = load i64, i64* @deprecated_selected_frame, align 8
  %11 = call i32 @get_frame_pc(i64 %10)
  %12 = call i64 @find_pc_line(i32 %11, i32 0)
  %13 = bitcast %struct.symtab_and_line* %4 to i64*
  store i64 %12, i64* %13, align 4
  %14 = bitcast %struct.symtab_and_line* %1 to i8*
  %15 = bitcast %struct.symtab_and_line* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 8, i1 false)
  br label %35

16:                                               ; preds = %0
  %17 = load i64, i64* @target_has_registers, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = call i32 (...) @read_pc()
  %21 = call i64 @find_pc_line(i32 %20, i32 0)
  %22 = bitcast %struct.symtab_and_line* %5 to i64*
  store i64 %21, i64* %22, align 4
  %23 = bitcast %struct.symtab_and_line* %1 to i8*
  %24 = bitcast %struct.symtab_and_line* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 8, i1 false)
  br label %34

25:                                               ; preds = %16
  %26 = call i64 (...) @get_current_source_symtab_and_line()
  %27 = bitcast %struct.symtab_and_line* %6 to i64*
  store i64 %26, i64* %27, align 4
  %28 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %1, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %1, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %25, %19
  br label %35

35:                                               ; preds = %34, %9
  %36 = bitcast %struct.symtab_and_line* %1 to i64*
  %37 = load i64, i64* %36, align 4
  %38 = call %struct.macro_scope* @sal_macro_scope(i64 %37)
  ret %struct.macro_scope* %38
}

declare dso_local i64 @find_pc_line(i32, i32) #1

declare dso_local i32 @get_frame_pc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @read_pc(...) #1

declare dso_local i64 @get_current_source_symtab_and_line(...) #1

declare dso_local %struct.macro_scope* @sal_macro_scope(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
