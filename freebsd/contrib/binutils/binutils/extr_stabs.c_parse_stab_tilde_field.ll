; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_tilde_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_tilde_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32 }

@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stab_handle*, i8**, i32*, i32*, i32*)* @parse_stab_tilde_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stab_tilde_field(i8* %0, %struct.stab_handle* %1, i8** %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stab_handle*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %20 = load i32*, i32** %12, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32*, i32** %13, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i8**, i8*** %10, align 8
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %14, align 8
  %25 = load i8**, i8*** %10, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 59
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = load i8**, i8*** %10, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %31, align 8
  br label %34

34:                                               ; preds = %30, %6
  %35 = load i8**, i8*** %10, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 126
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %7, align 4
  br label %146

42:                                               ; preds = %34
  %43 = load i8**, i8*** %10, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %43, align 8
  %46 = load i8**, i8*** %10, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 61
  br i1 %50, label %63, label %51

51:                                               ; preds = %42
  %52 = load i8**, i8*** %10, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 43
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i8**, i8*** %10, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 45
  br i1 %62, label %63, label %67

63:                                               ; preds = %57, %51, %42
  %64 = load i8**, i8*** %10, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %64, align 8
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i8**, i8*** %10, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 37
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %7, align 4
  br label %146

75:                                               ; preds = %67
  %76 = load i8**, i8*** %10, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %76, align 8
  %79 = load i8**, i8*** %10, align 8
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %15, align 8
  %81 = load i8**, i8*** %10, align 8
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %83 = call i32 @parse_stab_type_number(i8** %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %7, align 4
  br label %146

87:                                               ; preds = %75
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %87
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* @TRUE, align 4
  %103 = load i32*, i32** %13, align 8
  store i32 %102, i32* %103, align 4
  br label %144

104:                                              ; preds = %94, %87
  %105 = load i8*, i8** %15, align 8
  %106 = load i8**, i8*** %10, align 8
  store i8* %105, i8** %106, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %109 = load i8**, i8*** %10, align 8
  %110 = call i32 @parse_stab_type(i8* %107, %struct.stab_handle* %108, i8* null, i8** %109, i32** null)
  store i32 %110, i32* %17, align 4
  %111 = load i8**, i8*** %10, align 8
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %18, align 8
  br label %113

113:                                              ; preds = %126, %104
  %114 = load i8*, i8** %18, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 59
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i8*, i8** %18, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 0
  br label %123

123:                                              ; preds = %118, %113
  %124 = phi i1 [ false, %113 ], [ %122, %118 ]
  br i1 %124, label %125, label %129

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125
  %127 = load i8*, i8** %18, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %18, align 8
  br label %113

129:                                              ; preds = %123
  %130 = load i8*, i8** %18, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 59
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i8*, i8** %14, align 8
  %136 = call i32 @bad_stab(i8* %135)
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %7, align 4
  br label %146

138:                                              ; preds = %129
  %139 = load i32, i32* %17, align 4
  %140 = load i32*, i32** %12, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i8*, i8** %18, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8**, i8*** %10, align 8
  store i8* %142, i8** %143, align 8
  br label %144

144:                                              ; preds = %138, %101
  %145 = load i32, i32* @TRUE, align 4
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %144, %134, %85, %73, %40
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @parse_stab_type_number(i8**, i32*) #1

declare dso_local i32 @parse_stab_type(i8*, %struct.stab_handle*, i8*, i8**, i32**) #1

declare dso_local i32 @bad_stab(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
