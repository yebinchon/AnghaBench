; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_hash_invariant_expr_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_hash_invariant_expr_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { i32 }
%struct.invariant = type { i32 }

@df = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @hash_invariant_expr_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_invariant_expr_1(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.df_ref*, align 8
  %13 = alloca %struct.invariant*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @GET_CODE(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %55 [
    i32 131, label %18
    i32 132, label %18
    i32 128, label %18
    i32 133, label %18
    i32 130, label %18
    i32 129, label %23
  ]

18:                                               ; preds = %2, %2, %2, %2, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @GET_MODE(i32 %20)
  %22 = call i32 @hash_rtx(i32 %19, i32 %21, i32* %11, i32* null, i32 0)
  store i32 %22, i32* %3, align 4
  br label %139

23:                                               ; preds = %2
  %24 = load i32, i32* @df, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.df_ref* @df_find_use(i32 %24, i32 %25, i32 %26)
  store %struct.df_ref* %27, %struct.df_ref** %12, align 8
  %28 = load %struct.df_ref*, %struct.df_ref** %12, align 8
  %29 = icmp ne %struct.df_ref* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @GET_MODE(i32 %32)
  %34 = call i32 @hash_rtx(i32 %31, i32 %33, i32* %11, i32* null, i32 0)
  store i32 %34, i32* %3, align 4
  br label %139

35:                                               ; preds = %23
  %36 = load %struct.df_ref*, %struct.df_ref** %12, align 8
  %37 = call %struct.invariant* @invariant_for_use(%struct.df_ref* %36)
  store %struct.invariant* %37, %struct.invariant** %13, align 8
  %38 = load %struct.invariant*, %struct.invariant** %13, align 8
  %39 = icmp ne %struct.invariant* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @GET_MODE(i32 %42)
  %44 = call i32 @hash_rtx(i32 %41, i32 %43, i32* %11, i32* null, i32 0)
  store i32 %44, i32* %3, align 4
  br label %139

45:                                               ; preds = %35
  %46 = load %struct.invariant*, %struct.invariant** %13, align 8
  %47 = getelementptr inbounds %struct.invariant, %struct.invariant* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, -1
  %50 = zext i1 %49 to i32
  %51 = call i32 @gcc_assert(i32 %50)
  %52 = load %struct.invariant*, %struct.invariant** %13, align 8
  %53 = getelementptr inbounds %struct.invariant, %struct.invariant* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %3, align 4
  br label %139

55:                                               ; preds = %2
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = call i8* @GET_RTX_FORMAT(i32 %57)
  store i8* %58, i8** %9, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @GET_RTX_LENGTH(i32 %59)
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %134, %56
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %137

65:                                               ; preds = %62
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 101
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @XEXP(i32 %75, i32 %76)
  %78 = call i32 @hash_invariant_expr_1(i32 %74, i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = xor i32 %79, %78
  store i32 %80, i32* %10, align 4
  br label %133

81:                                               ; preds = %65
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 69
  br i1 %88, label %89, label %109

89:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %105, %89
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @XVECLEN(i32 %92, i32 %93)
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @XVECEXP(i32 %98, i32 %99, i32 %100)
  %102 = call i32 @hash_invariant_expr_1(i32 %97, i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = xor i32 %103, %102
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %90

108:                                              ; preds = %90
  br label %132

109:                                              ; preds = %81
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 105
  br i1 %116, label %125, label %117

117:                                              ; preds = %109
  %118 = load i8*, i8** %9, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 110
  br i1 %124, label %125, label %131

125:                                              ; preds = %117, %109
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @XINT(i32 %126, i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = xor i32 %129, %128
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %125, %117
  br label %132

132:                                              ; preds = %131, %108
  br label %133

133:                                              ; preds = %132, %73
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %7, align 4
  br label %62

137:                                              ; preds = %62
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %45, %40, %30, %18
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @hash_rtx(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local %struct.df_ref* @df_find_use(i32, i32, i32) #1

declare dso_local %struct.invariant* @invariant_for_use(%struct.df_ref*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
