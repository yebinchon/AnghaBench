; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_output_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_output_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, %struct.TYPE_6__*, %struct.TYPE_5__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32* }
%struct.TYPE_5__ = type { i8 }

@flag_code = common dso_local global i64 0, align 8
@CODE_16BIT = common dso_local global i64 0, align 8
@CODE16 = common dso_local global i32 0, align 4
@i = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@DATA_PREFIX = common dso_local global i64 0, align 8
@SEG_PREFIX = common dso_local global i64 0, align 8
@CS_PREFIX_OPCODE = common dso_local global i32 0, align 4
@DS_PREFIX_OPCODE = common dso_local global i32 0, align 4
@REX_PREFIX = common dso_local global i64 0, align 8
@intel_syntax = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"skipping prefixes on this instruction\00", align 1
@DATA_PREFIX_OPCODE = common dso_local global i32 0, align 4
@JUMP_PC_RELATIVE = common dso_local global i8 0, align 1
@UNCOND_JUMP = common dso_local global i32 0, align 4
@SMALL = common dso_local global i32 0, align 4
@cpu_arch_flags = common dso_local global i32 0, align 4
@Cpu386 = common dso_local global i32 0, align 4
@COND_JUMP = common dso_local global i32 0, align 4
@COND_JUMP86 = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8
@O_symbol = common dso_local global i64 0, align 8
@rs_machine_dependent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_branch() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %7 = load i64, i64* @flag_code, align 8
  %8 = load i64, i64* @CODE_16BIT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @CODE16, align 4
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %10, %0
  store i32 0, i32* %3, align 4
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %14 = load i64, i64* @DATA_PREFIX, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %20 = sub nsw i64 %19, 1
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %21 = load i32, i32* @CODE16, align 4
  %22 = load i32, i32* %2, align 4
  %23 = xor i32 %22, %21
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %26 = load i64, i64* @SEG_PREFIX, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CS_PREFIX_OPCODE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %33 = load i64, i64* @SEG_PREFIX, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DS_PREFIX_OPCODE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31, %24
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  br label %43

43:                                               ; preds = %38, %31
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %45 = load i64, i64* @REX_PREFIX, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @intel_syntax, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @as_warn(i32 %61)
  br label %63

63:                                               ; preds = %60, %57, %54
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 2
  %66 = add nsw i32 %65, 4
  %67 = call i32 @frag_grow(i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i8* @frag_more(i32 %69)
  store i8* %70, i8** %1, align 8
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %72 = load i64, i64* @DATA_PREFIX, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load i32, i32* @DATA_PREFIX_OPCODE, align 4
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %1, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %1, align 8
  store i8 %78, i8* %79, align 1
  br label %81

81:                                               ; preds = %76, %63
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %83 = load i64, i64* @SEG_PREFIX, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CS_PREFIX_OPCODE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %90 = load i64, i64* @SEG_PREFIX, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @DS_PREFIX_OPCODE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %88, %81
  %96 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %97 = load i64, i64* @SEG_PREFIX, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %1, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %1, align 8
  store i8 %100, i8* %101, align 1
  br label %103

103:                                              ; preds = %95, %88
  %104 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %105 = load i64, i64* @REX_PREFIX, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %111 = load i64, i64* @REX_PREFIX, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %1, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %1, align 8
  store i8 %114, i8* %115, align 1
  br label %117

117:                                              ; preds = %109, %103
  %118 = load i8, i8* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %119 = load i8*, i8** %1, align 8
  store i8 %118, i8* %119, align 1
  %120 = load i8*, i8** %1, align 8
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8, i8* @JUMP_PC_RELATIVE, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load i32, i32* @UNCOND_JUMP, align 4
  %128 = load i32, i32* @SMALL, align 4
  %129 = call i32 @ENCODE_RELAX_STATE(i32 %127, i32 %128)
  store i32 %129, i32* %4, align 4
  br label %144

130:                                              ; preds = %117
  %131 = load i32, i32* @cpu_arch_flags, align 4
  %132 = load i32, i32* @Cpu386, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* @COND_JUMP, align 4
  %137 = load i32, i32* @SMALL, align 4
  %138 = call i32 @ENCODE_RELAX_STATE(i32 %136, i32 %137)
  store i32 %138, i32* %4, align 4
  br label %143

139:                                              ; preds = %130
  %140 = load i32, i32* @COND_JUMP86, align 4
  %141 = load i32, i32* @SMALL, align 4
  %142 = call i32 @ENCODE_RELAX_STATE(i32 %140, i32 %141)
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %139, %135
  br label %144

144:                                              ; preds = %143, %126
  %145 = load i32, i32* %2, align 4
  %146 = load i32, i32* %4, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %4, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 2), align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  store i32* %153, i32** %5, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 2), align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %6, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 2), align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @O_constant, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %144
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 2), align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @O_symbol, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %168
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 2), align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = call i32* @make_expr_symbol(%struct.TYPE_7__* %181)
  store i32* %182, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %183

183:                                              ; preds = %177, %168, %144
  %184 = load i32, i32* @rs_machine_dependent, align 4
  %185 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %4, align 4
  %189 = load i32*, i32** %5, align 8
  %190 = load i64, i64* %6, align 8
  %191 = load i8*, i8** %1, align 8
  %192 = call i32 @frag_var(i32 %184, i32 5, i32 %187, i32 %188, i32* %189, i64 %190, i8* %191)
  ret void
}

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @frag_grow(i32) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @ENCODE_RELAX_STATE(i32, i32) #1

declare dso_local i32* @make_expr_symbol(%struct.TYPE_7__*) #1

declare dso_local i32 @frag_var(i32, i32, i32, i32, i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
