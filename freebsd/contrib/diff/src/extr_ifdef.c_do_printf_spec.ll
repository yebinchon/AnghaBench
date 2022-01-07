; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_do_printf_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_do_printf_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_data = type { i32 }
%struct.group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, %struct.file_data*, i64, %struct.group*)* @do_printf_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_printf_spec(i32* %0, i8* %1, %struct.file_data* %2, i64 %3, %struct.group* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.file_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.group*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.file_data* %2, %struct.file_data** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.group* %4, %struct.group** %11, align 8
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %12, align 8
  br label %24

24:                                               ; preds = %40, %5
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %12, align 8
  %27 = load i8, i8* %25, align 1
  store i8 %27, i8* %13, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load i8, i8* %13, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 39
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i8, i8* %13, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 48
  br label %38

38:                                               ; preds = %34, %30, %24
  %39 = phi i1 [ true, %30 ], [ true, %24 ], [ %37, %34 ]
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %24

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %46, %41
  %43 = load i8, i8* %13, align 1
  %44 = call i64 @ISDIGIT(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %12, align 8
  %49 = load i8, i8* %47, align 1
  store i8 %49, i8* %13, align 1
  br label %42

50:                                               ; preds = %42
  %51 = load i8, i8* %13, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %61, %54
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %12, align 8
  %58 = load i8, i8* %56, align 1
  store i8 %58, i8* %13, align 1
  %59 = call i64 @ISDIGIT(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %55

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %12, align 8
  %66 = load i8, i8* %64, align 1
  store i8 %66, i8* %14, align 1
  %67 = load i8, i8* %13, align 1
  %68 = sext i8 %67 to i32
  switch i32 %68, label %143 [
    i32 99, label %69
    i32 100, label %89
    i32 111, label %89
    i32 120, label %89
    i32 88, label %89
  ]

69:                                               ; preds = %63
  %70 = load i8, i8* %14, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 39
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i8* null, i8** %6, align 8
  br label %146

74:                                               ; preds = %69
  %75 = load i8*, i8** %12, align 8
  %76 = call i8* @scan_char_literal(i8* %75, i8* %15)
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store i8* null, i8** %6, align 8
  br label %146

80:                                               ; preds = %74
  %81 = load i32*, i32** %7, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i8, i8* %15, align 1
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @putc(i8 signext %84, i32* %85)
  br label %87

87:                                               ; preds = %83, %80
  br label %88

88:                                               ; preds = %87
  br label %144

89:                                               ; preds = %63, %63, %63, %63
  %90 = load %struct.file_data*, %struct.file_data** %9, align 8
  %91 = icmp ne %struct.file_data* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i8, i8* %14, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 110
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i8* null, i8** %6, align 8
  br label %146

97:                                               ; preds = %92
  %98 = load %struct.file_data*, %struct.file_data** %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @translate_line_number(%struct.file_data* %98, i64 %99)
  store i64 %100, i64* %16, align 8
  br label %109

101:                                              ; preds = %89
  %102 = load %struct.group*, %struct.group** %11, align 8
  %103 = load i8, i8* %14, align 1
  %104 = call i64 @groups_letter_value(%struct.group* %102, i8 signext %103)
  store i64 %104, i64* %16, align 8
  %105 = load i64, i64* %16, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i8* null, i8** %6, align 8
  br label %146

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %97
  %110 = load i32*, i32** %7, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %142

112:                                              ; preds = %109
  %113 = load i64, i64* %16, align 8
  store i64 %113, i64* %17, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sub nsw i64 %118, 2
  store i64 %119, i64* %18, align 8
  %120 = load i64, i64* %18, align 8
  %121 = add i64 %120, 3
  %122 = call i8* @xmalloc(i64 %121)
  store i8* %122, i8** %19, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = load i64, i64* %18, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %20, align 8
  %126 = load i8*, i8** %19, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i64, i64* %18, align 8
  %129 = call i32 @memcpy(i8* %126, i8* %127, i64 %128)
  %130 = load i8*, i8** %20, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %20, align 8
  store i8 108, i8* %130, align 1
  %132 = load i8, i8* %13, align 1
  %133 = load i8*, i8** %20, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %20, align 8
  store i8 %132, i8* %133, align 1
  %135 = load i8*, i8** %20, align 8
  store i8 0, i8* %135, align 1
  %136 = load i32*, i32** %7, align 8
  %137 = load i8*, i8** %19, align 8
  %138 = load i64, i64* %17, align 8
  %139 = call i32 @fprintf(i32* %136, i8* %137, i64 %138)
  %140 = load i8*, i8** %19, align 8
  %141 = call i32 @free(i8* %140)
  br label %142

142:                                              ; preds = %112, %109
  br label %144

143:                                              ; preds = %63
  store i8* null, i8** %6, align 8
  br label %146

144:                                              ; preds = %142, %88
  %145 = load i8*, i8** %12, align 8
  store i8* %145, i8** %6, align 8
  br label %146

146:                                              ; preds = %144, %143, %107, %96, %79, %73
  %147 = load i8*, i8** %6, align 8
  ret i8* %147
}

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i8* @scan_char_literal(i8*, i8*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i64 @translate_line_number(%struct.file_data*, i64) #1

declare dso_local i64 @groups_letter_value(%struct.group*, i8 signext) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @fprintf(i32*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
