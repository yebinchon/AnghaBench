; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_use_crosses_set_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_use_crosses_set_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@REG = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@reg_stat = common dso_local global %struct.TYPE_2__* null, align 8
@MEM = common dso_local global i32 0, align 4
@mem_last_set = common dso_local global i32 0, align 4
@PUSH_ARGS = common dso_local global i64 0, align 8
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @use_crosses_set_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_crosses_set_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @GET_CODE(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @REG, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @REGNO(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load i32**, i32*** @hard_regno_nregs, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @GET_MODE(i32 %30)
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  br label %35

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34, %24
  %36 = phi i32 [ %33, %24 ], [ 1, %34 ]
  %37 = add i32 %20, %36
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %62, %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @INSN_CUID(i64 %56)
  %58 = load i32, i32* %5, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %136

61:                                               ; preds = %50, %42
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %38

65:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %136

66:                                               ; preds = %2
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @MEM, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* @mem_last_set, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %136

75:                                               ; preds = %70, %66
  %76 = load i32, i32* %8, align 4
  %77 = call i8* @GET_RTX_FORMAT(i32 %76)
  store i8* %77, i8** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @GET_RTX_LENGTH(i32 %78)
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %132, %75
  %82 = load i32, i32* %7, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %135

84:                                               ; preds = %81
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 69
  br i1 %91, label %92, label %114

92:                                               ; preds = %84
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @XVECLEN(i32 %93, i32 %94)
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %110, %92
  %98 = load i32, i32* %11, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @XVECEXP(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @use_crosses_set_p(i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 1, i32* %3, align 4
  br label %136

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %11, align 4
  br label %97

113:                                              ; preds = %97
  br label %131

114:                                              ; preds = %84
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 101
  br i1 %121, label %122, label %130

122:                                              ; preds = %114
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @XEXP(i32 %123, i32 %124)
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @use_crosses_set_p(i32 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i32 1, i32* %3, align 4
  br label %136

130:                                              ; preds = %122, %114
  br label %131

131:                                              ; preds = %130, %113
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %7, align 4
  br label %81

135:                                              ; preds = %81
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %129, %108, %74, %65, %60
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @INSN_CUID(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
