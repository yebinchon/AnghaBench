; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_report_sec_mismatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_report_sec_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"(unknown reference)\00", align 1
@sec_mismatch_count = common dso_local global i32 0, align 4
@sec_mismatch_verbose = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [81 x i8] c"%s(%s+0x%llx): Section mismatch in reference from the %s %s%s to the %s %s:%s%s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [128 x i8] c"The function %s%s() references\0Athe %s %s%s%s.\0AThis is often because %s lacks a %s\0Aannotation or the annotation of %s is wrong.\0A\00", align 1
@symbol_white_list = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [162 x i8] c"The variable %s references\0Athe %s %s%s%s\0AIf the reference is valid then annotate the\0Avariable with __init* or __refdata (see linux/init.h) or name the variable:\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [163 x i8] c"The function %s() references a %s in an exit section.\0AOften the %s %s%s has valid usage outside the exit section\0Aand the fix is to remove the %sannotation of %s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [149 x i8] c"The variable %s references\0Athe %s %s%s%s\0AIf the reference is valid then annotate the\0Avariable with __exit* (see linux/init.h) or name the variable:\0A\00", align 1
@.str.12 = private unnamed_addr constant [109 x i8] c"The %s %s%s%s references\0Aa %s %s%s%s.\0AIf %s is only used by %s then\0Aannotate %s with a matching annotation.\0A\00", align 1
@.str.13 = private unnamed_addr constant [231 x i8] c"The %s %s%s%s references\0Aa %s %s%s%s.\0AThis is often seen when error handling in the init function\0Auses functionality in the exit path.\0AThe fix is often to remove the %sannotation of\0A%s%s so it may be used outside an exit section.\0A\00", align 1
@.str.14 = private unnamed_addr constant [231 x i8] c"The %s %s%s%s references\0Aa %s %s%s%s.\0AThis is often seen when error handling in the exit function\0Auses functionality in the init path.\0AThe fix is often to remove the %sannotation of\0A%s%s so it may be used outside an init section.\0A\00", align 1
@.str.15 = private unnamed_addr constant [108 x i8] c"The symbol %s is exported and annotated %s\0AFix this by removing the %sannotation of %s or drop the export.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i64, i8*, i32, i8*, i8*, i32)* @report_sec_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_sec_mismatch(i8* %0, i32 %1, i8* %2, i64 %3, i8* %4, i32 %5, i8* %6, i8* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i8**, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %25 = load i32, i32* %15, align 4
  switch i32 %25, label %28 [
    i32 0, label %26
    i32 1, label %27
  ]

26:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  br label %29

27:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  br label %29

28:                                               ; preds = %9
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  br label %29

29:                                               ; preds = %28, %27, %26
  %30 = load i32, i32* %18, align 4
  switch i32 %30, label %33 [
    i32 0, label %31
    i32 1, label %32
  ]

31:                                               ; preds = %29
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  br label %34

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %22, align 8
  br label %34

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  br label %34

34:                                               ; preds = %33, %32, %31
  %35 = load i32, i32* @sec_mismatch_count, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @sec_mismatch_count, align 4
  %37 = load i32, i32* @sec_mismatch_verbose, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %188

40:                                               ; preds = %34
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i8*, i8** %19, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %20, align 8
  %47 = load i8*, i8** %21, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = load i8*, i8** %22, align 8
  %51 = call i32 @warn(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0), i8* %41, i8* %42, i64 %43, i8* %44, i8* %45, i8* %46, i8* %47, i8* %48, i8* %49, i8* %50)
  %52 = load i32, i32* %11, align 4
  switch i32 %52, label %185 [
    i32 130, label %53
    i32 136, label %68
    i32 131, label %91
    i32 137, label %102
    i32 128, label %125
    i32 129, label %125
    i32 133, label %141
    i32 135, label %158
    i32 134, label %175
    i32 132, label %184
  ]

53:                                               ; preds = %40
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = call i8* @sec2annotation(i8* %55)
  %57 = load i8*, i8** %14, align 8
  %58 = load i8*, i8** %21, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = call i8* @sec2annotation(i8* %59)
  %61 = load i8*, i8** %17, align 8
  %62 = load i8*, i8** %22, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = call i8* @sec2annotation(i8* %64)
  %66 = load i8*, i8** %17, align 8
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.6, i64 0, i64 0), i8* %56, i8* %57, i8* %58, i8* %60, i8* %61, i8* %62, i8* %63, i8* %65, i8* %66)
  br label %185

68:                                               ; preds = %40
  %69 = load i8**, i8*** @symbol_white_list, align 8
  store i8** %69, i8*** %23, align 8
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8*, i8** %14, align 8
  %72 = load i8*, i8** %21, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = call i8* @sec2annotation(i8* %73)
  %75 = load i8*, i8** %17, align 8
  %76 = load i8*, i8** %22, align 8
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.7, i64 0, i64 0), i8* %71, i8* %72, i8* %74, i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %82, %68
  %79 = load i8**, i8*** %23, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @stderr, align 4
  %84 = load i8**, i8*** %23, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %23, align 8
  %86 = load i8*, i8** %84, align 8
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %86)
  br label %78

88:                                               ; preds = %78
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %185

