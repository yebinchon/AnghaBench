; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libssp/extr_strncat-chk.c___strncat_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libssp/extr_strncat-chk.c___strncat_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__strncat_chk(i8* noalias %0, i8* noalias %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %11, align 8
  br label %14

14:                                               ; preds = %24, %4
  %15 = load i64, i64* %9, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %9, align 8
  %17 = icmp eq i64 %15, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @__chk_fail()
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %10, align 1
  br label %24

24:                                               ; preds = %20
  %25 = load i8, i8* %10, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %14, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 -2
  store i8* %32, i8** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp uge i64 %33, 4
  br i1 %34, label %35, label %136

35:                                               ; preds = %28
  %36 = load i64, i64* %8, align 8
  %37 = lshr i64 %36, 2
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %129, %35
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %9, align 8
  %41 = icmp eq i64 %39, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (...) @__chk_fail()
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  %47 = load i8, i8* %45, align 1
  store i8 %47, i8* %10, align 1
  %48 = load i8, i8* %10, align 1
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 %48, i8* %50, align 1
  %51 = load i8, i8* %10, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i8*, i8** %11, align 8
  store i8* %55, i8** %5, align 8
  br label %176

56:                                               ; preds = %44
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %9, align 8
  %59 = icmp eq i64 %57, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 (...) @__chk_fail()
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  %65 = load i8, i8* %63, align 1
  store i8 %65, i8* %10, align 1
  %66 = load i8, i8* %10, align 1
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  store i8 %66, i8* %68, align 1
  %69 = load i8, i8* %10, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i8*, i8** %11, align 8
  store i8* %73, i8** %5, align 8
  br label %176

74:                                               ; preds = %62
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* %9, align 8
  %77 = icmp eq i64 %75, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 (...) @__chk_fail()
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  %83 = load i8, i8* %81, align 1
  store i8 %83, i8* %10, align 1
  %84 = load i8, i8* %10, align 1
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  store i8 %84, i8* %86, align 1
  %87 = load i8, i8* %10, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i8*, i8** %11, align 8
  store i8* %91, i8** %5, align 8
  br label %176

92:                                               ; preds = %80
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %9, align 8
  %95 = icmp eq i64 %93, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 (...) @__chk_fail()
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %7, align 8
  %101 = load i8, i8* %99, align 1
  store i8 %101, i8* %10, align 1
  %102 = load i8, i8* %10, align 1
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %6, align 8
  store i8 %102, i8* %104, align 1
  %105 = load i8, i8* %10, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i8*, i8** %11, align 8
  store i8* %109, i8** %5, align 8
  br label %176

110:                                              ; preds = %98
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, -1
  store i64 %112, i64* %9, align 8
  %113 = icmp eq i64 %111, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 (...) @__chk_fail()
  br label %116

116:                                              ; preds = %114, %110
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %7, align 8
  %119 = load i8, i8* %117, align 1
  store i8 %119, i8* %10, align 1
  %120 = load i8, i8* %10, align 1
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %6, align 8
  store i8 %120, i8* %122, align 1
  %123 = load i8, i8* %10, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i8*, i8** %11, align 8
  store i8* %127, i8** %5, align 8
  br label %176

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %12, align 8
  %131 = add i64 %130, -1
  store i64 %131, i64* %12, align 8
  %132 = icmp ugt i64 %131, 0
  br i1 %132, label %38, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* %8, align 8
  %135 = and i64 %134, 3
  store i64 %135, i64* %8, align 8
  br label %136

136:                                              ; preds = %133, %28
  br label %137

137:                                              ; preds = %158, %136
  %138 = load i64, i64* %8, align 8
  %139 = icmp ugt i64 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %137
  %141 = load i64, i64* %9, align 8
  %142 = add i64 %141, -1
  store i64 %142, i64* %9, align 8
  %143 = icmp eq i64 %141, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = call i32 (...) @__chk_fail()
  br label %146

146:                                              ; preds = %144, %140
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %7, align 8
  %149 = load i8, i8* %147, align 1
  store i8 %149, i8* %10, align 1
  %150 = load i8, i8* %10, align 1
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %6, align 8
  store i8 %150, i8* %152, align 1
  %153 = load i8, i8* %10, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i8*, i8** %11, align 8
  store i8* %157, i8** %5, align 8
  br label %176

158:                                              ; preds = %146
  %159 = load i64, i64* %8, align 8
  %160 = add i64 %159, -1
  store i64 %160, i64* %8, align 8
  br label %137

161:                                              ; preds = %137
  %162 = load i8, i8* %10, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load i64, i64* %9, align 8
  %167 = add i64 %166, -1
  store i64 %167, i64* %9, align 8
  %168 = icmp eq i64 %166, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = call i32 (...) @__chk_fail()
  br label %171

171:                                              ; preds = %169, %165
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %6, align 8
  store i8 0, i8* %173, align 1
  br label %174

174:                                              ; preds = %171, %161
  %175 = load i8*, i8** %11, align 8
  store i8* %175, i8** %5, align 8
  br label %176

176:                                              ; preds = %174, %156, %126, %108, %90, %72, %54
  %177 = load i8*, i8** %5, align 8
  ret i8* %177
}

declare dso_local i32 @__chk_fail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
