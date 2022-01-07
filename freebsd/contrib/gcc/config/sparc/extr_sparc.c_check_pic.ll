; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_check_pic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_check_pic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@flag_pic = common dso_local global i32 0, align 4
@recog_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SYMBOL_REF = common dso_local global i32 0, align 4
@CONST = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@global_offset_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_pic(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @flag_pic, align 4
  switch i32 %3, label %62 [
    i32 1, label %4
    i32 2, label %61
  ]

4:                                                ; preds = %1
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @GET_CODE(i32 %9)
  %11 = load i32, i32* @SYMBOL_REF, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @GET_CODE(i32 %18)
  %20 = load i32, i32* @CONST, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %55, label %22

22:                                               ; preds = %13
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @XEXP(i32 %27, i32 0)
  %29 = call i32 @GET_CODE(i32 %28)
  %30 = load i32, i32* @MINUS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %22
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @XEXP(i32 %37, i32 0)
  %39 = call i32 @XEXP(i32 %38, i32 0)
  %40 = load i32, i32* @global_offset_table, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @XEXP(i32 %47, i32 0)
  %49 = call i32 @XEXP(i32 %48, i32 1)
  %50 = call i32 @GET_CODE(i32 %49)
  %51 = load i32, i32* @CONST, align 4
  %52 = icmp eq i32 %50, %51
  br label %53

53:                                               ; preds = %42, %32, %22
  %54 = phi i1 [ false, %32 ], [ false, %22 ], [ %52, %42 ]
  br label %55

55:                                               ; preds = %53, %13
  %56 = phi i1 [ true, %13 ], [ %54, %53 ]
  br label %57

57:                                               ; preds = %55, %4
  %58 = phi i1 [ false, %4 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @gcc_assert(i32 %59)
  br label %61

61:                                               ; preds = %1, %57
  br label %62

62:                                               ; preds = %1, %61
  ret i32 1
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
