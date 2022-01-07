; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_pad_below.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_pad_below.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_size = type { i32 }

@BLKmode = common dso_local global i32 0, align 4
@PARM_BOUNDARY = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.args_size*, i32, i32)* @pad_below to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pad_below(%struct.args_size* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.args_size*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.args_size* %0, %struct.args_size** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @BLKmode, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @GET_MODE_BITSIZE(i32 %12)
  %14 = load i32, i32* @PARM_BOUNDARY, align 4
  %15 = srem i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @GET_MODE_BITSIZE(i32 %18)
  %20 = load i32, i32* @PARM_BOUNDARY, align 4
  %21 = add nsw i32 %19, %20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @PARM_BOUNDARY, align 4
  %24 = sdiv i32 %22, %23
  %25 = load i32, i32* @PARM_BOUNDARY, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* @BITS_PER_UNIT, align 4
  %28 = sdiv i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @GET_MODE_SIZE(i32 %29)
  %31 = sub nsw i32 %28, %30
  %32 = load %struct.args_size*, %struct.args_size** %4, align 8
  %33 = getelementptr inbounds %struct.args_size, %struct.args_size* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %17, %11
  br label %67

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @TREE_CODE(i32 %38)
  %40 = load i64, i64* @INTEGER_CST, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @TREE_INT_CST_LOW(i32 %43)
  %45 = load i32, i32* @BITS_PER_UNIT, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* @PARM_BOUNDARY, align 4
  %48 = srem i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %42, %37
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @PARM_BOUNDARY, align 4
  %53 = load i32, i32* @BITS_PER_UNIT, align 4
  %54 = sdiv i32 %52, %53
  %55 = call i32 @round_up(i32 %51, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.args_size*, %struct.args_size** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = getelementptr inbounds %struct.args_size, %struct.args_size* %56, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ADD_PARM_SIZE(i32 %59, i32 %57)
  %61 = load %struct.args_size*, %struct.args_size** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = getelementptr inbounds %struct.args_size, %struct.args_size* %61, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @SUB_PARM_SIZE(i32 %64, i32 %62)
  br label %66

66:                                               ; preds = %50, %42
  br label %67

67:                                               ; preds = %66, %36
  ret void
}

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @ADD_PARM_SIZE(i32, i32) #1

declare dso_local i32 @SUB_PARM_SIZE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
