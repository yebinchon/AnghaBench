; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_reg_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_reg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@mt9d112_regs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@mt9d112_client = common dso_local global %struct.TYPE_8__* null, align 8
@WORD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @mt9d112_reg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9d112_reg_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mt9d112_regs, i32 0, i32 7), align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mt9d112_regs, i32 0, i32 6), align 8
  %8 = call i64 @mt9d112_i2c_write_table(i32* %6, i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %1, align 8
  br label %99

13:                                               ; preds = %0
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mt9d112_regs, i32 0, i32 0), align 8
  store i64 %14, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %40, %13
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mt9d112_client, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mt9d112_regs, i32 0, i32 5), align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mt9d112_regs, i32 0, i32 5), align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WORD_LEN, align 4
  %34 = call i64 @mt9d112_i2c_write(i32 %22, i32 %27, i32 %32, i32 %33)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i64, i64* %4, align 8
  store i64 %38, i64* %1, align 8
  br label %99

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %3, align 8
  br label %15

43:                                               ; preds = %15
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mt9d112_regs, i32 0, i32 1), align 8
  store i64 %44, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %45

45:                                               ; preds = %70, %43
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* %2, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mt9d112_client, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mt9d112_regs, i32 0, i32 4), align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mt9d112_regs, i32 0, i32 4), align 8
  %59 = load i64, i64* %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WORD_LEN, align 4
  %64 = call i64 @mt9d112_i2c_write(i32 %52, i32 %57, i32 %62, i32 %63)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %49
  %68 = load i64, i64* %4, align 8
  store i64 %68, i64* %1, align 8
  br label %99

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %3, align 8
  br label %45

73:                                               ; preds = %45
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mt9d112_client, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @WORD_LEN, align 4
  %78 = call i64 @mt9d112_i2c_write(i32 %76, i32 13732, i32 1427, i32 %77)
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i64, i64* %4, align 8
  store i64 %82, i64* %1, align 8
  br label %99

83:                                               ; preds = %73
  %84 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mt9d112_regs, i32 0, i32 3), align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mt9d112_regs, i32 0, i32 2), align 8
  %87 = call i64 @mt9d112_i2c_write_table(i32* %85, i32 %86)
  store i64 %87, i64* %4, align 8
  %88 = load i64, i64* %4, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i64, i64* %4, align 8
  store i64 %91, i64* %1, align 8
  br label %99

92:                                               ; preds = %83
  %93 = call i64 (...) @mt9d112_set_lens_roll_off()
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %4, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i64, i64* %4, align 8
  store i64 %97, i64* %1, align 8
  br label %99

98:                                               ; preds = %92
  store i64 0, i64* %1, align 8
  br label %99

99:                                               ; preds = %98, %96, %90, %81, %67, %37, %11
  %100 = load i64, i64* %1, align 8
  ret i64 %100
}

declare dso_local i64 @mt9d112_i2c_write_table(i32*, i32) #1

declare dso_local i64 @mt9d112_i2c_write(i32, i32, i32, i32) #1

declare dso_local i64 @mt9d112_set_lens_roll_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
