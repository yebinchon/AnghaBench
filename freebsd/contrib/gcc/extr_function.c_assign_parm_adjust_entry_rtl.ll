; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_adjust_entry_rtl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_adjust_entry_rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assign_parm_data_one = type { i32, i64, i64, i32*, i32, i32* }

@PARALLEL = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assign_parm_data_one*)* @assign_parm_adjust_entry_rtl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_parm_adjust_entry_rtl(%struct.assign_parm_data_one* %0) #0 {
  %2 = alloca %struct.assign_parm_data_one*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.assign_parm_data_one* %0, %struct.assign_parm_data_one** %2, align 8
  %7 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %8 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %11 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %14 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @GET_CODE(i32* %18)
  %20 = load i64, i64* @PARALLEL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @validize_mem(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %27 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %30 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @int_size_in_bytes(i32 %31)
  %33 = call i32 @emit_group_store(i32 %24, i32* %25, i32 %28, i32 %32)
  br label %53

34:                                               ; preds = %17
  %35 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %36 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @UNITS_PER_WORD, align 4
  %39 = srem i32 %37, %38
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @REGNO(i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @validize_mem(i32* %45)
  %47 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %48 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @UNITS_PER_WORD, align 4
  %51 = sdiv i32 %49, %50
  %52 = call i32 @move_block_from_reg(i32 %44, i32 %46, i32 %51)
  br label %53

53:                                               ; preds = %34, %22
  %54 = load i32*, i32** %4, align 8
  store i32* %54, i32** %3, align 8
  br label %128

55:                                               ; preds = %1
  %56 = load i32*, i32** %3, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32*, i32** %4, align 8
  store i32* %59, i32** %3, align 8
  br label %127

60:                                               ; preds = %55
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @GET_CODE(i32* %61)
  %63 = load i64, i64* @PARALLEL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %126

65:                                               ; preds = %60
  %66 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %67 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BLKmode, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %126

71:                                               ; preds = %65
  %72 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %73 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @BLKmode, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %126

77:                                               ; preds = %71
  %78 = load i32*, i32** %3, align 8
  %79 = call i64 @XVECLEN(i32* %78, i32 0)
  store i64 %79, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %80

80:                                               ; preds = %122, %77
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %125

84:                                               ; preds = %80
  %85 = load i32*, i32** %3, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @XVECEXP(i32* %85, i32 0, i64 %86)
  %88 = call i64 @XEXP(i32 %87, i32 0)
  %89 = load i64, i64* @NULL_RTX, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %84
  %92 = load i32*, i32** %3, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @XVECEXP(i32* %92, i32 0, i64 %93)
  %95 = call i64 @XEXP(i32 %94, i32 0)
  %96 = call i64 @REG_P(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %91
  %99 = load i32*, i32** %3, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @XVECEXP(i32* %99, i32 0, i64 %100)
  %102 = call i64 @XEXP(i32 %101, i32 0)
  %103 = call i64 @GET_MODE(i64 %102)
  %104 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %105 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %98
  %109 = load i32*, i32** %3, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @XVECEXP(i32* %109, i32 0, i64 %110)
  %112 = call i64 @XEXP(i32 %111, i32 1)
  %113 = call i64 @INTVAL(i64 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load i32*, i32** %3, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @XVECEXP(i32* %116, i32 0, i64 %117)
  %119 = call i64 @XEXP(i32 %118, i32 0)
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** %3, align 8
  br label %125

121:                                              ; preds = %108, %98, %91, %84
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %5, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %5, align 8
  br label %80

125:                                              ; preds = %115, %80
  br label %126

126:                                              ; preds = %125, %71, %65, %60
  br label %127

127:                                              ; preds = %126, %58
  br label %128

128:                                              ; preds = %127, %53
  %129 = load i32*, i32** %3, align 8
  %130 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %131 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %130, i32 0, i32 3
  store i32* %129, i32** %131, align 8
  ret void
}

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32 @emit_group_store(i32, i32*, i32, i32) #1

declare dso_local i32 @validize_mem(i32*) #1

declare dso_local i32 @int_size_in_bytes(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @move_block_from_reg(i32, i32, i32) #1

declare dso_local i32 @REGNO(i32*) #1

declare dso_local i64 @XVECLEN(i32*, i32) #1

declare dso_local i64 @XEXP(i32, i32) #1

declare dso_local i32 @XVECEXP(i32*, i32, i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @INTVAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
