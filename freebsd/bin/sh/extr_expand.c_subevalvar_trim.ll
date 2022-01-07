; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_subevalvar_trim.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_subevalvar_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodelist = type { i32 }

@EXP_CASE = common dso_local global i32 0, align 4
@EXP_TILDE = common dso_local global i32 0, align 4
@expdest = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.nodelist**, i32, i32, i32)* @subevalvar_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @subevalvar_trim(i8* %0, %struct.nodelist** noalias %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nodelist**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.nodelist** %1, %struct.nodelist*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %13, align 8
  store i32 0, i32* %15, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.nodelist**, %struct.nodelist*** %8, align 8
  %19 = load i32, i32* @EXP_CASE, align 4
  %20 = load i32, i32* @EXP_TILDE, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @argstr(i8* %17, %struct.nodelist** %18, i32 %21, i32* null)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** @expdest, align 8
  %24 = call i32 @STACKSTRNUL(i8* %23)
  %25 = call i8* (...) @stackblock()
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %12, align 8
  %29 = call i8* (...) @stackblock()
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %14, align 8
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %153 [
    i32 131, label %34
    i32 130, label %66
    i32 129, label %98
    i32 128, label %125
  ]

34:                                               ; preds = %5
  %35 = load i8*, i8** %12, align 8
  store i8* %35, i8** %13, align 8
  br label %36

36:                                               ; preds = %62, %34
  %37 = load i8*, i8** %13, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load i8*, i8** %13, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  store i32 %43, i32* %15, align 4
  %44 = load i8*, i8** %13, align 8
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @patmatch(i8* %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load i32, i32* %15, align 4
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %13, align 8
  store i8 %51, i8* %52, align 1
  %53 = load i8*, i8** %14, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @recordleft(i8* %53, i8* %54, i8* %55)
  %57 = load i8*, i8** %7, align 8
  store i8* %57, i8** %6, align 8
  br label %171

58:                                               ; preds = %40
  %59 = load i32, i32* %15, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %13, align 8
  store i8 %60, i8* %61, align 1
  br label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %13, align 8
  br label %36

65:                                               ; preds = %36
  br label %155

66:                                               ; preds = %5
  %67 = load i8*, i8** %14, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  store i8* %68, i8** %13, align 8
  br label %69

69:                                               ; preds = %91, %66
  %70 = load i8*, i8** %13, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = icmp uge i8* %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load i8*, i8** %13, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  store i32 %76, i32* %15, align 4
  %77 = load i8*, i8** %13, align 8
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %14, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @patmatch(i8* %78, i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = load i32, i32* %15, align 4
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %13, align 8
  store i8 %84, i8* %85, align 1
  %86 = load i8*, i8** %14, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @recordleft(i8* %86, i8* %87, i8* %88)
  %90 = load i8*, i8** %7, align 8
  store i8* %90, i8** %6, align 8
  br label %171

91:                                               ; preds = %73
  %92 = load i32, i32* %15, align 4
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %13, align 8
  store i8 %93, i8* %94, align 1
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 -1
  store i8* %96, i8** %13, align 8
  br label %69

97:                                               ; preds = %69
  br label %155

98:                                               ; preds = %5
  %99 = load i8*, i8** %14, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 -1
  store i8* %100, i8** %13, align 8
  br label %101

101:                                              ; preds = %121, %98
  %102 = load i8*, i8** %13, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = icmp uge i8* %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load i8*, i8** %14, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @patmatch(i8* %106, i8* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load i8*, i8** %13, align 8
  %112 = load i8*, i8** @expdest, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i8*, i8** @expdest, align 8
  %119 = call i32 @STADJUST(i32 %117, i8* %118)
  %120 = load i8*, i8** %7, align 8
  store i8* %120, i8** %6, align 8
  br label %171

121:                                              ; preds = %105
  %122 = load i8*, i8** %13, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 -1
  store i8* %123, i8** %13, align 8
  br label %101

124:                                              ; preds = %101
  br label %155

125:                                              ; preds = %5
  %126 = load i8*, i8** %12, align 8
  store i8* %126, i8** %13, align 8
  br label %127

127:                                              ; preds = %149, %125
  %128 = load i8*, i8** %13, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 -1
  %131 = icmp ult i8* %128, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %127
  %133 = load i8*, i8** %14, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = call i32 @patmatch(i8* %133, i8* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load i8*, i8** %13, align 8
  %139 = load i8*, i8** @expdest, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i8*, i8** @expdest, align 8
  %146 = call i32 @STADJUST(i32 %144, i8* %145)
  %147 = load i8*, i8** %7, align 8
  store i8* %147, i8** %6, align 8
  br label %171

148:                                              ; preds = %132
  br label %149

149:                                              ; preds = %148
  %150 = load i8*, i8** %13, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %13, align 8
  br label %127

152:                                              ; preds = %127
  br label %155

153:                                              ; preds = %5
  %154 = call i32 (...) @abort() #3
  unreachable

155:                                              ; preds = %152, %124, %97, %65
  %156 = load i8*, i8** @expdest, align 8
  %157 = call i8* (...) @stackblock()
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = sub nsw i64 %160, %162
  %164 = add nsw i64 %163, 1
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = sub nsw i32 0, %166
  %168 = load i8*, i8** @expdest, align 8
  %169 = call i32 @STADJUST(i32 %167, i8* %168)
  %170 = load i8*, i8** %7, align 8
  store i8* %170, i8** %6, align 8
  br label %171

171:                                              ; preds = %155, %137, %110, %82, %49
  %172 = load i8*, i8** %6, align 8
  ret i8* %172
}

declare dso_local i8* @argstr(i8*, %struct.nodelist**, i32, i32*) #1

declare dso_local i32 @STACKSTRNUL(i8*) #1

declare dso_local i8* @stackblock(...) #1

declare dso_local i32 @patmatch(i8*, i8*) #1

declare dso_local i32 @recordleft(i8*, i8*, i8*) #1

declare dso_local i32 @STADJUST(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
