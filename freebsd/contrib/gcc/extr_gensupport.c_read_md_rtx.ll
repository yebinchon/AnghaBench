; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_read_md_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_read_md_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_elem = type { i32, i32, i32, %struct.queue_elem* }

@define_attr_queue = common dso_local global %struct.queue_elem* null, align 8
@define_pred_queue = common dso_local global %struct.queue_elem* null, align 8
@define_insn_queue = common dso_local global %struct.queue_elem* null, align 8
@other_queue = common dso_local global %struct.queue_elem* null, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@read_rtx_filename = common dso_local global i32 0, align 4
@sequence_num = common dso_local global i32 0, align 4
@insn_elision = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_md_rtx(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.queue_elem**, align 8
  %7 = alloca %struct.queue_elem*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %9

9:                                                ; preds = %83, %64, %2
  %10 = load %struct.queue_elem*, %struct.queue_elem** @define_attr_queue, align 8
  %11 = icmp ne %struct.queue_elem* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store %struct.queue_elem** @define_attr_queue, %struct.queue_elem*** %6, align 8
  br label %30

13:                                               ; preds = %9
  %14 = load %struct.queue_elem*, %struct.queue_elem** @define_pred_queue, align 8
  %15 = icmp ne %struct.queue_elem* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store %struct.queue_elem** @define_pred_queue, %struct.queue_elem*** %6, align 8
  br label %29

17:                                               ; preds = %13
  %18 = load %struct.queue_elem*, %struct.queue_elem** @define_insn_queue, align 8
  %19 = icmp ne %struct.queue_elem* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store %struct.queue_elem** @define_insn_queue, %struct.queue_elem*** %6, align 8
  br label %28

21:                                               ; preds = %17
  %22 = load %struct.queue_elem*, %struct.queue_elem** @other_queue, align 8
  %23 = icmp ne %struct.queue_elem* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store %struct.queue_elem** @other_queue, %struct.queue_elem*** %6, align 8
  br label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @NULL_RTX, align 4
  store i32 %26, i32* %3, align 4
  br label %89

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %20
  br label %29

29:                                               ; preds = %28, %16
  br label %30

30:                                               ; preds = %29, %12
  %31 = load %struct.queue_elem**, %struct.queue_elem*** %6, align 8
  %32 = load %struct.queue_elem*, %struct.queue_elem** %31, align 8
  store %struct.queue_elem* %32, %struct.queue_elem** %7, align 8
  %33 = load %struct.queue_elem*, %struct.queue_elem** %7, align 8
  %34 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %33, i32 0, i32 3
  %35 = load %struct.queue_elem*, %struct.queue_elem** %34, align 8
  %36 = load %struct.queue_elem**, %struct.queue_elem*** %6, align 8
  store %struct.queue_elem* %35, %struct.queue_elem** %36, align 8
  %37 = load %struct.queue_elem*, %struct.queue_elem** %7, align 8
  %38 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = load %struct.queue_elem*, %struct.queue_elem** %7, align 8
  %41 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @read_rtx_filename, align 4
  %43 = load %struct.queue_elem*, %struct.queue_elem** %7, align 8
  %44 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @sequence_num, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.queue_elem*, %struct.queue_elem** %7, align 8
  %50 = call i32 @free(%struct.queue_elem* %49)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @GET_CODE(i32 %51)
  switch i32 %52, label %86 [
    i32 131, label %53
    i32 132, label %53
    i32 128, label %72
    i32 130, label %72
    i32 129, label %72
  ]

53:                                               ; preds = %30, %30
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @XSTR(i32 %54, i32 2)
  %56 = call i32 @maybe_eval_c_test(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @sequence_num, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @sequence_num, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load i32, i32* @insn_elision, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %9

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %58
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @XSTR(i32 %69, i32 0)
  %71 = call i32 @record_insn_name(i32 %68, i32 %70)
  br label %87

72:                                               ; preds = %30, %30, %30
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @XSTR(i32 %73, i32 1)
  %75 = call i32 @maybe_eval_c_test(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @sequence_num, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @sequence_num, align 4
  br label %85

80:                                               ; preds = %72
  %81 = load i32, i32* @insn_elision, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %9

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %77
  br label %87

86:                                               ; preds = %30
  br label %87

87:                                               ; preds = %86, %85, %66
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %25
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @free(%struct.queue_elem*) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @maybe_eval_c_test(i32) #1

declare dso_local i32 @XSTR(i32, i32) #1

declare dso_local i32 @record_insn_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
