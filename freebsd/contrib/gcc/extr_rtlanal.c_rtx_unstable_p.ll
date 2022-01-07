; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_rtx_unstable_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_rtx_unstable_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@frame_pointer_rtx = common dso_local global i32 0, align 4
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@arg_pointer_rtx = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i32* null, align 8
@ARG_POINTER_REGNUM = common dso_local global i64 0, align 8
@pic_offset_table_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtx_unstable_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @GET_CODE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %55 [
    i32 130, label %11
    i32 135, label %23
    i32 133, label %23
    i32 134, label %23
    i32 132, label %23
    i32 128, label %23
    i32 131, label %23
    i32 129, label %24
    i32 136, label %49
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @MEM_READONLY_P(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @XEXP(i32 %16, i32 0)
  %18 = call i32 @rtx_unstable_p(i32 %17)
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i1 [ true, %11 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %115

23:                                               ; preds = %1, %1, %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %115

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @frame_pointer_rtx, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @hard_frame_pointer_rtx, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @arg_pointer_rtx, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32*, i32** @fixed_regs, align 8
  %38 = load i64, i64* @ARG_POINTER_REGNUM, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %28, %24
  store i32 0, i32* %2, align 4
  br label %115

43:                                               ; preds = %36, %32
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @pic_offset_table_rtx, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %115

48:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %115

49:                                               ; preds = %1
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @MEM_VOLATILE_P(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %115

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %1, %54
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = call i8* @GET_RTX_FORMAT(i32 %57)
  store i8* %58, i8** %6, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @GET_RTX_LENGTH(i32 %59)
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %111, %56
  %63 = load i32, i32* %5, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %62
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 101
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @XEXP(i32 %74, i32 %75)
  %77 = call i32 @rtx_unstable_p(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 1, i32* %2, align 4
  br label %115

80:                                               ; preds = %73
  br label %110

81:                                               ; preds = %65
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 69
  br i1 %88, label %89, label %109

89:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %105, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @XVECLEN(i32 %92, i32 %93)
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @XVECEXP(i32 %97, i32 %98, i32 %99)
  %101 = call i32 @rtx_unstable_p(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 1, i32* %2, align 4
  br label %115

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %90

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %81
  br label %110

110:                                              ; preds = %109, %80
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %5, align 4
  br label %62

114:                                              ; preds = %62
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %103, %79, %53, %48, %47, %42, %23, %20
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @MEM_READONLY_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
