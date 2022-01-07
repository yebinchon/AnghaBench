; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_find_constant_pool_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_find_constant_pool_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNSPEC = common dso_local global i64 0, align 8
@UNSPEC_LTREL_BASE = common dso_local global i64 0, align 8
@UNSPEC_VOLATILE = common dso_local global i64 0, align 8
@UNSPECV_POOL_ENTRY = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@UNSPEC_LTREF = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*)* @find_constant_pool_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_constant_pool_ref(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @GET_CODE(i64 %9)
  %11 = load i64, i64* @UNSPEC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @XINT(i64 %14, i32 1)
  %16 = load i64, i64* @UNSPEC_LTREL_BASE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %137

19:                                               ; preds = %13, %2
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @GET_CODE(i64 %20)
  %22 = load i64, i64* @UNSPEC_VOLATILE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @XINT(i64 %25, i32 1)
  %27 = load i64, i64* @UNSPECV_POOL_ENTRY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %137

30:                                               ; preds = %24, %19
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @GET_CODE(i64 %31)
  %33 = load i64, i64* @SYMBOL_REF, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @CONSTANT_POOL_ADDRESS_P(i64 %36)
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i1 [ true, %30 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @gcc_assert(i32 %42)
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @GET_CODE(i64 %44)
  %46 = load i64, i64* @UNSPEC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %40
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @XINT(i64 %49, i32 1)
  %51 = load i64, i64* @UNSPEC_LTREF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = load i64, i64* %3, align 8
  %55 = call i64 @XVECEXP(i64 %54, i32 0, i32 0)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @GET_CODE(i64 %56)
  %58 = load i64, i64* @SYMBOL_REF, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @CONSTANT_POOL_ADDRESS_P(i64 %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %60, %53
  %65 = phi i1 [ false, %53 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @gcc_assert(i32 %66)
  %68 = load i64*, i64** %4, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NULL_RTX, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i64, i64* %8, align 8
  %74 = load i64*, i64** %4, align 8
  store i64 %73, i64* %74, align 8
  br label %82

75:                                               ; preds = %64
  %76 = load i64*, i64** %4, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @gcc_assert(i32 %80)
  br label %82

82:                                               ; preds = %75, %72
  br label %137

83:                                               ; preds = %48, %40
  %84 = load i64, i64* %3, align 8
  %85 = call i64 @GET_CODE(i64 %84)
  %86 = call i8* @GET_RTX_FORMAT(i64 %85)
  store i8* %86, i8** %7, align 8
  %87 = load i64, i64* %3, align 8
  %88 = call i64 @GET_CODE(i64 %87)
  %89 = call i32 @GET_RTX_LENGTH(i64 %88)
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %134, %83
  %92 = load i32, i32* %5, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %137

94:                                               ; preds = %91
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 101
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = load i64, i64* %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @XEXP(i64 %103, i32 %104)
  %106 = load i64*, i64** %4, align 8
  call void @find_constant_pool_ref(i64 %105, i64* %106)
  br label %133

107:                                              ; preds = %94
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 69
  br i1 %114, label %115, label %132

115:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %128, %115
  %117 = load i32, i32* %6, align 4
  %118 = load i64, i64* %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @XVECLEN(i64 %118, i32 %119)
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i64, i64* %3, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i64 @XVECEXP(i64 %123, i32 %124, i32 %125)
  %127 = load i64*, i64** %4, align 8
  call void @find_constant_pool_ref(i64 %126, i64* %127)
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %116

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131, %107
  br label %133

133:                                              ; preds = %132, %102
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %5, align 4
  br label %91

137:                                              ; preds = %18, %29, %82, %91
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XINT(i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i64) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
