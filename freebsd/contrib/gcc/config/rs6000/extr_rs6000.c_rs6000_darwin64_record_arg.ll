; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_darwin64_record_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_darwin64_record_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64 }

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@BITS_PER_WORD = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32)* @rs6000_darwin64_record_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_darwin64_record_arg(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @int_size_in_bytes(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = bitcast %struct.TYPE_5__* %15 to i8*
  %26 = bitcast %struct.TYPE_5__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %16, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @TYPE_ALIGN(i32 %30)
  %32 = load i32, i32* @BITS_PER_WORD, align 4
  %33 = mul nsw i32 2, %32
  %34 = icmp sge i32 %31, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = srem i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %35, %29, %4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @rs6000_darwin64_record_arg_recurse(%struct.TYPE_5__* %54, i32 %55, i32 0, i32* %21, i32* %12)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @BITS_PER_UNIT, align 4
  %60 = mul nsw i32 %58, %59
  %61 = call i32 @rs6000_darwin64_record_arg_flush(%struct.TYPE_5__* %57, i32 %60, i32* %21, i32* %12)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %46
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @NULL_RTX, align 4
  store i32 %70, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %97

71:                                               ; preds = %66
  store i32 0, i32* %13, align 4
  %72 = load i32, i32* @VOIDmode, align 4
  %73 = load i32, i32* @NULL_RTX, align 4
  %74 = load i32, i32* @const0_rtx, align 4
  %75 = call i32 @gen_rtx_EXPR_LIST(i32 %72, i32 %73, i32 %74)
  %76 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %75, i32* %76, align 16
  br label %77

77:                                               ; preds = %71, %46
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80, %77
  %86 = load i32, i32* @BLKmode, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %21, i64 %91
  %93 = call i32 @gen_rtvec_v(i32 %89, i32* %92)
  %94 = call i32 @gen_rtx_PARALLEL(i32 %86, i32 %93)
  store i32 %94, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %97

95:                                               ; preds = %80
  %96 = load i32, i32* @NULL_RTX, align 4
  store i32 %96, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %97

97:                                               ; preds = %95, %85, %69
  %98 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @int_size_in_bytes(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @TYPE_ALIGN(i32) #2

declare dso_local i32 @rs6000_darwin64_record_arg_recurse(%struct.TYPE_5__*, i32, i32, i32*, i32*) #2

declare dso_local i32 @rs6000_darwin64_record_arg_flush(%struct.TYPE_5__*, i32, i32*, i32*) #2

declare dso_local i32 @gen_rtx_EXPR_LIST(i32, i32, i32) #2

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #2

declare dso_local i32 @gen_rtvec_v(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
