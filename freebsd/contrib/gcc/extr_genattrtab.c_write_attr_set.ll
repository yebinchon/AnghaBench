; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_attr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_attr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_desc = type { i32 }

@COND = common dso_local global i64 0, align 8
@NOT = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@true_rtx = common dso_local global i64 0, align 8
@false_rtx = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%sif \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"else \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"else\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attr_desc*, i32, i64, i8*, i8*, i64, i32, i32)* @write_attr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_attr_set(%struct.attr_desc* %0, i32 %1, i64 %2, i8* %3, i8* %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.attr_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.attr_desc* %0, %struct.attr_desc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @GET_CODE(i64 %24)
  %26 = load i64, i64* @COND, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %148

28:                                               ; preds = %8
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @XEXP(i64 %29, i32 1)
  store i64 %30, i64* %17, align 8
  %31 = load i64, i64* %14, align 8
  store i64 %31, i64* %18, align 8
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %32

32:                                               ; preds = %109, %28
  %33 = load i32, i32* %21, align 4
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @XVECLEN(i64 %34, i32 0)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %112

37:                                               ; preds = %32
  %38 = load i64, i64* %18, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* %21, align 4
  %41 = call i64 @XVECEXP(i64 %39, i32 0, i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call i64 @eliminate_known_true(i64 %38, i64 %41, i32 %42, i32 %43)
  store i64 %44, i64* %22, align 8
  %45 = load i32, i32* @NOT, align 4
  %46 = load i64, i64* %22, align 8
  %47 = call i64 @attr_rtx(i32 %45, i64 %46)
  store i64 %47, i64* %19, align 8
  %48 = load i32, i32* @AND, align 4
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* %19, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i64 @insert_right_side(i32 %48, i64 %49, i64 %50, i32 %51, i32 %52)
  store i64 %53, i64* %19, align 8
  %54 = load i64, i64* %22, align 8
  %55 = load i64, i64* @true_rtx, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %37
  %58 = load i64, i64* %19, align 8
  %59 = load i64, i64* @false_rtx, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57, %37
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* %21, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i64 @XVECEXP(i64 %62, i32 0, i32 %64)
  store i64 %65, i64* %17, align 8
  br label %112

66:                                               ; preds = %57
  %67 = load i32, i32* @AND, align 4
  %68 = load i64, i64* %18, align 8
  %69 = load i64, i64* %22, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i64 @insert_right_side(i32 %67, i64 %68, i64 %69, i32 %70, i32 %71)
  store i64 %72, i64* %23, align 8
  %73 = load i64, i64* %23, align 8
  %74 = load i64, i64* @false_rtx, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %109

77:                                               ; preds = %66
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @write_indent(i32 %78)
  %80 = load i32, i32* %20, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %83)
  store i32 0, i32* %20, align 4
  %85 = load i64, i64* %22, align 8
  %86 = call i32 @write_test_expr(i64 %85, i32 0)
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 2
  %90 = call i32 @write_indent(i32 %89)
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.attr_desc*, %struct.attr_desc** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 4
  %95 = load i64, i64* %11, align 8
  %96 = load i32, i32* %21, align 4
  %97 = add nsw i32 %96, 1
  %98 = call i64 @XVECEXP(i64 %95, i32 0, i32 %97)
  %99 = load i8*, i8** %12, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i64, i64* %23, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  call void @write_attr_set(%struct.attr_desc* %92, i32 %94, i64 %98, i8* %99, i8* %100, i64 %101, i32 %102, i32 %103)
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 2
  %106 = call i32 @write_indent(i32 %105)
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i64, i64* %19, align 8
  store i64 %108, i64* %18, align 8
  br label %109

109:                                              ; preds = %77, %76
  %110 = load i32, i32* %21, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %21, align 4
  br label %32

112:                                              ; preds = %61, %32
  %113 = load i32, i32* %20, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @write_indent(i32 %116)
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 2
  %121 = call i32 @write_indent(i32 %120)
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %123

123:                                              ; preds = %115, %112
  %124 = load %struct.attr_desc*, %struct.attr_desc** %9, align 8
  %125 = load i32, i32* %20, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  br label %132

129:                                              ; preds = %123
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 4
  br label %132

132:                                              ; preds = %129, %127
  %133 = phi i32 [ %128, %127 ], [ %131, %129 ]
  %134 = load i64, i64* %17, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = load i64, i64* %18, align 8
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %16, align 4
  call void @write_attr_set(%struct.attr_desc* %124, i32 %133, i64 %134, i8* %135, i8* %136, i64 %137, i32 %138, i32 %139)
  %140 = load i32, i32* %20, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %132
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 2
  %145 = call i32 @write_indent(i32 %144)
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %147

147:                                              ; preds = %142, %132
  br label %158

148:                                              ; preds = %8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @write_indent(i32 %149)
  %151 = load i8*, i8** %12, align 8
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %151)
  %153 = load %struct.attr_desc*, %struct.attr_desc** %9, align 8
  %154 = load i64, i64* %11, align 8
  %155 = call i32 @write_attr_value(%struct.attr_desc* %153, i64 %154)
  %156 = load i8*, i8** %13, align 8
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %148, %147
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @eliminate_known_true(i64, i64, i32, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i64 @attr_rtx(i32, i64) #1

declare dso_local i64 @insert_right_side(i32, i64, i64, i32, i32) #1

declare dso_local i32 @write_indent(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @write_test_expr(i64, i32) #1

declare dso_local i32 @write_attr_value(%struct.attr_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
