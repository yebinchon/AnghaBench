; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_regex.c_regexec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_regex.c_regexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.re_registers = type { i64, i32*, i32* }

@REG_NOTBOL = common dso_local global i32 0, align 4
@REG_NOTEOL = common dso_local global i32 0, align 4
@REGS_FIXED = common dso_local global i32 0, align 4
@regoff_t = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i64 0, align 8
@REG_NOERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regexec(%struct.TYPE_7__* %0, i8* %1, i64 %2, %struct.TYPE_6__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.re_registers, align 8
  %14 = alloca %struct.TYPE_7__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i64, i64* %9, align 8
  %26 = icmp ugt i64 %25, 0
  br label %27

27:                                               ; preds = %24, %5
  %28 = phi i1 [ false, %5 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %16, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = bitcast %struct.TYPE_7__* %14 to i8*
  %32 = bitcast %struct.TYPE_7__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 16, i1 false)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @REG_NOTBOL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @REG_NOTEOL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @REGS_FIXED, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %27
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %13, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = mul i64 %56, 2
  %58 = load i32, i32* @regoff_t, align 4
  %59 = call i32* @TALLOC(i64 %57, i32 %58)
  %60 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %13, i32 0, i32 1
  store i32* %59, i32** %60, align 8
  %61 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %13, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i64, i64* @REG_NOMATCH, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  br label %137

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %13, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %13, i32 0, i32 2
  store i32* %71, i32** %72, align 8
  br label %73

73:                                               ; preds = %67, %27
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %81

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %79
  %82 = phi %struct.re_registers* [ %13, %79 ], [ null, %80 ]
  %83 = call i32 @re_search(%struct.TYPE_7__* %14, i8* %74, i32 %75, i32 0, i32 %76, %struct.re_registers* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %126

86:                                               ; preds = %81
  %87 = load i32, i32* %12, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %86
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %118, %89
  %91 = load i32, i32* %17, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %9, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %13, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %17, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %103 = load i32, i32* %17, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i32 %101, i32* %106, align 4
  %107 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %13, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %17, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %114 = load i32, i32* %17, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %95
  %119 = load i32, i32* %17, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %17, align 4
  br label %90

121:                                              ; preds = %90
  br label %122

122:                                              ; preds = %121, %86
  %123 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %13, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @free(i32* %124)
  br label %126

126:                                              ; preds = %122, %81
  %127 = load i32, i32* %12, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i64, i64* @REG_NOERROR, align 8
  %131 = trunc i64 %130 to i32
  br label %135

132:                                              ; preds = %126
  %133 = load i64, i64* @REG_NOMATCH, align 8
  %134 = trunc i64 %133 to i32
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi i32 [ %131, %129 ], [ %134, %132 ]
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %135, %64
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @TALLOC(i64, i32) #1

declare dso_local i32 @re_search(%struct.TYPE_7__*, i8*, i32, i32, i32, %struct.re_registers*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
