; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_emit_leb128_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_emit_leb128_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@O_absent = common dso_local global i64 0, align 8
@O_illegal = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"zero assumed for missing expression\00", align 1
@O_constant = common dso_local global i64 0, align 8
@O_big = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"floating point number invalid\00", align 1
@O_register = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"register value used as expression\00", align 1
@generic_bignum = common dso_local global i32 0, align 4
@rs_leb128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @emit_leb128_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_leb128_expr(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @O_absent, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @O_illegal, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %2
  %23 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @as_warn(i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* @O_constant, align 8
  store i64 %27, i64* %5, align 8
  br label %78

28:                                               ; preds = %18
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @O_big, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @as_bad(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* @O_constant, align 8
  store i64 %42, i64* %5, align 8
  br label %77

43:                                               ; preds = %32, %28
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @O_register, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 @as_warn(i32 %48)
  %50 = load i64, i64* @O_constant, align 8
  store i64 %50, i64* %5, align 8
  br label %76

51:                                               ; preds = %43
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @O_constant, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = icmp ne i32 %63, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = call i32 @convert_to_bignum(%struct.TYPE_6__* %72)
  %74 = load i64, i64* @O_big, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %71, %58, %55, %51
  br label %76

76:                                               ; preds = %75, %47
  br label %77

77:                                               ; preds = %76, %37
  br label %78

78:                                               ; preds = %77, %22
  store i32 -1, i32* %6, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = call i64 @check_eh_frame(%struct.TYPE_6__* %79, i32* %6)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 (...) @abort() #3
  unreachable

84:                                               ; preds = %78
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @O_constant, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @sizeof_leb128(i64 %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i8* @frag_more(i32 %95)
  store i8* %96, i8** %9, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @output_leb128(i8* %97, i64 %98, i32 %99)
  br label %129

101:                                              ; preds = %84
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* @O_big, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load i32, i32* @generic_bignum, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @output_big_leb128(i8* null, i32 %106, i64 %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i8* @frag_more(i32 %112)
  store i8* %113, i8** %11, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load i32, i32* @generic_bignum, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @output_big_leb128(i8* %114, i32 %115, i64 %118, i32 %119)
  br label %128

121:                                              ; preds = %101
  %122 = load i32, i32* @rs_leb128, align 4
  %123 = call i32 @sizeof_uleb128(i64 -1)
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = call i32 @make_expr_symbol(%struct.TYPE_6__* %125)
  %127 = call i32 @frag_var(i32 %122, i32 %123, i32 0, i32 %124, i32 %126, i32 0, i8* null)
  br label %128

128:                                              ; preds = %121, %105
  br label %129

129:                                              ; preds = %128, %88
  ret void
}

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @convert_to_bignum(%struct.TYPE_6__*) #1

declare dso_local i64 @check_eh_frame(%struct.TYPE_6__*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @sizeof_leb128(i64, i32) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @output_leb128(i8*, i64, i32) #1

declare dso_local i32 @output_big_leb128(i8*, i32, i64, i32) #1

declare dso_local i32 @frag_var(i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @sizeof_uleb128(i64) #1

declare dso_local i32 @make_expr_symbol(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
