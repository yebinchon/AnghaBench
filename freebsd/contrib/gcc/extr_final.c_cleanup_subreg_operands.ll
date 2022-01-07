; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_cleanup_subreg_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_cleanup_subreg_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8***, i8***, i8** }

@recog_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SUBREG = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@MULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup_subreg_operands(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @extract_insn_cached(i32 %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %70, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %73

10:                                               ; preds = %6
  %11 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8**, i8*** %11, i64 %13
  %15 = load i8**, i8*** %14, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @GET_CODE(i8* %16)
  %18 = load i64, i64* @SUBREG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %10
  %21 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8**, i8*** %21, i64 %23
  %25 = load i8**, i8*** %24, align 8
  %26 = call i8* @alter_subreg(i8** %25)
  %27 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 4), align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  store i8* %26, i8** %30, align 8
  br label %69

31:                                               ; preds = %10
  %32 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 4), align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @GET_CODE(i8* %36)
  %38 = load i64, i64* @PLUS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %57, label %40

40:                                               ; preds = %31
  %41 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 4), align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @GET_CODE(i8* %45)
  %47 = load i64, i64* @MULT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %40
  %50 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 4), align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @MEM_P(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %49, %40, %31
  %58 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8**, i8*** %58, i64 %60
  %62 = load i8**, i8*** %61, align 8
  %63 = call i8* @walk_alter_subreg(i8** %62)
  %64 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 4), align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %57, %49
  br label %69

69:                                               ; preds = %68, %20
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %6

73:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %143, %73
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 1), align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %146

78:                                               ; preds = %74
  %79 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8**, i8*** %79, i64 %81
  %83 = load i8**, i8*** %82, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @GET_CODE(i8* %84)
  %86 = load i64, i64* @SUBREG, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %78
  %89 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8**, i8*** %89, i64 %91
  %93 = load i8**, i8*** %92, align 8
  %94 = call i8* @alter_subreg(i8** %93)
  %95 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8**, i8*** %95, i64 %97
  %99 = load i8**, i8*** %98, align 8
  store i8* %94, i8** %99, align 8
  br label %142

100:                                              ; preds = %78
  %101 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8**, i8*** %101, i64 %103
  %105 = load i8**, i8*** %104, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @GET_CODE(i8* %106)
  %108 = load i64, i64* @PLUS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %129, label %110

110:                                              ; preds = %100
  %111 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8**, i8*** %111, i64 %113
  %115 = load i8**, i8*** %114, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @GET_CODE(i8* %116)
  %118 = load i64, i64* @MULT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %129, label %120

120:                                              ; preds = %110
  %121 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8**, i8*** %121, i64 %123
  %125 = load i8**, i8*** %124, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @MEM_P(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %120, %110, %100
  %130 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8**, i8*** %130, i64 %132
  %134 = load i8**, i8*** %133, align 8
  %135 = call i8* @walk_alter_subreg(i8** %134)
  %136 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8**, i8*** %136, i64 %138
  %140 = load i8**, i8*** %139, align 8
  store i8* %135, i8** %140, align 8
  br label %141

141:                                              ; preds = %129, %120
  br label %142

142:                                              ; preds = %141, %88
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %74

146:                                              ; preds = %74
  ret void
}

declare dso_local i32 @extract_insn_cached(i32) #1

declare dso_local i64 @GET_CODE(i8*) #1

declare dso_local i8* @alter_subreg(i8**) #1

declare dso_local i64 @MEM_P(i8*) #1

declare dso_local i8* @walk_alter_subreg(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
