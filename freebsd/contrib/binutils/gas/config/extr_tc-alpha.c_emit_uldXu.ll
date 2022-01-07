; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_uldXu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_uldXu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@alpha_noat_on = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"macro requires $at register while noat in effect\00", align 1
@AXP_REG_AT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"lda\00", align 1
@AXP_REG_T9 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ldq_u\00", align 1
@AXP_REG_T10 = common dso_local global i32 0, align 4
@extXl_op = common dso_local global i8** null, align 8
@extXh_op = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i8*)* @emit_uldXu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_uldXu(%struct.TYPE_9__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [3 x %struct.TYPE_9__], align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* @alpha_noat_on, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @as_bad(i32 %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memcpy(%struct.TYPE_9__* %17, %struct.TYPE_9__* %18, i32 %22)
  %24 = load i32, i32* @AXP_REG_AT, align 4
  %25 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @assemble_tokens(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %27, i32 %28, i32 1)
  %30 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %31 = load i32, i32* @AXP_REG_T9, align 4
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set_tok_reg(i32 %33, i32 %31)
  %35 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_tok_const(i32 %37, i32 0)
  %39 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 2
  %40 = load i32, i32* @AXP_REG_AT, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_tok_preg(i32 %42, i32 %40)
  %44 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %45 = call i32 @assemble_tokens(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %44, i32 3, i32 1)
  %46 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %47 = load i32, i32* @AXP_REG_T10, align 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_tok_reg(i32 %49, i32 %47)
  %51 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 1
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 1, %53
  %55 = sub nsw i32 %54, 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_tok_const(i32 %57, i32 %55)
  %59 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %60 = call i32 @assemble_tokens(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %59, i32 3, i32 1)
  %61 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %62 = load i32, i32* @AXP_REG_T9, align 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @set_tok_reg(i32 %64, i32 %62)
  %66 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 1
  %67 = load i32, i32* @AXP_REG_AT, align 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @set_tok_reg(i32 %69, i32 %67)
  %71 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 2
  %72 = load i32, i32* @AXP_REG_T9, align 4
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @set_tok_reg(i32 %74, i32 %72)
  %76 = load i8**, i8*** @extXl_op, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %81 = call i32 @assemble_tokens(i8* %79, %struct.TYPE_9__* %80, i32 3, i32 1)
  %82 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %83 = load i32, i32* @AXP_REG_T10, align 4
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @set_tok_reg(i32 %85, i32 %83)
  %87 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 2
  %88 = load i32, i32* @AXP_REG_T10, align 4
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @set_tok_reg(i32 %90, i32 %88)
  %92 = load i8**, i8*** @extXh_op, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %97 = call i32 @assemble_tokens(i8* %95, %struct.TYPE_9__* %96, i32 3, i32 1)
  %98 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %99 = load i32, i32* @AXP_REG_T9, align 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @set_tok_reg(i32 %101, i32 %99)
  %103 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 1
  %104 = load i32, i32* @AXP_REG_T10, align 4
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @set_tok_reg(i32 %106, i32 %104)
  %108 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 2
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 0
  %111 = bitcast %struct.TYPE_9__* %108 to i8*
  %112 = bitcast %struct.TYPE_9__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 4, i1 false)
  %113 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %8, i64 0, i64 0
  %114 = call i32 @assemble_tokens(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %113, i32 3, i32 1)
  ret void
}

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

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
