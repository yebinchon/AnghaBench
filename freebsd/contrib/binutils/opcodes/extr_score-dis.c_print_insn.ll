; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_score-dis.c_print_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_score-dis.c_print_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i32, i32 (i32, i32*, i32, %struct.disassemble_info*)*, i32 (i32, i32, %struct.disassemble_info*)*, i32 }

@FALSE = common dso_local global i64 0, align 8
@BFD_ENDIAN_LITTLE = common dso_local global i32 0, align 4
@BFD_ENDIAN_BIG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.disassemble_info*, i64)* @print_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_insn(i32 %0, %struct.disassemble_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.disassemble_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.disassemble_info* %1, %struct.disassemble_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @BFD_ENDIAN_LITTLE, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @BFD_ENDIAN_BIG, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %26 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %32 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %31, i32 0, i32 0
  store i32 2, i32* %32, align 8
  %33 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %34 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %33, i32 0, i32 1
  %35 = load i32 (i32, i32*, i32, %struct.disassemble_info*)*, i32 (i32, i32*, i32, %struct.disassemble_info*)** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %40 = call i32 %35(i32 %36, i32* %38, i32 2, %struct.disassemble_info* %39)
  store i32 %40, i32* %11, align 4
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  store i8 0, i8* %42, align 1
  %43 = load i64, i64* @TRUE, align 8
  store i64 %43, i64* %13, align 8
  br label %72

44:                                               ; preds = %23
  %45 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %46 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %45, i32 0, i32 0
  store i32 4, i32* %46, align 8
  %47 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %48 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %47, i32 0, i32 1
  %49 = load i32 (i32, i32*, i32, %struct.disassemble_info*)*, i32 (i32, i32*, i32, %struct.disassemble_info*)** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %54 = call i32 %49(i32 %50, i32* %52, i32 4, %struct.disassemble_info* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %44
  %58 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %59 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %58, i32 0, i32 0
  store i32 2, i32* %59, align 8
  %60 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %61 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %60, i32 0, i32 1
  %62 = load i32 (i32, i32*, i32, %struct.disassemble_info*)*, i32 (i32, i32*, i32, %struct.disassemble_info*)** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %67 = call i32 %62(i32 %63, i32* %65, i32 2, %struct.disassemble_info* %66)
  store i32 %67, i32* %11, align 4
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  store i8 0, i8* %68, align 1
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  store i8 0, i8* %69, align 1
  %70 = load i64, i64* @TRUE, align 8
  store i64 %70, i64* %13, align 8
  br label %71

71:                                               ; preds = %57, %44
  br label %72

72:                                               ; preds = %71, %30
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %77 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %76, i32 0, i32 2
  %78 = load i32 (i32, i32, %struct.disassemble_info*)*, i32 (i32, i32, %struct.disassemble_info*)** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %82 = call i32 %78(i32 %79, i32 %80, %struct.disassemble_info* %81)
  store i32 -1, i32* %4, align 4
  br label %212

83:                                               ; preds = %72
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 8
  %94 = or i32 %89, %93
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 16
  %99 = or i32 %94, %98
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl i32 %102, 24
  %104 = or i32 %99, %103
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %9, align 8
  br label %126

106:                                              ; preds = %83
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl i32 %109, 24
  %111 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl i32 %113, 16
  %115 = or i32 %110, %114
  %116 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl i32 %118, 8
  %120 = or i32 %115, %119
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %120, %123
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %9, align 8
  br label %126

126:                                              ; preds = %106, %86
  %127 = load i64, i64* %9, align 8
  %128 = and i64 %127, 2147516416
  %129 = icmp eq i64 %128, 2147516416
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i64, i64* @FALSE, align 8
  store i64 %131, i64* %12, align 8
  %132 = load i64, i64* @FALSE, align 8
  store i64 %132, i64* %13, align 8
  br label %142

133:                                              ; preds = %126
  %134 = load i64, i64* %9, align 8
  %135 = and i64 %134, 32768
  %136 = icmp eq i64 %135, 32768
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i64, i64* @TRUE, align 8
  store i64 %138, i64* %12, align 8
  br label %141

139:                                              ; preds = %133
  %140 = load i64, i64* @TRUE, align 8
  store i64 %140, i64* %13, align 8
  br label %141

141:                                              ; preds = %139, %137
  br label %142

142:                                              ; preds = %141, %130
  %143 = load i64, i64* %13, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %173

145:                                              ; preds = %142
  %146 = load i64, i64* %7, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = shl i32 %154, 8
  %156 = or i32 %151, %155
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %9, align 8
  br label %168

158:                                              ; preds = %145
  %159 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = shl i32 %161, 8
  %163 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %162, %165
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %9, align 8
  br label %168

168:                                              ; preds = %158, %148
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %171 = load i64, i64* %9, align 8
  %172 = call i32 @print_insn_score16(i32 %169, %struct.disassemble_info* %170, i64 %171)
  store i32 %172, i32* %11, align 4
  br label %210

173:                                              ; preds = %142
  %174 = load i64, i64* %12, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %173
  %177 = load i64, i64* %9, align 8
  %178 = and i64 %177, 65535
  store i64 %178, i64* %14, align 8
  %179 = load i64, i64* %9, align 8
  %180 = and i64 %179, 4294901760
  %181 = ashr i64 %180, 16
  store i64 %181, i64* %9, align 8
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %184 = load i64, i64* %9, align 8
  %185 = call i32 @print_insn_score16(i32 %182, %struct.disassemble_info* %183, i64 %184)
  store i32 %185, i32* %11, align 4
  %186 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %187 = call i32 @print_insn_parallel_sym(%struct.disassemble_info* %186)
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %190 = load i64, i64* %14, align 8
  %191 = call i32 @print_insn_score16(i32 %188, %struct.disassemble_info* %189, i64 %190)
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %11, align 4
  %194 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %195 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %194, i32 0, i32 0
  store i32 4, i32* %195, align 8
  br label %209

196:                                              ; preds = %173
  %197 = load i64, i64* %9, align 8
  %198 = and i64 %197, 32767
  store i64 %198, i64* %10, align 8
  %199 = load i64, i64* %9, align 8
  %200 = and i64 %199, 2147418112
  %201 = ashr i64 %200, 1
  %202 = load i64, i64* %10, align 8
  %203 = or i64 %202, %201
  store i64 %203, i64* %10, align 8
  %204 = load i64, i64* %10, align 8
  store i64 %204, i64* %9, align 8
  %205 = load i32, i32* %5, align 4
  %206 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %207 = load i64, i64* %9, align 8
  %208 = call i32 @print_insn_score32(i32 %205, %struct.disassemble_info* %206, i64 %207)
  store i32 %208, i32* %11, align 4
  br label %209

209:                                              ; preds = %196, %176
  br label %210

210:                                              ; preds = %209, %168
  %211 = load i32, i32* %11, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %210, %75
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @print_insn_score16(i32, %struct.disassemble_info*, i64) #1

declare dso_local i32 @print_insn_parallel_sym(%struct.disassemble_info*) #1

declare dso_local i32 @print_insn_score32(i32, %struct.disassemble_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
