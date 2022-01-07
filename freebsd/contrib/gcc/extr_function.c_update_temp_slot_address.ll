; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_update_temp_slot_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_update_temp_slot_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temp_slot = type { i64 }

@PLUS = common dso_local global i64 0, align 8
@EXPR_LIST = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_temp_slot_address(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.temp_slot*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @rtx_equal_p(i64 %6, i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %129

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = call %struct.temp_slot* @find_temp_slot_from_address(i64 %12)
  store %struct.temp_slot* %13, %struct.temp_slot** %5, align 8
  %14 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %15 = icmp eq %struct.temp_slot* %14, null
  br i1 %15, label %16, label %92

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @GET_CODE(i64 %17)
  %19 = load i64, i64* @PLUS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %129

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @REG_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @XEXP(i64 %27, i32 0)
  %29 = load i64, i64* %4, align 8
  call void @update_temp_slot_address(i64 %28, i64 %29)
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @XEXP(i64 %30, i32 1)
  %32 = load i64, i64* %4, align 8
  call void @update_temp_slot_address(i64 %31, i64 %32)
  br label %129

33:                                               ; preds = %22
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @GET_CODE(i64 %34)
  %36 = load i64, i64* @PLUS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %129

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %3, align 8
  %42 = call i64 @XEXP(i64 %41, i32 0)
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @XEXP(i64 %43, i32 0)
  %45 = call i64 @rtx_equal_p(i64 %42, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @XEXP(i64 %48, i32 1)
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @XEXP(i64 %50, i32 1)
  call void @update_temp_slot_address(i64 %49, i64 %51)
  br label %91

52:                                               ; preds = %40
  %53 = load i64, i64* %3, align 8
  %54 = call i64 @XEXP(i64 %53, i32 1)
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @XEXP(i64 %55, i32 0)
  %57 = call i64 @rtx_equal_p(i64 %54, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i64, i64* %3, align 8
  %61 = call i64 @XEXP(i64 %60, i32 0)
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @XEXP(i64 %62, i32 1)
  call void @update_temp_slot_address(i64 %61, i64 %63)
  br label %90

64:                                               ; preds = %52
  %65 = load i64, i64* %3, align 8
  %66 = call i64 @XEXP(i64 %65, i32 0)
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @XEXP(i64 %67, i32 1)
  %69 = call i64 @rtx_equal_p(i64 %66, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i64, i64* %3, align 8
  %73 = call i64 @XEXP(i64 %72, i32 1)
  %74 = load i64, i64* %4, align 8
  %75 = call i64 @XEXP(i64 %74, i32 0)
  call void @update_temp_slot_address(i64 %73, i64 %75)
  br label %89

76:                                               ; preds = %64
  %77 = load i64, i64* %3, align 8
  %78 = call i64 @XEXP(i64 %77, i32 1)
  %79 = load i64, i64* %4, align 8
  %80 = call i64 @XEXP(i64 %79, i32 1)
  %81 = call i64 @rtx_equal_p(i64 %78, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i64, i64* %3, align 8
  %85 = call i64 @XEXP(i64 %84, i32 0)
  %86 = load i64, i64* %4, align 8
  %87 = call i64 @XEXP(i64 %86, i32 0)
  call void @update_temp_slot_address(i64 %85, i64 %87)
  br label %88

88:                                               ; preds = %83, %76
  br label %89

89:                                               ; preds = %88, %71
  br label %90

90:                                               ; preds = %89, %59
  br label %91

91:                                               ; preds = %90, %47
  br label %129

92:                                               ; preds = %11
  %93 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %94 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i64, i64* %4, align 8
  %99 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %100 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %128

101:                                              ; preds = %92
  %102 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %103 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @GET_CODE(i64 %104)
  %106 = load i64, i64* @EXPR_LIST, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %101
  %109 = load i32, i32* @VOIDmode, align 4
  %110 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %111 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @NULL_RTX, align 8
  %114 = call i8* @gen_rtx_EXPR_LIST(i32 %109, i64 %112, i64 %113)
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %117 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %108, %101
  %119 = load i32, i32* @VOIDmode, align 4
  %120 = load i64, i64* %4, align 8
  %121 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %122 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i8* @gen_rtx_EXPR_LIST(i32 %119, i64 %120, i64 %123)
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %127 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %118, %97
  br label %129

129:                                              ; preds = %10, %21, %26, %38, %91, %128
  ret void
}

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local %struct.temp_slot* @find_temp_slot_from_address(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i8* @gen_rtx_EXPR_LIST(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
