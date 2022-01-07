; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_gen_reg_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_gen_reg_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@cfun = common dso_local global %struct.function* null, align 8
@no_new_pseudos = common dso_local global i32 0, align 4
@generating_concat_p = common dso_local global i64 0, align 8
@MODE_COMPLEX_FLOAT = common dso_local global i64 0, align 8
@MODE_COMPLEX_INT = common dso_local global i64 0, align 8
@reg_rtx_no = common dso_local global i32 0, align 4
@regno_reg_rtx = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @gen_reg_rtx(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.function*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  store %struct.function* %12, %struct.function** %4, align 8
  %13 = load i32, i32* @no_new_pseudos, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @gcc_assert(i32 %16)
  %18 = load i64, i64* @generating_concat_p, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @GET_MODE_CLASS(i32 %21)
  %23 = load i64, i64* @MODE_COMPLEX_FLOAT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @GET_MODE_CLASS(i32 %26)
  %28 = load i64, i64* @MODE_COMPLEX_INT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @GET_MODE_INNER(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call signext i8 @gen_reg_rtx(i32 %33)
  store i8 %34, i8* %6, align 1
  %35 = load i32, i32* %8, align 4
  %36 = call signext i8 @gen_reg_rtx(i32 %35)
  store i8 %36, i8* %7, align 1
  %37 = load i32, i32* %3, align 4
  %38 = load i8, i8* %6, align 1
  %39 = load i8, i8* %7, align 1
  %40 = call signext i8 @gen_rtx_CONCAT(i32 %37, i8 signext %38, i8 signext %39)
  store i8 %40, i8* %2, align 1
  br label %112

41:                                               ; preds = %25, %1
  %42 = load i32, i32* @reg_rtx_no, align 4
  %43 = load %struct.function*, %struct.function** %4, align 8
  %44 = getelementptr inbounds %struct.function, %struct.function* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %101

49:                                               ; preds = %41
  %50 = load %struct.function*, %struct.function** %4, align 8
  %51 = getelementptr inbounds %struct.function, %struct.function* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %9, align 4
  %55 = load %struct.function*, %struct.function** %4, align 8
  %56 = getelementptr inbounds %struct.function, %struct.function* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, 2
  %62 = call i8* @ggc_realloc(i8* %59, i32 %61)
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @memset(i8* %66, i32 0, i32 %67)
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.function*, %struct.function** %4, align 8
  %71 = getelementptr inbounds %struct.function, %struct.function* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i8* %69, i8** %73, align 8
  %74 = load %struct.function*, %struct.function** %4, align 8
  %75 = getelementptr inbounds %struct.function, %struct.function* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 1
  %83 = trunc i64 %82 to i32
  %84 = call i8* @ggc_realloc(i8* %78, i32 %83)
  store i8* %84, i8** %11, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 1
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memset(i8* %88, i32 0, i32 %92)
  %94 = load i8*, i8** %11, align 8
  store i8* %94, i8** @regno_reg_rtx, align 8
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 %95, 2
  %97 = load %struct.function*, %struct.function** %4, align 8
  %98 = getelementptr inbounds %struct.function, %struct.function* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 8
  br label %101

101:                                              ; preds = %49, %41
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @reg_rtx_no, align 4
  %104 = call signext i8 @gen_raw_REG(i32 %102, i32 %103)
  store i8 %104, i8* %5, align 1
  %105 = load i8, i8* %5, align 1
  %106 = load i8*, i8** @regno_reg_rtx, align 8
  %107 = load i32, i32* @reg_rtx_no, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @reg_rtx_no, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  store i8 %105, i8* %110, align 1
  %111 = load i8, i8* %5, align 1
  store i8 %111, i8* %2, align 1
  br label %112

112:                                              ; preds = %101, %30
  %113 = load i8, i8* %2, align 1
  ret i8 %113
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local signext i8 @gen_rtx_CONCAT(i32, i8 signext, i8 signext) #1

declare dso_local i8* @ggc_realloc(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local signext i8 @gen_raw_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
