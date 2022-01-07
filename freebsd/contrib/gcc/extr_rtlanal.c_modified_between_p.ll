; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_modified_between_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_modified_between_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modified_between_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GET_CODE(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %123

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %59 [
    i32 134, label %21
    i32 135, label %21
    i32 133, label %21
    i32 136, label %21
    i32 128, label %21
    i32 132, label %21
    i32 130, label %22
    i32 137, label %22
    i32 131, label %23
    i32 129, label %54
  ]

21:                                               ; preds = %19, %19, %19, %19, %19, %19
  store i32 0, i32* %4, align 4
  br label %123

22:                                               ; preds = %19, %19
  store i32 1, i32* %4, align 4
  br label %123

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @XEXP(i32 %24, i32 0)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @modified_between_p(i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %123

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @MEM_READONLY_P(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %123

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @NEXT_INSN(i32 %37)
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %50, %36
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @memory_modified_in_insn_p(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %123

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @NEXT_INSN(i32 %51)
  store i32 %52, i32* %12, align 4
  br label %39

53:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %123

54:                                               ; preds = %19
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @reg_set_between_p(i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %123

59:                                               ; preds = %19
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = call i8* @GET_RTX_FORMAT(i32 %61)
  store i8* %62, i8** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @GET_RTX_LENGTH(i32 %63)
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %119, %60
  %67 = load i32, i32* %10, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %122

69:                                               ; preds = %66
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 101
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @XEXP(i32 %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @modified_between_p(i32 %80, i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 1, i32* %4, align 4
  br label %123

86:                                               ; preds = %77, %69
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 69
  br i1 %93, label %94, label %117

94:                                               ; preds = %86
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @XVECLEN(i32 %95, i32 %96)
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %113, %94
  %100 = load i32, i32* %11, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @XVECEXP(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @modified_between_p(i32 %106, i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store i32 1, i32* %4, align 4
  br label %123

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %11, align 4
  br label %99

116:                                              ; preds = %99
  br label %117

117:                                              ; preds = %116, %86
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %10, align 4
  br label %66

122:                                              ; preds = %66
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %111, %85, %54, %53, %48, %35, %30, %22, %21, %18
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @MEM_READONLY_P(i32) #1

declare dso_local i32 @NEXT_INSN(i32) #1

declare dso_local i32 @memory_modified_in_insn_p(i32, i32) #1

declare dso_local i32 @reg_set_between_p(i32, i32, i32) #1

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
