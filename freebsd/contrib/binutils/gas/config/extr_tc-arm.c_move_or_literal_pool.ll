; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_move_or_literal_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_move_or_literal_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__*, i8* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@inst = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@THUMB2_LOAD_BIT = common dso_local global i64 0, align 8
@THUMB_LOAD_BIT = common dso_local global i64 0, align 8
@LOAD_BIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"invalid pseudo operation\00", align 1
@O_constant = common dso_local global i64 0, align 8
@O_symbol = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"constant expression expected\00", align 1
@unified_syntax = common dso_local global i32 0, align 4
@T_OPCODE_MOV_I8 = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@LITERAL_MASK = common dso_local global i32 0, align 4
@INST_IMMEDIATE = common dso_local global i32 0, align 4
@OPCODE_MOV = common dso_local global i32 0, align 4
@DATA_OP_SHIFT = common dso_local global i32 0, align 4
@OPCODE_MVN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"literal pool insertion failed\00", align 1
@REG_PC = common dso_local global i32 0, align 4
@BFD_RELOC_ARM_THUMB_OFFSET = common dso_local global i32 0, align 4
@BFD_RELOC_ARM_HWLITERAL = common dso_local global i32 0, align 4
@BFD_RELOC_ARM_LITERAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @move_or_literal_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_or_literal_pool(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %14 = icmp sgt i32 %13, 65535
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i64, i64* @THUMB2_LOAD_BIT, align 8
  br label %19

17:                                               ; preds = %12
  %18 = load i64, i64* @THUMB_LOAD_BIT, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  store i64 %20, i64* %8, align 8
  br label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @LOAD_BIT, align 8
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %8, align 8
  %27 = and i64 %25, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  store i32 1, i32* %4, align 4
  br label %146

31:                                               ; preds = %23
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 2, i32 0), align 8
  %33 = load i64, i64* @O_constant, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 2, i32 0), align 8
  %37 = load i64, i64* @O_symbol, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  store i32 1, i32* %4, align 4
  br label %146

41:                                               ; preds = %35, %31
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 2, i32 0), align 8
  %43 = load i64, i64* @O_constant, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %114

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load i32, i32* @unified_syntax, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 2, i32 1), align 8
  %53 = and i32 %52, -256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32, i32* @T_OPCODE_MOV_I8, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %56, %63
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 2, i32 1), align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %67 = or i32 %66, %65
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  store i32 1, i32* %4, align 4
  br label %146

68:                                               ; preds = %51, %48
  br label %113

69:                                               ; preds = %45
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 2, i32 1), align 8
  %71 = call i32 @encode_arm_immediate(i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @FAIL, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load i32, i32* @LITERAL_MASK, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %78 = and i32 %77, %76
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %79 = load i32, i32* @INST_IMMEDIATE, align 4
  %80 = load i32, i32* @OPCODE_MOV, align 4
  %81 = load i32, i32* @DATA_OP_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %79, %82
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %85 = or i32 %84, %83
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 4095
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %89 = or i32 %88, %87
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  store i32 1, i32* %4, align 4
  br label %146

90:                                               ; preds = %69
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 2, i32 1), align 8
  %92 = xor i32 %91, -1
  %93 = call i32 @encode_arm_immediate(i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @FAIL, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %90
  %98 = load i32, i32* @LITERAL_MASK, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %100 = and i32 %99, %98
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %101 = load i32, i32* @INST_IMMEDIATE, align 4
  %102 = load i32, i32* @OPCODE_MVN, align 4
  %103 = load i32, i32* @DATA_OP_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = or i32 %101, %104
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %107 = or i32 %106, %105
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, 4095
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %111 = or i32 %110, %109
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  store i32 1, i32* %4, align 4
  br label %146

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112, %68
  br label %114

114:                                              ; preds = %113, %41
  %115 = call i32 (...) @add_to_lit_pool()
  %116 = load i32, i32* @FAIL, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i8* %119, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  store i32 1, i32* %4, align 4
  br label %146

120:                                              ; preds = %114
  %121 = load i32, i32* @REG_PC, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  store i32 1, i32* %130, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 0), align 8
  %131 = load i64, i64* %6, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %120
  %134 = load i32, i32* @BFD_RELOC_ARM_THUMB_OFFSET, align 4
  br label %144

135:                                              ; preds = %120
  %136 = load i64, i64* %7, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @BFD_RELOC_ARM_HWLITERAL, align 4
  br label %142

140:                                              ; preds = %135
  %141 = load i32, i32* @BFD_RELOC_ARM_LITERAL, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  br label %144

144:                                              ; preds = %142, %133
  %145 = phi i32 [ %134, %133 ], [ %143, %142 ]
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 1), align 4
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %118, %97, %75, %55, %39, %29
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @encode_arm_immediate(i32) #1

declare dso_local i32 @add_to_lit_pool(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
