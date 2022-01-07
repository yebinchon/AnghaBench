; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c_cp_find_first_component_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c_cp_find_first_component_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@LENGTH_OF_OPERATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @cp_find_first_component_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_find_first_component_aux(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %189, %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %187 [
    i32 60, label %15
    i32 40, label %58
    i32 62, label %101
    i32 41, label %101
    i32 0, label %111
    i32 58, label %111
    i32 111, label %113
    i32 32, label %186
    i32 44, label %186
    i32 46, label %186
    i32 38, label %186
    i32 42, label %186
  ]

15:                                               ; preds = %8
  %16 = load i32, i32* %6, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = call i32 @cp_find_first_component_aux(i8* %21, i32 1)
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %49, %15
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 62
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 58
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @demangled_name_complaint(i8* %42)
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strlen(i8* %44)
  store i32 %45, i32* %3, align 4
  br label %192

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, 2
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = call i32 @cp_find_first_component_aux(i8* %53, i32 1)
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %25

57:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %188

58:                                               ; preds = %8
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = call i32 @cp_find_first_component_aux(i8* %64, i32 1)
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %92, %58
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 41
  br i1 %75, label %76, label %100

76:                                               ; preds = %68
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 58
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @demangled_name_complaint(i8* %85)
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @strlen(i8* %87)
  store i32 %88, i32* %3, align 4
  br label %192

89:                                               ; preds = %76
  %90 = load i32, i32* %6, align 4
  %91 = add i32 %90, 2
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = call i32 @cp_find_first_component_aux(i8* %96, i32 1)
  %98 = load i32, i32* %6, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %68

100:                                              ; preds = %68
  store i32 1, i32* %7, align 4
  br label %188

101:                                              ; preds = %8, %8
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %192

106:                                              ; preds = %101
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 @demangled_name_complaint(i8* %107)
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 @strlen(i8* %109)
  store i32 %110, i32* %3, align 4
  br label %192

111:                                              ; preds = %8, %8
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %192

113:                                              ; preds = %8
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %185

116:                                              ; preds = %113
  %117 = load i8*, i8** %4, align 8
  %118 = load i32, i32* %6, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i32, i32* @LENGTH_OF_OPERATOR, align 4
  %122 = call i32 @strncmp(i8* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %185

124:                                              ; preds = %116
  %125 = load i32, i32* @LENGTH_OF_OPERATOR, align 4
  %126 = load i32, i32* %6, align 4
  %127 = add i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %136, %124
  %129 = load i8*, i8** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = call i32 @isspace(i8 signext %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32, i32* %6, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %128

139:                                              ; preds = %128
  %140 = load i8*, i8** %4, align 8
  %141 = load i32, i32* %6, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  switch i32 %145, label %181 [
    i32 60, label %146
    i32 62, label %162
    i32 45, label %162
    i32 40, label %178
  ]

146:                                              ; preds = %139
  %147 = load i8*, i8** %4, align 8
  %148 = load i32, i32* %6, align 4
  %149 = add i32 %148, 1
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 60
  br i1 %154, label %155, label %158

155:                                              ; preds = %146
  %156 = load i32, i32* %6, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %161

158:                                              ; preds = %146
  %159 = load i32, i32* %6, align 4
  %160 = add i32 %159, 0
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %158, %155
  br label %184

162:                                              ; preds = %139, %139
  %163 = load i8*, i8** %4, align 8
  %164 = load i32, i32* %6, align 4
  %165 = add i32 %164, 1
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 62
  br i1 %170, label %171, label %174

171:                                              ; preds = %162
  %172 = load i32, i32* %6, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %177

174:                                              ; preds = %162
  %175 = load i32, i32* %6, align 4
  %176 = add i32 %175, 0
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %174, %171
  br label %184

178:                                              ; preds = %139
  %179 = load i32, i32* %6, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %184

181:                                              ; preds = %139
  %182 = load i32, i32* %6, align 4
  %183 = add i32 %182, 0
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %181, %178, %177, %161
  br label %185

185:                                              ; preds = %184, %116, %113
  store i32 0, i32* %7, align 4
  br label %188

186:                                              ; preds = %8, %8, %8, %8, %8
  store i32 1, i32* %7, align 4
  br label %188

187:                                              ; preds = %8
  store i32 0, i32* %7, align 4
  br label %188

188:                                              ; preds = %187, %186, %185, %100, %57
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %6, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %6, align 4
  br label %8

192:                                              ; preds = %111, %106, %104, %84, %41
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @demangled_name_complaint(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