91:                                               ; preds = %40
  %92 = load i32, i32* @stderr, align 4
  %93 = load i8*, i8** %14, align 8
  %94 = load i8*, i8** %21, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = load i8*, i8** %22, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = call i8* @sec2annotation(i8* %98)
  %100 = load i8*, i8** %17, align 8
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0), i8* %93, i8* %94, i8* %95, i8* %96, i8* %97, i8* %99, i8* %100)
  br label %185

102:                                              ; preds = %40
  %103 = load i8**, i8*** @symbol_white_list, align 8
  store i8** %103, i8*** %24, align 8
  %104 = load i32, i32* @stderr, align 4
  %105 = load i8*, i8** %14, align 8
  %106 = load i8*, i8** %21, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = call i8* @sec2annotation(i8* %107)
  %109 = load i8*, i8** %17, align 8
  %110 = load i8*, i8** %22, align 8
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0), i8* %105, i8* %106, i8* %108, i8* %109, i8* %110)
  br label %112

112:                                              ; preds = %116, %102
  %113 = load i8**, i8*** %24, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load i32, i32* @stderr, align 4
  %118 = load i8**, i8*** %24, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i32 1
  store i8** %119, i8*** %24, align 8
  %120 = load i8*, i8** %118, align 8
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %120)
  br label %112

122:                                              ; preds = %112
  %123 = load i32, i32* @stderr, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %185

125:                                              ; preds = %40, %40
  %126 = load i32, i32* @stderr, align 4
  %127 = load i8*, i8** %19, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = call i8* @sec2annotation(i8* %128)
  %130 = load i8*, i8** %14, align 8
  %131 = load i8*, i8** %20, align 8
  %132 = load i8*, i8** %21, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = call i8* @sec2annotation(i8* %133)
  %135 = load i8*, i8** %17, align 8
  %136 = load i8*, i8** %22, align 8
  %137 = load i8*, i8** %17, align 8
  %138 = load i8*, i8** %14, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.12, i64 0, i64 0), i8* %127, i8* %129, i8* %130, i8* %131, i8* %132, i8* %134, i8* %135, i8* %136, i8* %137, i8* %138, i8* %139)
  br label %185

141:                                              ; preds = %40
  %142 = load i32, i32* @stderr, align 4
  %143 = load i8*, i8** %19, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = call i8* @sec2annotation(i8* %144)
  %146 = load i8*, i8** %14, align 8
  %147 = load i8*, i8** %20, align 8
  %148 = load i8*, i8** %21, align 8
  %149 = load i8*, i8** %16, align 8
  %150 = call i8* @sec2annotation(i8* %149)
  %151 = load i8*, i8** %17, align 8
  %152 = load i8*, i8** %22, align 8
  %153 = load i8*, i8** %16, align 8
  %154 = call i8* @sec2annotation(i8* %153)
  %155 = load i8*, i8** %17, align 8
  %156 = load i8*, i8** %22, align 8
  %157 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([231 x i8], [231 x i8]* @.str.13, i64 0, i64 0), i8* %143, i8* %145, i8* %146, i8* %147, i8* %148, i8* %150, i8* %151, i8* %152, i8* %154, i8* %155, i8* %156)
  br label %185

158:                                              ; preds = %40
  %159 = load i32, i32* @stderr, align 4
  %160 = load i8*, i8** %19, align 8
  %161 = load i8*, i8** %12, align 8
  %162 = call i8* @sec2annotation(i8* %161)
  %163 = load i8*, i8** %14, align 8
  %164 = load i8*, i8** %20, align 8
  %165 = load i8*, i8** %21, align 8
  %166 = load i8*, i8** %16, align 8
  %167 = call i8* @sec2annotation(i8* %166)
  %168 = load i8*, i8** %17, align 8
  %169 = load i8*, i8** %22, align 8
  %170 = load i8*, i8** %16, align 8
  %171 = call i8* @sec2annotation(i8* %170)
  %172 = load i8*, i8** %17, align 8
  %173 = load i8*, i8** %22, align 8
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([231 x i8], [231 x i8]* @.str.14, i64 0, i64 0), i8* %160, i8* %162, i8* %163, i8* %164, i8* %165, i8* %167, i8* %168, i8* %169, i8* %171, i8* %172, i8* %173)
  br label %185

175:                                              ; preds = %40
  %176 = load i32, i32* @stderr, align 4
  %177 = load i8*, i8** %17, align 8
  %178 = load i8*, i8** %16, align 8
  %179 = call i8* @sec2annotation(i8* %178)
  %180 = load i8*, i8** %16, align 8
  %181 = call i8* @sec2annotation(i8* %180)
  %182 = load i8*, i8** %17, align 8
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.15, i64 0, i64 0), i8* %177, i8* %179, i8* %181, i8* %182)
  br label %184

184:                                              ; preds = %40, %175
  br label %185

185:                                              ; preds = %40, %184, %158, %141, %125, %122, %91, %88, %53
  %186 = load i32, i32* @stderr, align 4
  %187 = call i32 (i32, i8*, ...) @fprintf(i32 %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %39
  ret void
}

declare dso_local i32 @warn(i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @sec2annotation(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
