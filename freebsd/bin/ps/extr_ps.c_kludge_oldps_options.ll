; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ps/extr_ps.c_kludge_oldps_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ps/extr_ps.c_kludge_oldps_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @kludge_oldps_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kludge_oldps_options(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %10, align 8
  br label %19

19:                                               ; preds = %40, %17
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i8* @strchr(i8* %25, i8 signext %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i8*, i8** %13, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 58
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i8*, i8** %10, align 8
  store i8* %38, i8** %9, align 8
  br label %43

39:                                               ; preds = %31, %24
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %10, align 8
  br label %19

43:                                               ; preds = %37, %19
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 45
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  store i8* %53, i8** %4, align 8
  br label %177

54:                                               ; preds = %47, %44
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strlen(i8* %55)
  store i64 %56, i64* %8, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 -1
  store i8* %60, i8** %10, align 8
  store i8* null, i8** %14, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 116
  br i1 %64, label %65, label %90

65:                                               ; preds = %54
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 45
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i8*, i8** %7, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %7, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 45
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @isdigitch(i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82, %77, %74
  %88 = load i8*, i8** %10, align 8
  store i8 84, i8* %88, align 1
  br label %89

89:                                               ; preds = %87, %82
  br label %125

90:                                               ; preds = %70, %65, %54
  %91 = load i8*, i8** %9, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %124

93:                                               ; preds = %90
  %94 = load i8*, i8** %10, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @isdigitch(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %117, %98
  %100 = load i8*, i8** %10, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = icmp uge i8* %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i8*, i8** %10, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 44
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %10, align 8
  %110 = load i8, i8* %109, align 1
  %111 = call i64 @isdigitch(i8 signext %110)
  %112 = icmp ne i64 %111, 0
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i1 [ true, %103 ], [ %112, %108 ]
  br label %115

115:                                              ; preds = %113, %99
  %116 = phi i1 [ false, %99 ], [ %114, %113 ]
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 -1
  store i8* %119, i8** %10, align 8
  br label %99

120:                                              ; preds = %115
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  store i8* %122, i8** %14, align 8
  br label %123

123:                                              ; preds = %120, %93
  br label %124

124:                                              ; preds = %123, %90
  br label %125

125:                                              ; preds = %124, %89
  %126 = load i8*, i8** %6, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 45
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i8*, i8** %14, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i8*, i8** %6, align 8
  store i8* %134, i8** %4, align 8
  br label %177

135:                                              ; preds = %130, %125
  %136 = load i64, i64* %8, align 8
  %137 = add i64 %136, 3
  %138 = call i8* @malloc(i64 %137)
  store i8* %138, i8** %12, align 8
  store i8* %138, i8** %11, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %135
  %143 = load i8*, i8** %6, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 45
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i8*, i8** %12, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %12, align 8
  store i8 45, i8* %148, align 1
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i8*, i8** %14, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @strcpy(i8* %154, i8* %155)
  br label %175

157:                                              ; preds = %150
  %158 = load i8*, i8** %14, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  store i64 %162, i64* %8, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = load i8*, i8** %6, align 8
  %165 = load i64, i64* %8, align 8
  %166 = call i32 @memcpy(i8* %163, i8* %164, i64 %165)
  %167 = load i64, i64* %8, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 %167
  store i8* %169, i8** %12, align 8
  %170 = load i8*, i8** %12, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %12, align 8
  store i8 112, i8* %170, align 1
  %172 = load i8*, i8** %12, align 8
  %173 = load i8*, i8** %14, align 8
  %174 = call i32 @strcpy(i8* %172, i8* %173)
  br label %175

175:                                              ; preds = %157, %153
  %176 = load i8*, i8** %11, align 8
  store i8* %176, i8** %4, align 8
  br label %177

177:                                              ; preds = %175, %133, %52
  %178 = load i8*, i8** %4, align 8
  ret i8* %178
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isdigitch(i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @xo_errx(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
