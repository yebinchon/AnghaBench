; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_util.c_print_autowrap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_util.c_print_autowrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_autowrap(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %23 = load i32, i32* @MAX_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strcpy(i8* %27, i8* %28)
  %30 = call i32 @strlen(i8* %27)
  store i32 %30, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %47, %5
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %27, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %27, i64 %44
  store i8 32, i8* %45, align 1
  br label %46

46:                                               ; preds = %42, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %53, 2
  %55 = sub nsw i32 %52, %54
  %56 = icmp sle i32 %51, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %15, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sdiv i32 %62, 2
  %64 = call i32 @wmove(i32* %58, i32 %59, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @waddstr(i32* %65, i8* %27)
  br label %171

67:                                               ; preds = %50
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %13, align 4
  store i32 1, i32* %11, align 4
  store i8* %27, i8** %20, align 8
  br label %70

70:                                               ; preds = %168, %67
  %71 = load i8*, i8** %20, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i8*, i8** %20, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %73, %70
  %79 = phi i1 [ false, %70 ], [ %77, %73 ]
  br i1 %79, label %80, label %170

80:                                               ; preds = %78
  %81 = load i8*, i8** %20, align 8
  %82 = call i8* @strchr(i8* %81, i8 signext 32)
  store i8* %82, i8** %21, align 8
  %83 = load i8*, i8** %21, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %21, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %21, align 8
  store i8 0, i8* %86, align 1
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* %16, align 4
  %92 = load i8*, i8** %20, align 8
  %93 = call i32 @strlen(i8* %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %131, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %97
  %101 = load i32, i32* %17, align 4
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %103, label %135

103:                                              ; preds = %100
  %104 = load i8*, i8** %21, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %135

106:                                              ; preds = %103
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 1
  %109 = load i8*, i8** %21, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = add nsw i32 %108, %110
  %112 = load i32, i32* %16, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %106
  %115 = load i8*, i8** %21, align 8
  %116 = call i8* @strchr(i8* %115, i8 signext 32)
  store i8* %116, i8** %22, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = load i8*, i8** %22, align 8
  %123 = load i8*, i8** %21, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = add nsw i64 %121, %126
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp sgt i64 %127, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %118, %114, %88
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %131, %118, %106, %103, %100, %97
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @wmove(i32* %136, i32 %137, i32 %138)
  %140 = load i32*, i32** %6, align 8
  %141 = load i8*, i8** %20, align 8
  %142 = call i32 @waddstr(i32* %140, i8* %141)
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @getyx(i32* %143, i32 %144, i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  %149 = load i8*, i8** %21, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %167

151:                                              ; preds = %135
  %152 = load i8*, i8** %21, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 32
  br i1 %155, label %156, label %167

156:                                              ; preds = %151
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %165, %156
  %160 = load i8*, i8** %21, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %21, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 32
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %159

166:                                              ; preds = %159
  store i32 1, i32* %11, align 4
  br label %168

167:                                              ; preds = %151, %135
  store i32 0, i32* %11, align 4
  br label %168

168:                                              ; preds = %167, %166
  %169 = load i8*, i8** %21, align 8
  store i8* %169, i8** %20, align 8
  br label %70

170:                                              ; preds = %78
  br label %171

171:                                              ; preds = %170, %57
  %172 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %172)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @wmove(i32*, i32, i32) #2

declare dso_local i32 @waddstr(i32*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @getyx(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
