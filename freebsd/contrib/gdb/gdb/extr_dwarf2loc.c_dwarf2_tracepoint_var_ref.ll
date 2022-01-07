; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_dwarf2_tracepoint_var_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_dwarf2_tracepoint_var_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.agent_expr = type { i32 }
%struct.axs_value = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }

@.str = private unnamed_addr constant [36 x i8] c"Symbol \22%s\22 has been optimized out.\00", align 1
@DW_OP_reg0 = common dso_local global i8 0, align 1
@DW_OP_reg31 = common dso_local global i8 0, align 1
@axs_lvalue_register = common dso_local global i8* null, align 8
@DW_OP_regx = common dso_local global i8 0, align 1
@DW_OP_fbreg = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Unexpected opcode after DW_OP_fbreg for symbol \22%s\22.\00", align 1
@aop_add = common dso_local global i32 0, align 4
@axs_lvalue_memory = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"Unsupported DWARF opcode in the location of \22%s\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*, %struct.agent_expr*, %struct.axs_value*, i8*, i32)* @dwarf2_tracepoint_var_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_tracepoint_var_ref(%struct.symbol* %0, %struct.agent_expr* %1, %struct.axs_value* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.agent_expr*, align 8
  %8 = alloca %struct.axs_value*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.symbol* %0, %struct.symbol** %6, align 8
  store %struct.agent_expr* %1, %struct.agent_expr** %7, align 8
  store %struct.axs_value* %2, %struct.axs_value** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load %struct.symbol*, %struct.symbol** %6, align 8
  %19 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %18)
  %20 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @DW_OP_reg0, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sge i32 %28, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %24
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @DW_OP_reg31, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sle i32 %36, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %32
  %41 = load i8*, i8** @axs_lvalue_register, align 8
  %42 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %43 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @DW_OP_reg0, align 1
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 %47, %49
  %51 = trunc i32 %50 to i8
  %52 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %53 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8 %51, i8* %54, align 8
  br label %133

55:                                               ; preds = %32, %24, %21
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* @DW_OP_regx, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %55
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = call i32 @read_uleb128(i8* %65, i8* %69, i8* %11)
  %71 = load i8*, i8** @axs_lvalue_register, align 8
  %72 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %73 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i8, i8* %11, align 1
  %75 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %76 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i8 %74, i8* %77, align 8
  br label %132

78:                                               ; preds = %55
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* @DW_OP_fbreg, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %127

86:                                               ; preds = %78
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = call i8* @read_sleb128(i8* %88, i8* %92, i32* %13)
  store i8* %93, i8** %14, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = icmp ne i8* %94, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %86
  %101 = load %struct.symbol*, %struct.symbol** %6, align 8
  %102 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %101)
  %103 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %100, %86
  %105 = load %struct.agent_expr*, %struct.agent_expr** %7, align 8
  %106 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @TARGET_VIRTUAL_FRAME_POINTER(i32 %107, i32* %12, i32* %13)
  %109 = load %struct.agent_expr*, %struct.agent_expr** %7, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @ax_reg(%struct.agent_expr* %109, i32 %110)
  %112 = load %struct.agent_expr*, %struct.agent_expr** %7, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @ax_const_l(%struct.agent_expr* %112, i32 %113)
  %115 = load %struct.agent_expr*, %struct.agent_expr** %7, align 8
  %116 = load i32, i32* @aop_add, align 4
  %117 = call i32 @ax_simple(%struct.agent_expr* %115, i32 %116)
  %118 = load %struct.agent_expr*, %struct.agent_expr** %7, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @ax_const_l(%struct.agent_expr* %118, i32 %119)
  %121 = load %struct.agent_expr*, %struct.agent_expr** %7, align 8
  %122 = load i32, i32* @aop_add, align 4
  %123 = call i32 @ax_simple(%struct.agent_expr* %121, i32 %122)
  %124 = load i8*, i8** @axs_lvalue_memory, align 8
  %125 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %126 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %131

127:                                              ; preds = %78
  %128 = load %struct.symbol*, %struct.symbol** %6, align 8
  %129 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %128)
  %130 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %127, %104
  br label %132

132:                                              ; preds = %131, %63
  br label %133

133:                                              ; preds = %132, %40
  ret void
}

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @SYMBOL_PRINT_NAME(%struct.symbol*) #1

declare dso_local i32 @read_uleb128(i8*, i8*, i8*) #1

declare dso_local i8* @read_sleb128(i8*, i8*, i32*) #1

declare dso_local i32 @TARGET_VIRTUAL_FRAME_POINTER(i32, i32*, i32*) #1

declare dso_local i32 @ax_reg(%struct.agent_expr*, i32) #1

declare dso_local i32 @ax_const_l(%struct.agent_expr*, i32) #1

declare dso_local i32 @ax_simple(%struct.agent_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
