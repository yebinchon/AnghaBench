; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_print_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_print_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@WORD_SHIFT = common dso_local global i64 0, align 8
@LD_STOR_INS = common dso_local global i32 0, align 4
@instruction = common dso_local global %struct.TYPE_5__* null, align 8
@arg_idxrp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_4__*)* @print_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_constant(i32 %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @getconstant(i32 %11, i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %175 [
    i32 32, label %15
    i32 28, label %15
    i32 21, label %32
    i32 24, label %41
    i32 22, label %41
    i32 20, label %41
    i32 14, label %103
    i32 16, label %143
    i32 12, label %143
    i32 8, label %163
  ]

15:                                               ; preds = %3, %3
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 16
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @WORD_SHIFT, align 8
  %23 = ashr i64 %21, %22
  %24 = load i64, i64* %7, align 8
  %25 = and i64 %23, %24
  %26 = call i32 @CR16_PRINT(i32 0, i64 %25, i32 0)
  %27 = load i64, i64* %8, align 8
  %28 = and i64 %27, 65535
  %29 = load i64, i64* @WORD_SHIFT, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @CR16_PRINT(i32 1, i64 %28, i32 %30)
  br label %179

32:                                               ; preds = %3
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 21
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* @LD_STOR_INS, align 4
  %37 = call i32 @IS_INSN_TYPE(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 20, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %35, %32
  br label %41

41:                                               ; preds = %3, %3, %3, %40
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, 16
  %44 = shl i32 1, %43
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %7, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instruction, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %98

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @WORD_SHIFT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %51
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @arg_idxrp, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @WORD_SHIFT, align 8
  %65 = ashr i64 %63, %64
  %66 = load i64, i64* %7, align 8
  %67 = and i64 %65, %66
  %68 = shl i64 %67, 8
  %69 = call i32 @CR16_PRINT(i32 0, i64 %68, i32 0)
  %70 = load i64, i64* %8, align 8
  %71 = and i64 %70, 65535
  %72 = load i64, i64* @WORD_SHIFT, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @CR16_PRINT(i32 1, i64 %71, i32 %73)
  br label %97

75:                                               ; preds = %56
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @WORD_SHIFT, align 8
  %78 = ashr i64 %76, %77
  %79 = load i64, i64* %7, align 8
  %80 = and i64 %78, %79
  %81 = shl i64 %80, 8
  %82 = and i64 %81, 3840
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @WORD_SHIFT, align 8
  %85 = ashr i64 %83, %84
  %86 = load i64, i64* %7, align 8
  %87 = and i64 %85, %86
  %88 = lshr i64 %87, 4
  %89 = and i64 %88, 15
  %90 = or i64 %82, %89
  %91 = call i32 @CR16_PRINT(i32 0, i64 %90, i32 0)
  %92 = load i64, i64* %8, align 8
  %93 = and i64 %92, 65535
  %94 = load i64, i64* @WORD_SHIFT, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @CR16_PRINT(i32 1, i64 %93, i32 %95)
  br label %97

97:                                               ; preds = %75, %62
  br label %102

98:                                               ; preds = %51, %41
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @CR16_PRINT(i32 0, i64 %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %97
  br label %179

103:                                              ; preds = %3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @arg_idxrp, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %103
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instruction, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %137

114:                                              ; preds = %109
  %115 = load i64, i64* %8, align 8
  %116 = and i64 %115, 15
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @CR16_PRINT(i32 0, i64 %116, i32 %117)
  %119 = load i64, i64* %8, align 8
  %120 = ashr i64 %119, 4
  %121 = and i64 %120, 3
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 20
  %124 = call i32 @CR16_PRINT(i32 0, i64 %121, i32 %123)
  %125 = load i64, i64* %8, align 8
  %126 = ashr i64 %125, 6
  %127 = and i64 %126, 3
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 14
  %130 = call i32 @CR16_PRINT(i32 0, i64 %127, i32 %129)
  %131 = load i64, i64* %8, align 8
  %132 = ashr i64 %131, 8
  %133 = and i64 %132, 63
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 8
  %136 = call i32 @CR16_PRINT(i32 0, i64 %133, i32 %135)
  br label %141

137:                                              ; preds = %109
  %138 = load i64, i64* %8, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @CR16_PRINT(i32 0, i64 %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %114
  br label %142

142:                                              ; preds = %141, %103
  br label %179

143:                                              ; preds = %3, %3
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instruction, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %146, 2
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* @WORD_SHIFT, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* @WORD_SHIFT, align 8
  %156 = trunc i64 %155 to i32
  %157 = call i32 @CR16_PRINT(i32 1, i64 %154, i32 %156)
  br label %162

158:                                              ; preds = %148, %143
  %159 = load i64, i64* %8, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @CR16_PRINT(i32 0, i64 %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %153
  br label %179

163:                                              ; preds = %3
  %164 = load i64, i64* %8, align 8
  %165 = sdiv i64 %164, 2
  %166 = and i64 %165, 15
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @CR16_PRINT(i32 0, i64 %166, i32 %167)
  %169 = load i64, i64* %8, align 8
  %170 = sdiv i64 %169, 2
  %171 = ashr i64 %170, 4
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 8
  %174 = call i32 @CR16_PRINT(i32 0, i64 %171, i32 %173)
  br label %179

175:                                              ; preds = %3
  %176 = load i64, i64* %8, align 8
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @CR16_PRINT(i32 0, i64 %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %163, %162, %142, %102, %15
  ret void
}

declare dso_local i64 @getconstant(i32, i32) #1

declare dso_local i32 @CR16_PRINT(i32, i64, i32) #1

declare dso_local i32 @IS_INSN_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
