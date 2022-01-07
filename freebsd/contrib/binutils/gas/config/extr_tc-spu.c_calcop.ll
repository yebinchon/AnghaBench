; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-spu.c_calcop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-spu.c_calcop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_opcode = type { i32* }
%struct.spu_insn = type { i32 }

@syntax_error_arg = common dso_local global i32 0, align 4
@A_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_opcode*, i8*, %struct.spu_insn*)* @calcop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calcop(%struct.spu_opcode* %0, i8* %1, %struct.spu_insn* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spu_opcode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.spu_insn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spu_opcode* %0, %struct.spu_opcode** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.spu_insn* %2, %struct.spu_insn** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %11

11:                                               ; preds = %152, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.spu_opcode*, %struct.spu_opcode** %5, align 8
  %14 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %12, %17
  br i1 %18, label %19, label %155

19:                                               ; preds = %11
  %20 = load %struct.spu_opcode*, %struct.spu_opcode** %5, align 8
  %21 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* @syntax_error_arg, align 4
  br label %28

28:                                               ; preds = %33, %19
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @ISSPACE(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  br label %28

36:                                               ; preds = %28
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %36
  store i32 0, i32* %4, align 4
  br label %182

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @A_P, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.spu_insn*, %struct.spu_insn** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i8* @get_reg(i8* %52, %struct.spu_insn* %53, i32 %54, i32 1)
  store i8* %55, i8** %6, align 8
  br label %81

56:                                               ; preds = %47
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @A_P, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.spu_insn*, %struct.spu_insn** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i8* @get_imm(i8* %61, %struct.spu_insn* %62, i32 %63)
  store i8* %64, i8** %6, align 8
  br label %80

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @A_P, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  %74 = load i8, i8* %72, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 40, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %182

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %65
  br label %80

80:                                               ; preds = %79, %60
  br label %81

81:                                               ; preds = %80, %51
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %182

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %91, %85
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call i64 @ISSPACE(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  br label %86

94:                                               ; preds = %86
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @A_P, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %9, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  %106 = load i8, i8* %104, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 41, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %182

110:                                              ; preds = %101
  br label %151

111:                                              ; preds = %98, %94
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.spu_opcode*, %struct.spu_opcode** %5, align 8
  %114 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %112, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %111
  %120 = load %struct.spu_opcode*, %struct.spu_opcode** %5, align 8
  %121 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @A_P, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %150

129:                                              ; preds = %119
  %130 = load %struct.spu_opcode*, %struct.spu_opcode** %5, align 8
  %131 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @A_P, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %129
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %6, align 8
  %143 = load i8, i8* %141, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 44, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, i32* @syntax_error_arg, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* @syntax_error_arg, align 4
  store i32 0, i32* %4, align 4
  br label %182

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %129, %119, %111
  br label %151

151:                                              ; preds = %150, %110
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %11

155:                                              ; preds = %11
  br label %156

156:                                              ; preds = %161, %155
  %157 = load i8*, i8** %6, align 8
  %158 = load i8, i8* %157, align 1
  %159 = call i64 @ISSPACE(i8 signext %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i8*, i8** %6, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %6, align 8
  br label %156

164:                                              ; preds = %156
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %164
  %168 = load i8*, i8** %6, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load i8*, i8** %6, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 10
  br label %177

177:                                              ; preds = %172, %167
  %178 = phi i1 [ true, %167 ], [ %176, %172 ]
  br label %179

179:                                              ; preds = %177, %164
  %180 = phi i1 [ false, %164 ], [ %178, %177 ]
  %181 = zext i1 %180 to i32
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %179, %146, %109, %84, %77, %46
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i8* @get_reg(i8*, %struct.spu_insn*, i32, i32) #1

declare dso_local i8* @get_imm(i8*, %struct.spu_insn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
