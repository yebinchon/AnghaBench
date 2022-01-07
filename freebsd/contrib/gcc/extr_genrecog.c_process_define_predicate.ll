; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_process_define_predicate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_process_define_predicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pred_data = type { i32, i32*, i32, i32, i32, i32 }

@NUM_RTX_CODE = common dso_local global i32 0, align 4
@DEFINE_SPECIAL_PREDICATE = common dso_local global i64 0, align 8
@N = common dso_local global i8 0, align 1
@RTX_CONST_OBJ = common dso_local global i64 0, align 8
@REG = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i32 0, align 4
@MEM = common dso_local global i32 0, align 4
@CONCAT = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i32 0, align 4
@STRICT_LOW_PART = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @process_define_predicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_define_predicate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pred_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call %struct.pred_data* @xcalloc(i32 32, i32 1)
  store %struct.pred_data* %8, %struct.pred_data** %3, align 8
  %9 = load i32, i32* @NUM_RTX_CODE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @XSTR(i32 %13, i32 0)
  %15 = load %struct.pred_data*, %struct.pred_data** %3, align 8
  %16 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @DEFINE_SPECIAL_PREDICATE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.pred_data*, %struct.pred_data** %3, align 8
  %23 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @XEXP(i32 %25, i32 1)
  %27 = call i32 @compute_predicate_codes(i32 %26, i8* %12)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %95, %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @NUM_RTX_CODE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %98

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %12, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* @N, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %94

41:                                               ; preds = %32
  %42 = load %struct.pred_data*, %struct.pred_data** %3, align 8
  %43 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @GET_RTX_CLASS(i32 %48)
  %50 = load i64, i64* @RTX_CONST_OBJ, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load %struct.pred_data*, %struct.pred_data** %3, align 8
  %54 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %41
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @REG, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @SUBREG, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @MEM, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @CONCAT, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @PARALLEL, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @STRICT_LOW_PART, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.pred_data*, %struct.pred_data** %3, align 8
  %81 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %75, %71, %67, %63, %59, %55
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @UNKNOWN, align 4
  %87 = load %struct.pred_data*, %struct.pred_data** %3, align 8
  %88 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  br label %93

89:                                               ; preds = %82
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.pred_data*, %struct.pred_data** %3, align 8
  %92 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %32
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %28

98:                                               ; preds = %28
  %99 = load %struct.pred_data*, %struct.pred_data** %3, align 8
  %100 = call i32 @add_predicate(%struct.pred_data* %99)
  %101 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %101)
  ret void
}

declare dso_local %struct.pred_data* @xcalloc(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @XSTR(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @compute_predicate_codes(i32, i8*) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @GET_RTX_CLASS(i32) #1

declare dso_local i32 @add_predicate(%struct.pred_data*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
