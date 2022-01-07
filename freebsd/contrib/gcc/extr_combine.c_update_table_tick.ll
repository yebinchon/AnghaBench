; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_update_table_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_update_table_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@REG = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@label_tick = common dso_local global i32 0, align 4
@reg_stat = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @update_table_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_table_tick(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @GET_CODE(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i8* @GET_RTX_FORMAT(i32 %13)
  store i8* %14, i8** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @REG, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %1
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @REGNO(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load i32**, i32*** @hard_regno_nregs, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %2, align 8
  %32 = call i64 @GET_MODE(i64 %31)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  br label %36

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %25
  %37 = phi i32 [ %34, %25 ], [ 1, %35 ]
  %38 = add i32 %21, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %51, %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32, i32* @label_tick, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %40

54:                                               ; preds = %40
  br label %133

55:                                               ; preds = %1
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @GET_RTX_LENGTH(i32 %56)
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %130, %55
  %60 = load i32, i32* %5, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %133

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 101
  br i1 %69, label %70, label %129

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %125

73:                                               ; preds = %70
  %74 = load i64, i64* %2, align 8
  %75 = call i64 @ARITHMETIC_P(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %125

77:                                               ; preds = %73
  %78 = load i64, i64* %2, align 8
  %79 = call i64 @XEXP(i64 %78, i32 0)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %2, align 8
  %81 = call i64 @XEXP(i64 %80, i32 1)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %133

86:                                               ; preds = %77
  %87 = load i64, i64* %10, align 8
  %88 = call i64 @ARITHMETIC_P(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i64 @XEXP(i64 %92, i32 0)
  %94 = icmp eq i64 %91, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i64 @XEXP(i64 %97, i32 1)
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %90
  br label %133

101:                                              ; preds = %95, %86
  %102 = load i64, i64* %9, align 8
  %103 = call i64 @ARITHMETIC_P(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i64 @XEXP(i64 %107, i32 0)
  %109 = icmp eq i64 %106, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i64 @XEXP(i64 %112, i32 1)
  %114 = icmp eq i64 %111, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %110, %105
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @XEXP(i64 %118, i32 0)
  %120 = icmp eq i64 %117, %119
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 1, i32 0
  %123 = call i64 @XEXP(i64 %116, i32 %122)
  call void @update_table_tick(i64 %123)
  br label %133

124:                                              ; preds = %110, %101
  br label %125

125:                                              ; preds = %124, %73, %70
  %126 = load i64, i64* %2, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i64 @XEXP(i64 %126, i32 %127)
  call void @update_table_tick(i64 %128)
  br label %129

129:                                              ; preds = %125, %62
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %5, align 4
  br label %59

133:                                              ; preds = %54, %115, %100, %85, %59
  ret void
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i64 @ARITHMETIC_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
