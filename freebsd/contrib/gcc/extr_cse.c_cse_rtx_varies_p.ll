; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_cse_rtx_varies_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_cse_rtx_varies_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qty_table_elem = type { i64, i64 }

@qty_table = common dso_local global %struct.qty_table_elem* null, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @cse_rtx_varies_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cse_rtx_varies_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qty_table_elem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qty_table_elem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qty_table_elem*, align 8
  %13 = alloca %struct.qty_table_elem*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @REG_P(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @REGNO(i32 %18)
  %20 = call i64 @REGNO_QTY_VALID_P(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @REGNO(i32 %23)
  %25 = call i32 @REG_QTY(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.qty_table_elem*, %struct.qty_table_elem** @qty_table, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %26, i64 %28
  store %struct.qty_table_elem* %29, %struct.qty_table_elem** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @GET_MODE(i32 %30)
  %32 = load %struct.qty_table_elem*, %struct.qty_table_elem** %7, align 8
  %33 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %22
  %37 = load %struct.qty_table_elem*, %struct.qty_table_elem** %7, align 8
  %38 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NULL_RTX, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %167

43:                                               ; preds = %36, %22
  br label %44

44:                                               ; preds = %43, %17, %2
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @GET_CODE(i32 %45)
  %47 = load i64, i64* @PLUS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @XEXP(i32 %50, i32 1)
  %52 = call i64 @GET_CODE(i32 %51)
  %53 = load i64, i64* @CONST_INT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @XEXP(i32 %56, i32 0)
  %58 = call i64 @REG_P(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @XEXP(i32 %61, i32 0)
  %63 = call i32 @REGNO(i32 %62)
  %64 = call i64 @REGNO_QTY_VALID_P(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @XEXP(i32 %67, i32 0)
  %69 = call i32 @REGNO(i32 %68)
  %70 = call i32 @REG_QTY(i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.qty_table_elem*, %struct.qty_table_elem** @qty_table, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %71, i64 %73
  store %struct.qty_table_elem* %74, %struct.qty_table_elem** %9, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @XEXP(i32 %75, i32 0)
  %77 = call i64 @GET_MODE(i32 %76)
  %78 = load %struct.qty_table_elem*, %struct.qty_table_elem** %9, align 8
  %79 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %66
  %83 = load %struct.qty_table_elem*, %struct.qty_table_elem** %9, align 8
  %84 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NULL_RTX, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %167

89:                                               ; preds = %82, %66
  br label %90

90:                                               ; preds = %89, %60, %55, %49, %44
  %91 = load i32, i32* %4, align 4
  %92 = call i64 @GET_CODE(i32 %91)
  %93 = load i64, i64* @PLUS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %163

95:                                               ; preds = %90
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @XEXP(i32 %96, i32 0)
  %98 = call i64 @REG_P(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %163

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @XEXP(i32 %101, i32 1)
  %103 = call i64 @REG_P(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %163

105:                                              ; preds = %100
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @XEXP(i32 %106, i32 0)
  %108 = call i32 @REGNO(i32 %107)
  %109 = call i64 @REGNO_QTY_VALID_P(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %163

111:                                              ; preds = %105
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @XEXP(i32 %112, i32 1)
  %114 = call i32 @REGNO(i32 %113)
  %115 = call i64 @REGNO_QTY_VALID_P(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %163

117:                                              ; preds = %111
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @XEXP(i32 %118, i32 0)
  %120 = call i32 @REGNO(i32 %119)
  %121 = call i32 @REG_QTY(i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @XEXP(i32 %122, i32 1)
  %124 = call i32 @REGNO(i32 %123)
  %125 = call i32 @REG_QTY(i32 %124)
  store i32 %125, i32* %11, align 4
  %126 = load %struct.qty_table_elem*, %struct.qty_table_elem** @qty_table, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %126, i64 %128
  store %struct.qty_table_elem* %129, %struct.qty_table_elem** %12, align 8
  %130 = load %struct.qty_table_elem*, %struct.qty_table_elem** @qty_table, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %130, i64 %132
  store %struct.qty_table_elem* %133, %struct.qty_table_elem** %13, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @XEXP(i32 %134, i32 0)
  %136 = call i64 @GET_MODE(i32 %135)
  %137 = load %struct.qty_table_elem*, %struct.qty_table_elem** %12, align 8
  %138 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %162

141:                                              ; preds = %117
  %142 = load %struct.qty_table_elem*, %struct.qty_table_elem** %12, align 8
  %143 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @NULL_RTX, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %141
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @XEXP(i32 %148, i32 1)
  %150 = call i64 @GET_MODE(i32 %149)
  %151 = load %struct.qty_table_elem*, %struct.qty_table_elem** %13, align 8
  %152 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %150, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %147
  %156 = load %struct.qty_table_elem*, %struct.qty_table_elem** %13, align 8
  %157 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @NULL_RTX, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %167

162:                                              ; preds = %155, %147, %141, %117
  br label %163

163:                                              ; preds = %162, %111, %105, %100, %95, %90
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @rtx_varies_p(i32 %164, i32 %165)
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %163, %161, %88, %42
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO_QTY_VALID_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @REG_QTY(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @rtx_varies_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
