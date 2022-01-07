; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_darwin64_record_arg_recurse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_darwin64_record_arg_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i32 }

@FIELD_DECL = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@TFmode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i32, i32*, i32*)* @rs6000_darwin64_record_arg_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs6000_darwin64_record_arg_recurse(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @TYPE_FIELDS(i64 %15)
  store i64 %16, i64* %11, align 8
  br label %17

17:                                               ; preds = %155, %5
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %158

20:                                               ; preds = %17
  %21 = load i64, i64* %11, align 8
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i64, i64* @FIELD_DECL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %154

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @TREE_TYPE(i64 %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* @error_mark_node, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %155

33:                                               ; preds = %25
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @TYPE_MODE(i64 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i64, i64* %11, align 8
  %37 = call i64 @DECL_SIZE(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @bit_position(i64 %40)
  %42 = call i64 @host_integerp(i32 %41, i32 1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @int_bit_position(i64 %45)
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %44, %39, %33
  %52 = load i64, i64* %13, align 8
  %53 = call i64 @TREE_CODE(i64 %52)
  %54 = load i64, i64* @RECORD_TYPE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %10, align 8
  call void @rs6000_darwin64_record_arg_recurse(%struct.TYPE_6__* %57, i64 %58, i32 %59, i32* %60, i32* %61)
  br label %153

62:                                               ; preds = %51
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %106

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i64, i64* %13, align 8
  %71 = call i64 @USE_FP_FOR_ARG_P(%struct.TYPE_6__* %68, i32 %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %67
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @rs6000_darwin64_record_arg_flush(%struct.TYPE_6__* %74, i32 %75, i32* %76, i32* %77)
  %79 = load i32, i32* @VOIDmode, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = call i32 @gen_rtx_REG(i32 %80, i32 %83)
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @BITS_PER_UNIT, align 4
  %88 = sdiv i32 %86, %87
  %89 = call i32 @GEN_INT(i32 %88)
  %90 = call i32 @gen_rtx_EXPR_LIST(i32 %79, i32 %85, i32 %89)
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  store i32 %90, i32* %96, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @TFmode, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %73
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %100, %73
  br label %152

106:                                              ; preds = %67, %62
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %141

111:                                              ; preds = %106
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i64, i64* %13, align 8
  %115 = call i64 @USE_ALTIVEC_FOR_ARG_P(%struct.TYPE_6__* %112, i32 %113, i64 %114, i32 1)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %111
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @rs6000_darwin64_record_arg_flush(%struct.TYPE_6__* %118, i32 %119, i32* %120, i32* %121)
  %123 = load i32, i32* @VOIDmode, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = call i32 @gen_rtx_REG(i32 %124, i32 %127)
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @BITS_PER_UNIT, align 4
  %132 = sdiv i32 %130, %131
  %133 = call i32 @GEN_INT(i32 %132)
  %134 = call i32 @gen_rtx_EXPR_LIST(i32 %123, i32 %129, i32 %133)
  %135 = load i32*, i32** %9, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  store i32 %134, i32* %140, align 4
  br label %151

141:                                              ; preds = %111, %106
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %146, %141
  br label %151

151:                                              ; preds = %150, %117
  br label %152

152:                                              ; preds = %151, %105
  br label %153

153:                                              ; preds = %152, %56
  br label %154

154:                                              ; preds = %153, %20
  br label %155

155:                                              ; preds = %154, %32
  %156 = load i64, i64* %11, align 8
  %157 = call i64 @TREE_CHAIN(i64 %156)
  store i64 %157, i64* %11, align 8
  br label %17

158:                                              ; preds = %17
  ret void
}

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @DECL_SIZE(i64) #1

declare dso_local i64 @host_integerp(i32, i32) #1

declare dso_local i32 @bit_position(i64) #1

declare dso_local i64 @int_bit_position(i64) #1

declare dso_local i64 @USE_FP_FOR_ARG_P(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @rs6000_darwin64_record_arg_flush(%struct.TYPE_6__*, i32, i32*, i32*) #1

declare dso_local i32 @gen_rtx_EXPR_LIST(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @USE_ALTIVEC_FOR_ARG_P(%struct.TYPE_6__*, i32, i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
