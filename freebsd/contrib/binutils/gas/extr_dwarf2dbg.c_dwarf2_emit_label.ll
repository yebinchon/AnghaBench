; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_dwarf2_emit_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_dwarf2_emit_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_line_info = type { i32 }

@dwarf2_loc_mark_labels = common dso_local global i32 0, align 4
@now_seg = common dso_local global i64 0, align 8
@stdoutput = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@debug_type = common dso_local global i64 0, align 8
@DEBUG_DWARF2 = common dso_local global i64 0, align 8
@current = common dso_local global %struct.dwarf2_line_info zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4
@loc_directive_seen = common dso_local global i32 0, align 4
@DWARF2_FLAG_BASIC_BLOCK = common dso_local global i32 0, align 4
@DWARF2_FLAG_PROLOGUE_END = common dso_local global i32 0, align 4
@DWARF2_FLAG_EPILOGUE_BEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwarf2_emit_label(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.dwarf2_line_info, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @dwarf2_loc_mark_labels, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %45

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @S_GET_SEGMENT(i32* %8)
  %10 = load i64, i64* @now_seg, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %45

13:                                               ; preds = %7
  %14 = load i32, i32* @stdoutput, align 4
  %15 = load i64, i64* @now_seg, align 8
  %16 = call i32 @bfd_get_section_flags(i32 %14, i64 %15)
  %17 = load i32, i32* @SEC_CODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %45

21:                                               ; preds = %13
  %22 = load i64, i64* @debug_type, align 8
  %23 = load i64, i64* @DEBUG_DWARF2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @dwarf2_where(%struct.dwarf2_line_info* %3)
  br label %30

27:                                               ; preds = %21
  %28 = bitcast %struct.dwarf2_line_info* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.dwarf2_line_info* @current to i8*), i64 4, i1 false)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* @loc_directive_seen, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* @DWARF2_FLAG_BASIC_BLOCK, align 4
  %32 = getelementptr inbounds %struct.dwarf2_line_info, %struct.dwarf2_line_info* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @DWARF2_FLAG_BASIC_BLOCK, align 4
  %36 = load i32, i32* @DWARF2_FLAG_PROLOGUE_END, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @DWARF2_FLAG_EPILOGUE_BEGIN, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* getelementptr inbounds (%struct.dwarf2_line_info, %struct.dwarf2_line_info* @current, i32 0, i32 0), align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* getelementptr inbounds (%struct.dwarf2_line_info, %struct.dwarf2_line_info* @current, i32 0, i32 0), align 4
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @dwarf2_gen_line_info_1(i32* %43, %struct.dwarf2_line_info* %3)
  br label %45

45:                                               ; preds = %30, %20, %12, %6
  ret void
}

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local i32 @bfd_get_section_flags(i32, i64) #1

declare dso_local i32 @dwarf2_where(%struct.dwarf2_line_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dwarf2_gen_line_info_1(i32*, %struct.dwarf2_line_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
