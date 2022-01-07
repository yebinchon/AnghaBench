; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_retjcr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_retjcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@O_register = common dso_local global i64 0, align 8
@AXP_REG_ZERO = common dso_local global i32 0, align 4
@O_pregister = common dso_local global i64 0, align 8
@O_cpregister = common dso_local global i64 0, align 8
@AXP_REG_RA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i8*)* @emit_retjcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_retjcr(%struct.TYPE_7__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x %struct.TYPE_7__], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @O_register, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @regno(i32 %31)
  store i32 %32, i32* %9, align 4
  br label %35

33:                                               ; preds = %15, %3
  %34 = load i32, i32* @AXP_REG_ZERO, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %24
  %36 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %37 = load i32, i32* %9, align 4
  %38 = bitcast %struct.TYPE_7__* %36 to { i64, i32 }*
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 16
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @set_tok_reg(i64 %40, i32 %42, i32 %37)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %35
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @O_pregister, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %47
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @O_cpregister, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %56, %47
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @regno(i32 %72)
  store i32 %73, i32* %9, align 4
  br label %76

74:                                               ; preds = %56, %35
  %75 = load i32, i32* @AXP_REG_RA, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %74, %65
  %77 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %8, i64 0, i64 1
  %78 = load i32, i32* %9, align 4
  %79 = bitcast %struct.TYPE_7__* %77 to { i64, i32 }*
  %80 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 16
  %82 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %79, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @set_tok_cpreg(i64 %81, i32 %83, i32 %78)
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %76
  %89 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %8, i64 0, i64 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %92
  %94 = bitcast %struct.TYPE_7__* %89 to i8*
  %95 = bitcast %struct.TYPE_7__* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %94, i8* align 8 %95, i64 16, i1 false)
  br label %108

96:                                               ; preds = %76
  %97 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %8, i64 0, i64 2
  %98 = load i8*, i8** %7, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = bitcast %struct.TYPE_7__* %97 to { i64, i32 }*
  %103 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 16
  %105 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %102, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @set_tok_const(i64 %104, i32 %106, i32 %101)
  br label %108

108:                                              ; preds = %96, %88
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %111 = call i32 @assemble_tokens(i8* %109, %struct.TYPE_7__* %110, i32 3, i32 0)
  ret void
}

declare dso_local i32 @regno(i32) #1

declare dso_local i32 @set_tok_reg(i64, i32, i32) #1

declare dso_local i32 @set_tok_cpreg(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_tok_const(i64, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @assemble_tokens(i8*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
