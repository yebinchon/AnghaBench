; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_write_exp_bitstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_write_exp_bitstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32* }
%struct.stoken = type { i32, i32 }

@HOST_CHAR_BIT = common dso_local global i32 0, align 4
@expout_ptr = common dso_local global i32 0, align 4
@expout_size = common dso_local global i32 0, align 4
@expout = common dso_local global %struct.expression* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_exp_bitstring(i64 %0) #0 {
  %2 = alloca %struct.stoken, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = bitcast %struct.stoken* %2 to i64*
  store i64 %0, i64* %7, align 4
  %8 = getelementptr inbounds %struct.stoken, %struct.stoken* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @HOST_CHAR_BIT, align 4
  %12 = add nsw i32 %10, %11
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* @HOST_CHAR_BIT, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @BYTES_TO_EXP_ELEM(i32 %16)
  %18 = add nsw i32 2, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @expout_ptr, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @expout_size, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %1
  %25 = load i32, i32* @expout_size, align 4
  %26 = mul nsw i32 %25, 2
  %27 = load i32, i32* @expout_ptr, align 4
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %27, %28
  %30 = add nsw i32 %29, 10
  %31 = call i32 @max(i32 %26, i32 %30)
  store i32 %31, i32* @expout_size, align 4
  %32 = load %struct.expression*, %struct.expression** @expout, align 8
  %33 = bitcast %struct.expression* %32 to i8*
  %34 = load i32, i32* @expout_size, align 4
  %35 = call i64 @EXP_ELEM_TO_BYTES(i32 %34)
  %36 = add i64 8, %35
  %37 = call i64 @xrealloc(i8* %33, i64 %36)
  %38 = inttoptr i64 %37 to %struct.expression*
  store %struct.expression* %38, %struct.expression** @expout, align 8
  br label %39

39:                                               ; preds = %24, %1
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @write_exp_elt_longcst(i32 %40)
  %42 = load %struct.expression*, %struct.expression** @expout, align 8
  %43 = getelementptr inbounds %struct.expression, %struct.expression* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @expout_ptr, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = bitcast i32* %47 to i8*
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds %struct.stoken, %struct.stoken* %2, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @memcpy(i8* %49, i32 %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %54, 2
  %56 = load i32, i32* @expout_ptr, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* @expout_ptr, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @write_exp_elt_longcst(i32 %58)
  ret void
}

declare dso_local i32 @BYTES_TO_EXP_ELEM(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @xrealloc(i8*, i64) #1

declare dso_local i64 @EXP_ELEM_TO_BYTES(i32) #1

declare dso_local i32 @write_exp_elt_longcst(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
