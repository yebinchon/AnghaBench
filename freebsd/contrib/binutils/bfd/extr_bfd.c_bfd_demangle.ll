; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_demangle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_demangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bfd_demangle(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = call signext i8 @bfd_get_symbol_leading_char(i32* %24)
  %26 = sext i8 %25 to i32
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %31, %23, %18, %3
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %10, align 8
  br label %36

36:                                               ; preds = %48, %34
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 46
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 36
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ true, %36 ], [ %45, %41 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  br label %36

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  store i64 %56, i64* %12, align 8
  store i8* null, i8** %9, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 64)
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %89

61:                                               ; preds = %51
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = add nsw i64 %66, 1
  %68 = call i8* @bfd_malloc(i64 %67)
  store i8* %68, i8** %9, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i8* null, i8** %4, align 8
  br label %156

72:                                               ; preds = %61
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = call i32 @memcpy(i8* %73, i8* %74, i64 %79)
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = getelementptr inbounds i8, i8* %81, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %9, align 8
  store i8* %88, i8** %6, align 8
  br label %89

89:                                               ; preds = %72, %51
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i8* @cplus_demangle(i8* %90, i32 %91)
  store i8* %92, i8** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @free(i8* %96)
  br label %98

98:                                               ; preds = %95, %89
  %99 = load i8*, i8** %8, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i8* null, i8** %4, align 8
  br label %156

102:                                              ; preds = %98
  %103 = load i64, i64* %12, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i8*, i8** %11, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %154

108:                                              ; preds = %105, %102
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %13, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i8*, i8** %8, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %11, align 8
  br label %118

118:                                              ; preds = %114, %108
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %14, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* %13, align 8
  %125 = add i64 %123, %124
  %126 = load i64, i64* %14, align 8
  %127 = add i64 %125, %126
  %128 = call i8* @bfd_malloc(i64 %127)
  store i8* %128, i8** %15, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %150

131:                                              ; preds = %118
  %132 = load i8*, i8** %15, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load i64, i64* %12, align 8
  %135 = call i32 @memcpy(i8* %132, i8* %133, i64 %134)
  %136 = load i8*, i8** %15, align 8
  %137 = load i64, i64* %12, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load i8*, i8** %8, align 8
  %140 = load i64, i64* %13, align 8
  %141 = call i32 @memcpy(i8* %138, i8* %139, i64 %140)
  %142 = load i8*, i8** %15, align 8
  %143 = load i64, i64* %12, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  %145 = load i64, i64* %13, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  %147 = load i8*, i8** %11, align 8
  %148 = load i64, i64* %14, align 8
  %149 = call i32 @memcpy(i8* %146, i8* %147, i64 %148)
  br label %150

150:                                              ; preds = %131, %118
  %151 = load i8*, i8** %8, align 8
  %152 = call i32 @free(i8* %151)
  %153 = load i8*, i8** %15, align 8
  store i8* %153, i8** %8, align 8
  br label %154

154:                                              ; preds = %150, %105
  %155 = load i8*, i8** %8, align 8
  store i8* %155, i8** %4, align 8
  br label %156

156:                                              ; preds = %154, %101, %71
  %157 = load i8*, i8** %4, align 8
  ret i8* %157
}

declare dso_local signext i8 @bfd_get_symbol_leading_char(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @cplus_demangle(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
