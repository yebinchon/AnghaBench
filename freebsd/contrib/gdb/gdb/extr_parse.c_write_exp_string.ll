; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_write_exp_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_write_exp_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32* }
%struct.stoken = type { i32, i32 }

@expout_ptr = common dso_local global i32 0, align 4
@expout_size = common dso_local global i32 0, align 4
@expout = common dso_local global %struct.expression* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_exp_string(i64 %0) #0 {
  %2 = alloca %struct.stoken, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = bitcast %struct.stoken* %2 to i64*
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds %struct.stoken, %struct.stoken* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, 1
  %11 = call i32 @BYTES_TO_EXP_ELEM(i32 %10)
  %12 = add nsw i32 2, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @expout_ptr, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* @expout_size, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load i32, i32* @expout_size, align 4
  %20 = mul nsw i32 %19, 2
  %21 = load i32, i32* @expout_ptr, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %21, %22
  %24 = add nsw i32 %23, 10
  %25 = call i32 @max(i32 %20, i32 %24)
  store i32 %25, i32* @expout_size, align 4
  %26 = load %struct.expression*, %struct.expression** @expout, align 8
  %27 = bitcast %struct.expression* %26 to i8*
  %28 = load i32, i32* @expout_size, align 4
  %29 = call i64 @EXP_ELEM_TO_BYTES(i32 %28)
  %30 = add i64 8, %29
  %31 = call i64 @xrealloc(i8* %27, i64 %30)
  %32 = inttoptr i64 %31 to %struct.expression*
  store %struct.expression* %32, %struct.expression** @expout, align 8
  br label %33

33:                                               ; preds = %18, %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @write_exp_elt_longcst(i32 %34)
  %36 = load %struct.expression*, %struct.expression** @expout, align 8
  %37 = getelementptr inbounds %struct.expression, %struct.expression* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @expout_ptr, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds %struct.stoken, %struct.stoken* %2, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @memcpy(i8* %43, i32 %45, i32 %46)
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 2
  %54 = load i32, i32* @expout_ptr, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* @expout_ptr, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @write_exp_elt_longcst(i32 %56)
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
