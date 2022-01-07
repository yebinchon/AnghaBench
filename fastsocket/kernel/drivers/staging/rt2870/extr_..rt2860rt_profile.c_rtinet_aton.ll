; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860rt_profile.c_rtinet_aton.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860rt_profile.c_rtinet_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtinet_aton(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32* %12, i32** %11, align 8
  br label %13

13:                                               ; preds = %98, %2
  store i32 0, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 48
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 120
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 88
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %18
  store i32 16, i32* %7, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  br label %33

32:                                               ; preds = %24
  store i32 8, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %29
  br label %34

34:                                               ; preds = %33, %13
  br label %35

35:                                               ; preds = %61, %44, %34
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %9, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %35
  %41 = load i8, i8* %9, align 1
  %42 = call i64 @isdigit(i8 zeroext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul i32 %45, %46
  %48 = load i8, i8* %9, align 1
  %49 = sext i8 %48 to i32
  %50 = sub nsw i32 %49, 48
  %51 = add i32 %47, %50
  store i32 %51, i32* %6, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %4, align 8
  br label %35

54:                                               ; preds = %40
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load i8, i8* %9, align 1
  %59 = call i64 @isxdigit(i8 zeroext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, 4
  %64 = load i8, i8* %9, align 1
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, 10
  %67 = load i8, i8* %9, align 1
  %68 = call i64 @islower(i8 zeroext %67)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 97, i32 65
  %72 = sub nsw i32 %66, %71
  %73 = add i32 %63, %72
  store i32 %73, i32* %6, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %4, align 8
  br label %35

76:                                               ; preds = %57, %54
  br label %77

77:                                               ; preds = %76, %35
  %78 = load i8*, i8** %4, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 46
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = icmp uge i32* %83, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  %89 = icmp ugt i32 %88, 255
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %82
  store i32 0, i32* %3, align 4
  br label %169

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %4, align 8
  br label %98

97:                                               ; preds = %77
  br label %99

98:                                               ; preds = %91
  br label %13

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %111, %99
  %101 = load i8*, i8** %4, align 8
  %102 = load i8, i8* %101, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %4, align 8
  %107 = load i8, i8* %105, align 1
  %108 = call i32 @isspace(i8 zeroext %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %169

111:                                              ; preds = %104
  br label %100

112:                                              ; preds = %100
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %115 = ptrtoint i32* %113 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = add nsw i64 %118, 1
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  switch i32 %121, label %165 [
    i32 1, label %122
    i32 2, label %123
    i32 3, label %133
    i32 4, label %147
  ]

122:                                              ; preds = %112
  br label %165

123:                                              ; preds = %112
  %124 = load i32, i32* %6, align 4
  %125 = icmp ugt i32 %124, 16777215
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %169

127:                                              ; preds = %123
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %129 = load i32, i32* %128, align 16
  %130 = shl i32 %129, 24
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %165

133:                                              ; preds = %112
  %134 = load i32, i32* %6, align 4
  %135 = icmp ugt i32 %134, 65535
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %169

137:                                              ; preds = %133
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %139 = load i32, i32* %138, align 16
  %140 = shl i32 %139, 24
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 16
  %144 = or i32 %140, %143
  %145 = load i32, i32* %6, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %6, align 4
  br label %165

147:                                              ; preds = %112
  %148 = load i32, i32* %6, align 4
  %149 = icmp ugt i32 %148, 255
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %169

151:                                              ; preds = %147
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %153 = load i32, i32* %152, align 16
  %154 = shl i32 %153, 24
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 16
  %158 = or i32 %154, %157
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %160 = load i32, i32* %159, align 8
  %161 = shl i32 %160, 8
  %162 = or i32 %158, %161
  %163 = load i32, i32* %6, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %112, %151, %137, %127, %122
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @htonl(i32 %166)
  %168 = load i32*, i32** %5, align 8
  store i32 %167, i32* %168, align 4
  store i32 1, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %150, %136, %126, %110, %90
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isxdigit(i8 zeroext) #1

declare dso_local i64 @islower(i8 zeroext) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
