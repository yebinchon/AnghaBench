; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_print_java_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_print_java_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, i8*, i32)* @d_print_java_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_java_identifier(%struct.d_print_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.d_print_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.d_print_info* %0, %struct.d_print_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %7, align 8
  br label %17

17:                                               ; preds = %131, %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %134

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = icmp sgt i64 %26, 3
  br i1 %27, label %28, label %126

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 95
  br i1 %33, label %34, label %126

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 95
  br i1 %39, label %40, label %126

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 85
  br i1 %45, label %46, label %126

46:                                               ; preds = %40
  store i64 0, i64* %9, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  store i8* %48, i8** %10, align 8
  br label %49

49:                                               ; preds = %104, %46
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ult i8* %50, %51
  br i1 %52, label %53, label %107

53:                                               ; preds = %49
  %54 = load i8*, i8** %10, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @IS_DIGIT(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %61, 48
  store i32 %62, i32* %11, align 4
  br label %98

63:                                               ; preds = %53
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sge i32 %66, 65
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sle i32 %71, 70
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i8*, i8** %10, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = sub nsw i32 %76, 65
  %78 = add nsw i32 %77, 10
  store i32 %78, i32* %11, align 4
  br label %97

79:                                               ; preds = %68, %63
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp sge i32 %82, 97
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sle i32 %87, 102
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i8*, i8** %10, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = sub nsw i32 %92, 97
  %94 = add nsw i32 %93, 10
  store i32 %94, i32* %11, align 4
  br label %96

95:                                               ; preds = %84, %79
  br label %107

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %73
  br label %98

98:                                               ; preds = %97, %58
  %99 = load i64, i64* %9, align 8
  %100 = mul i64 %99, 16
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %100, %102
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %98
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %10, align 8
  br label %49

107:                                              ; preds = %95, %49
  %108 = load i8*, i8** %10, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = icmp ult i8* %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = load i8*, i8** %10, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 95
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load i64, i64* %9, align 8
  %118 = icmp ult i64 %117, 256
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %121 = load i64, i64* %9, align 8
  %122 = trunc i64 %121 to i8
  %123 = call i32 @d_append_char(%struct.d_print_info* %120, i8 signext %122)
  %124 = load i8*, i8** %10, align 8
  store i8* %124, i8** %7, align 8
  br label %131

125:                                              ; preds = %116, %111, %107
  br label %126

126:                                              ; preds = %125, %40, %34, %28, %21
  %127 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = load i8, i8* %128, align 1
  %130 = call i32 @d_append_char(%struct.d_print_info* %127, i8 signext %129)
  br label %131

131:                                              ; preds = %126, %119
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %7, align 8
  br label %17

134:                                              ; preds = %17
  ret void
}

declare dso_local i64 @IS_DIGIT(i8 signext) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
