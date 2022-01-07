; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ecdsa_atr.c_br_ecdsa_asn1_to_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ecdsa_atr.c_br_ecdsa_asn1_to_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_ecdsa_asn1_to_raw(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [254 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %183

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 48
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i64 0, i64* %3, align 8
  br label %183

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i64
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ugt i64 %30, 128
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 129
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i64 0, i64* %3, align 8
  br label %183

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %5, align 8
  %43 = sub i64 %42, 3
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i64 0, i64* %3, align 8
  br label %183

46:                                               ; preds = %36
  store i64 3, i64* %12, align 8
  br label %54

47:                                               ; preds = %25
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %5, align 8
  %50 = sub i64 %49, 2
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i64 0, i64* %3, align 8
  br label %183

53:                                               ; preds = %47
  store i64 2, i64* %12, align 8
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %12, align 8
  %58 = getelementptr inbounds i8, i8* %55, i64 %56
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i64 0, i64* %3, align 8
  br label %183

63:                                               ; preds = %54
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %12, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %12, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %65
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i64
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp uge i64 %70, 128
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i64 0, i64* %3, align 8
  br label %183

73:                                               ; preds = %63
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %7, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %80, 2
  %82 = load i64, i64* %5, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  store i64 0, i64* %3, align 8
  br label %183

85:                                               ; preds = %73
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %12, align 8
  %89 = getelementptr inbounds i8, i8* %86, i64 %87
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 2
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i64 0, i64* %3, align 8
  br label %183

94:                                               ; preds = %85
  %95 = load i8*, i8** %6, align 8
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %12, align 8
  %98 = getelementptr inbounds i8, i8* %95, i64 %96
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i64
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = icmp uge i64 %101, 128
  br i1 %102, label %109, label %103

103:                                              ; preds = %94
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* %12, align 8
  %107 = sub i64 %105, %106
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103, %94
  store i64 0, i64* %3, align 8
  br label %183

110:                                              ; preds = %103
  %111 = load i8*, i8** %6, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %8, align 8
  br label %114

114:                                              ; preds = %124, %110
  %115 = load i64, i64* %10, align 8
  %116 = icmp ugt i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i8*, i8** %7, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br label %122

122:                                              ; preds = %117, %114
  %123 = phi i1 [ false, %114 ], [ %121, %117 ]
  br i1 %123, label %124, label %129

124:                                              ; preds = %122
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, -1
  store i64 %126, i64* %10, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %7, align 8
  br label %114

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %140, %129
  %131 = load i64, i64* %11, align 8
  %132 = icmp ugt i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i8*, i8** %8, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 0
  br label %138

138:                                              ; preds = %133, %130
  %139 = phi i1 [ false, %130 ], [ %137, %133 ]
  br i1 %139, label %140, label %145

140:                                              ; preds = %138
  %141 = load i64, i64* %11, align 8
  %142 = add i64 %141, -1
  store i64 %142, i64* %11, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %8, align 8
  br label %130

145:                                              ; preds = %138
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* %11, align 8
  %148 = icmp ugt i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i64, i64* %10, align 8
  br label %153

151:                                              ; preds = %145
  %152 = load i64, i64* %11, align 8
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i64 [ %150, %149 ], [ %152, %151 ]
  store i64 %154, i64* %9, align 8
  %155 = load i64, i64* %9, align 8
  %156 = shl i64 %155, 1
  store i64 %156, i64* %5, align 8
  %157 = getelementptr inbounds [254 x i8], [254 x i8]* %13, i64 0, i64 0
  %158 = load i64, i64* %5, align 8
  %159 = call i32 @memset(i8* %157, i32 0, i64 %158)
  %160 = getelementptr inbounds [254 x i8], [254 x i8]* %13, i64 0, i64 0
  %161 = load i64, i64* %9, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = load i64, i64* %10, align 8
  %164 = sub i64 0, %163
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8*, i8** %7, align 8
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @memcpy(i8* %165, i8* %166, i64 %167)
  %169 = getelementptr inbounds [254 x i8], [254 x i8]* %13, i64 0, i64 0
  %170 = load i64, i64* %5, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  %172 = load i64, i64* %11, align 8
  %173 = sub i64 0, %172
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8*, i8** %8, align 8
  %176 = load i64, i64* %11, align 8
  %177 = call i32 @memcpy(i8* %174, i8* %175, i64 %176)
  %178 = load i8*, i8** %4, align 8
  %179 = getelementptr inbounds [254 x i8], [254 x i8]* %13, i64 0, i64 0
  %180 = load i64, i64* %5, align 8
  %181 = call i32 @memcpy(i8* %178, i8* %179, i64 %180)
  %182 = load i64, i64* %5, align 8
  store i64 %182, i64* %3, align 8
  br label %183

183:                                              ; preds = %153, %109, %93, %84, %72, %62, %52, %45, %35, %24, %17
  %184 = load i64, i64* %3, align 8
  ret i64 %184
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
