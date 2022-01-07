; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_emit_inc_line_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_emit_inc_line_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@MAX_SPECIAL_ADDR_DELTA = common dso_local global i32 0, align 4
@DW_LNS_const_add_pc = common dso_local global i8* null, align 8
@DW_LNS_advance_pc = common dso_local global i8* null, align 8
@DW_LNS_extended_op = common dso_local global i32 0, align 4
@DW_LNE_end_sequence = common dso_local global i32 0, align 4
@DWARF2_LINE_BASE = common dso_local global i32 0, align 4
@DWARF2_LINE_RANGE = common dso_local global i32 0, align 4
@DW_LNS_advance_line = common dso_local global i32 0, align 4
@DW_LNS_copy = common dso_local global i8* null, align 8
@DWARF2_LINE_OPCODE_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @emit_inc_line_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_inc_line_addr(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %12, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp sge i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = call i32 @scale_addr_delta(i32* %6)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @INT_MAX, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MAX_SPECIAL_ADDR_DELTA, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8*, i8** @DW_LNS_const_add_pc, align 8
  %32 = ptrtoint i8* %31 to i8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  store i8 %32, i8* %33, align 1
  br label %46

35:                                               ; preds = %26
  %36 = load i8*, i8** @DW_LNS_advance_pc, align 8
  %37 = ptrtoint i8* %36 to i8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  store i8 %37, i8* %38, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @output_leb128(i8* %40, i32 %41, i32 0)
  %43 = load i8*, i8** %7, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %7, align 8
  br label %46

46:                                               ; preds = %35, %30
  %47 = load i32, i32* @DW_LNS_extended_op, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  store i8 %48, i8* %49, align 1
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  store i8 1, i8* %51, align 1
  %53 = load i32, i32* @DW_LNE_end_sequence, align 4
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  store i8 %54, i8* %55, align 1
  br label %155

57:                                               ; preds = %4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @DWARF2_LINE_BASE, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @DWARF2_LINE_RANGE, align 4
  %63 = icmp uge i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load i32, i32* @DW_LNS_advance_line, align 4
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @output_leb128(i8* %69, i32 %70, i32 1)
  %72 = load i8*, i8** %7, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %7, align 8
  store i32 0, i32* %5, align 4
  %75 = load i32, i32* @DWARF2_LINE_BASE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %64, %57
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i8*, i8** @DW_LNS_copy, align 8
  %85 = ptrtoint i8* %84 to i8
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %7, align 8
  store i8 %85, i8* %86, align 1
  br label %155

88:                                               ; preds = %80, %77
  %89 = load i64, i64* @DWARF2_LINE_OPCODE_BASE, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @MAX_SPECIAL_ADDR_DELTA, align 4
  %96 = add nsw i32 256, %95
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %131

98:                                               ; preds = %88
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @DWARF2_LINE_RANGE, align 4
  %102 = mul i32 %100, %101
  %103 = add i32 %99, %102
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ule i32 %104, 255
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load i32, i32* %10, align 4
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %7, align 8
  store i8 %108, i8* %109, align 1
  br label %155

111:                                              ; preds = %98
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @MAX_SPECIAL_ADDR_DELTA, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32, i32* @DWARF2_LINE_RANGE, align 4
  %117 = mul i32 %115, %116
  %118 = add i32 %112, %117
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ule i32 %119, 255
  br i1 %120, label %121, label %130

121:                                              ; preds = %111
  %122 = load i8*, i8** @DW_LNS_const_add_pc, align 8
  %123 = ptrtoint i8* %122 to i8
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %7, align 8
  store i8 %123, i8* %124, align 1
  %126 = load i32, i32* %10, align 4
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %7, align 8
  store i8 %127, i8* %128, align 1
  br label %155

130:                                              ; preds = %111
  br label %131

131:                                              ; preds = %130, %88
  %132 = load i8*, i8** @DW_LNS_advance_pc, align 8
  %133 = ptrtoint i8* %132 to i8
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %7, align 8
  store i8 %133, i8* %134, align 1
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @output_leb128(i8* %136, i32 %137, i32 0)
  %139 = load i8*, i8** %7, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %7, align 8
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %131
  %145 = load i8*, i8** @DW_LNS_copy, align 8
  %146 = ptrtoint i8* %145 to i8
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %7, align 8
  store i8 %146, i8* %147, align 1
  br label %154

149:                                              ; preds = %131
  %150 = load i32, i32* %9, align 4
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %7, align 8
  store i8 %151, i8* %152, align 1
  br label %154

154:                                              ; preds = %149, %144
  br label %155

155:                                              ; preds = %154, %121, %106, %83, %46
  %156 = load i8*, i8** %7, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = icmp eq i8* %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @scale_addr_delta(i32*) #1

declare dso_local i32 @output_leb128(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
