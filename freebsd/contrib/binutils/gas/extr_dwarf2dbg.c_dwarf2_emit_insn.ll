; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_dwarf2_emit_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_dwarf2_emit_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_line_info = type { i32 }

@loc_directive_seen = common dso_local global i64 0, align 8
@current = common dso_local global %struct.dwarf2_line_info zeroinitializer, align 4
@debug_type = common dso_local global i64 0, align 8
@DEBUG_DWARF2 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@DWARF2_FLAG_BASIC_BLOCK = common dso_local global i32 0, align 4
@DWARF2_FLAG_PROLOGUE_END = common dso_local global i32 0, align 4
@DWARF2_FLAG_EPILOGUE_BEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwarf2_emit_insn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwarf2_line_info, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @loc_directive_seen, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = bitcast %struct.dwarf2_line_info* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.dwarf2_line_info* @current to i8*), i64 4, i1 false)
  %8 = load i64, i64* @debug_type, align 8
  %9 = load i64, i64* @DEBUG_DWARF2, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* @loc_directive_seen, align 8
  br label %13

13:                                               ; preds = %11, %6
  br label %22

14:                                               ; preds = %1
  %15 = load i64, i64* @debug_type, align 8
  %16 = load i64, i64* @DEBUG_DWARF2, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %36

19:                                               ; preds = %14
  %20 = call i32 @dwarf2_where(%struct.dwarf2_line_info* %3)
  br label %21

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21, %13
  %23 = call i64 (...) @frag_now_fix()
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %23, %25
  %27 = call i32 @dwarf2_gen_line_info(i64 %26, %struct.dwarf2_line_info* %3)
  %28 = load i32, i32* @DWARF2_FLAG_BASIC_BLOCK, align 4
  %29 = load i32, i32* @DWARF2_FLAG_PROLOGUE_END, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DWARF2_FLAG_EPILOGUE_BEGIN, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* getelementptr inbounds (%struct.dwarf2_line_info, %struct.dwarf2_line_info* @current, i32 0, i32 0), align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* getelementptr inbounds (%struct.dwarf2_line_info, %struct.dwarf2_line_info* @current, i32 0, i32 0), align 4
  br label %36

36:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dwarf2_where(%struct.dwarf2_line_info*) #2

declare dso_local i32 @dwarf2_gen_line_info(i64, %struct.dwarf2_line_info*) #2

declare dso_local i64 @frag_now_fix(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
