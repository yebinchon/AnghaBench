; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_find_temp_slot_from_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_find_temp_slot_from_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temp_slot = type { i64, i64, i64, i64, %struct.temp_slot* }

@PLUS = common dso_local global i64 0, align 8
@virtual_stack_vars_rtx = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@EXPR_LIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.temp_slot* (i64)* @find_temp_slot_from_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.temp_slot* @find_temp_slot_from_address(i64 %0) #0 {
  %2 = alloca %struct.temp_slot*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.temp_slot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = call i32 (...) @max_slot_level()
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %107, %1
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %110

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.temp_slot** @temp_slots_at_level(i32 %12)
  %14 = load %struct.temp_slot*, %struct.temp_slot** %13, align 8
  store %struct.temp_slot* %14, %struct.temp_slot** %4, align 8
  br label %15

15:                                               ; preds = %102, %11
  %16 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  %17 = icmp ne %struct.temp_slot* %16, null
  br i1 %17, label %18, label %106

18:                                               ; preds = %15
  %19 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  %20 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @XEXP(i64 %21, i32 0)
  %23 = load i64, i64* %3, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %67, label %25

25:                                               ; preds = %18
  %26 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  %27 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %67, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @GET_CODE(i64 %32)
  %34 = load i64, i64* @PLUS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @XEXP(i64 %37, i32 0)
  %39 = load i64, i64* @virtual_stack_vars_rtx, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load i64, i64* %3, align 8
  %43 = call i64 @XEXP(i64 %42, i32 1)
  %44 = call i64 @GET_CODE(i64 %43)
  %45 = load i64, i64* @CONST_INT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @XEXP(i64 %48, i32 1)
  %50 = call i64 @INTVAL(i64 %49)
  %51 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  %52 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %47
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @XEXP(i64 %56, i32 1)
  %58 = call i64 @INTVAL(i64 %57)
  %59 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  %60 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  %63 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = icmp slt i64 %58, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %55, %25, %18
  %68 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  store %struct.temp_slot* %68, %struct.temp_slot** %2, align 8
  br label %146

69:                                               ; preds = %55, %47, %41, %36, %31
  %70 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  %71 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  %75 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  %76 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @GET_CODE(i64 %77)
  %79 = load i64, i64* @EXPR_LIST, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %74
  %82 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  %83 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %96, %81
  %86 = load i64, i64* %5, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i64, i64* %5, align 8
  %90 = call i64 @XEXP(i64 %89, i32 0)
  %91 = load i64, i64* %3, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  store %struct.temp_slot* %94, %struct.temp_slot** %2, align 8
  br label %146

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %5, align 8
  %98 = call i64 @XEXP(i64 %97, i32 1)
  store i64 %98, i64* %5, align 8
  br label %85

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %74, %69
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  %104 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %103, i32 0, i32 4
  %105 = load %struct.temp_slot*, %struct.temp_slot** %104, align 8
  store %struct.temp_slot* %105, %struct.temp_slot** %4, align 8
  br label %15

106:                                              ; preds = %15
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %6, align 4
  br label %8

110:                                              ; preds = %8
  %111 = load i64, i64* %3, align 8
  %112 = call i64 @GET_CODE(i64 %111)
  %113 = load i64, i64* @PLUS, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load i64, i64* %3, align 8
  %117 = call i64 @XEXP(i64 %116, i32 0)
  %118 = call i64 @REG_P(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i64, i64* %3, align 8
  %122 = call i64 @XEXP(i64 %121, i32 0)
  %123 = call %struct.temp_slot* @find_temp_slot_from_address(i64 %122)
  store %struct.temp_slot* %123, %struct.temp_slot** %4, align 8
  %124 = icmp ne %struct.temp_slot* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  store %struct.temp_slot* %126, %struct.temp_slot** %2, align 8
  br label %146

127:                                              ; preds = %120, %115, %110
  %128 = load i64, i64* %3, align 8
  %129 = call i64 @GET_CODE(i64 %128)
  %130 = load i64, i64* @PLUS, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load i64, i64* %3, align 8
  %134 = call i64 @XEXP(i64 %133, i32 1)
  %135 = call i64 @REG_P(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i64, i64* %3, align 8
  %139 = call i64 @XEXP(i64 %138, i32 1)
  %140 = call %struct.temp_slot* @find_temp_slot_from_address(i64 %139)
  store %struct.temp_slot* %140, %struct.temp_slot** %4, align 8
  %141 = icmp ne %struct.temp_slot* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  store %struct.temp_slot* %143, %struct.temp_slot** %2, align 8
  br label %146

144:                                              ; preds = %137, %132, %127
  br label %145

145:                                              ; preds = %144
  store %struct.temp_slot* null, %struct.temp_slot** %2, align 8
  br label %146

146:                                              ; preds = %145, %142, %125, %93, %67
  %147 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  ret %struct.temp_slot* %147
}

declare dso_local i32 @max_slot_level(...) #1

declare dso_local %struct.temp_slot** @temp_slots_at_level(i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i64 @REG_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
