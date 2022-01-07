; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_ustX.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_ustX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@AXP_REG_AT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lda\00", align 1
@AXP_REG_T9 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ldq_u\00", align 1
@AXP_REG_T10 = common dso_local global i32 0, align 4
@AXP_REG_T11 = common dso_local global i32 0, align 4
@insXl_op = common dso_local global i8** null, align 8
@AXP_REG_T12 = common dso_local global i32 0, align 4
@insXh_op = common dso_local global i8** null, align 8
@mskXl_op = common dso_local global i8** null, align 8
@mskXh_op = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stq_u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i8*)* @emit_ustX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ustX(%struct.TYPE_9__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x %struct.TYPE_9__], align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memcpy(%struct.TYPE_9__* %12, %struct.TYPE_9__* %13, i32 %17)
  %19 = load i32, i32* @AXP_REG_AT, align 4
  %20 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @assemble_tokens(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %22, i32 %23, i32 1)
  %25 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %26 = load i32, i32* @AXP_REG_T9, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set_tok_reg(i32 %28, i32 %26)
  %30 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @set_tok_const(i32 %32, i32 0)
  %34 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 2
  %35 = load i32, i32* @AXP_REG_AT, align 4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_tok_preg(i32 %37, i32 %35)
  %39 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %40 = call i32 @assemble_tokens(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %39, i32 3, i32 1)
  %41 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %42 = load i32, i32* @AXP_REG_T10, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @set_tok_reg(i32 %44, i32 %42)
  %46 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 1
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 1, %47
  %49 = sub nsw i32 %48, 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @set_tok_const(i32 %51, i32 %49)
  %53 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %54 = call i32 @assemble_tokens(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %53, i32 3, i32 1)
  %55 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 0
  %58 = bitcast %struct.TYPE_9__* %55 to i8*
  %59 = bitcast %struct.TYPE_9__* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 1
  %61 = load i32, i32* @AXP_REG_AT, align 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @set_tok_reg(i32 %63, i32 %61)
  %65 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 2
  %66 = load i32, i32* @AXP_REG_T11, align 4
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @set_tok_reg(i32 %68, i32 %66)
  %70 = load i8**, i8*** @insXl_op, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %76 = call i32 @assemble_tokens(i8* %74, %struct.TYPE_9__* %75, i32 3, i32 1)
  %77 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 2
  %78 = load i32, i32* @AXP_REG_T12, align 4
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @set_tok_reg(i32 %80, i32 %78)
  %82 = load i8**, i8*** @insXh_op, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %88 = call i32 @assemble_tokens(i8* %86, %struct.TYPE_9__* %87, i32 3, i32 1)
  %89 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %90 = load i32, i32* @AXP_REG_T9, align 4
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @set_tok_reg(i32 %92, i32 %90)
  %94 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 2
  %95 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %96 = bitcast %struct.TYPE_9__* %94 to i8*
  %97 = bitcast %struct.TYPE_9__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 4, i1 false)
  %98 = load i8**, i8*** @mskXl_op, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %104 = call i32 @assemble_tokens(i8* %102, %struct.TYPE_9__* %103, i32 3, i32 1)
  %105 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %106 = load i32, i32* @AXP_REG_T10, align 4
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @set_tok_reg(i32 %108, i32 %106)
  %110 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 2
  %111 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %112 = bitcast %struct.TYPE_9__* %110 to i8*
  %113 = bitcast %struct.TYPE_9__* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 4, i1 false)
  %114 = load i8**, i8*** @mskXh_op, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %120 = call i32 @assemble_tokens(i8* %118, %struct.TYPE_9__* %119, i32 3, i32 1)
  %121 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %122 = load i32, i32* @AXP_REG_T9, align 4
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @set_tok_reg(i32 %124, i32 %122)
  %126 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 1
  %127 = load i32, i32* @AXP_REG_T11, align 4
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @set_tok_reg(i32 %129, i32 %127)
  %131 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 2
  %132 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %133 = bitcast %struct.TYPE_9__* %131 to i8*
  %134 = bitcast %struct.TYPE_9__* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %133, i8* align 4 %134, i64 4, i1 false)
  %135 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %136 = call i32 @assemble_tokens(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %135, i32 3, i32 1)
  %137 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %138 = load i32, i32* @AXP_REG_T10, align 4
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @set_tok_reg(i32 %140, i32 %138)
  %142 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 1
  %143 = load i32, i32* @AXP_REG_T12, align 4
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @set_tok_reg(i32 %145, i32 %143)
  %147 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 2
  %148 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %149 = bitcast %struct.TYPE_9__* %147 to i8*
  %150 = bitcast %struct.TYPE_9__* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 4, i1 false)
  %151 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %152 = call i32 @assemble_tokens(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %151, i32 3, i32 1)
  %153 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %154 = load i32, i32* @AXP_REG_T10, align 4
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @set_tok_reg(i32 %156, i32 %154)
  %158 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 1
  %159 = load i32, i32* %7, align 4
  %160 = shl i32 1, %159
  %161 = sub nsw i32 %160, 1
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @set_tok_const(i32 %163, i32 %161)
  %165 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 2
  %166 = load i32, i32* @AXP_REG_AT, align 4
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @set_tok_preg(i32 %168, i32 %166)
  %170 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %171 = call i32 @assemble_tokens(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %170, i32 3, i32 1)
  %172 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %173 = load i32, i32* @AXP_REG_T9, align 4
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @set_tok_reg(i32 %175, i32 %173)
  %177 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 1
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @set_tok_const(i32 %179, i32 0)
  %181 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %182 = call i32 @assemble_tokens(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %181, i32 3, i32 1)
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @assemble_tokens(i8*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @set_tok_reg(i32, i32) #1

declare dso_local i32 @set_tok_const(i32, i32) #1

declare dso_local i32 @set_tok_preg(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
