; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_load_depfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_load_depfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"can't find %s for reading\0A\00", align 1
@IA64_DVS_OTHER = common dso_local global i32 0, align 4
@IA64_DV_WAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @load_depfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_depfile(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @fail(i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @fgets(i8* %22, i32 1024, i32* %23)
  br label %25

25:                                               ; preds = %154, %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @feof(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %155

30:                                               ; preds = %25
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @fgets(i8* %31, i32 1024, i32* %32)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %155

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %46, %36
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %39 = call i32 @strlen(i8* %38)
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @ISSPACE(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %48 = call i32 @strlen(i8* %47)
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  br label %37

52:                                               ; preds = %37
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %53, i8** %8, align 8
  store i8* %53, i8** %7, align 8
  br label %54

54:                                               ; preds = %59, %52
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 59
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %8, align 8
  br label %54

62:                                               ; preds = %54
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  store i8 0, i8* %63, align 1
  br label %65

65:                                               ; preds = %70, %62
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @ISSPACE(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  br label %65

73:                                               ; preds = %65
  %74 = load i8*, i8** %8, align 8
  store i8* %74, i8** %11, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i8* @strchr(i8* %75, i8 signext 59)
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = call i32 (...) @abort() #3
  unreachable

81:                                               ; preds = %73
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  store i8 0, i8* %82, align 1
  br label %84

84:                                               ; preds = %89, %81
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @ISSPACE(i8 signext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %8, align 8
  br label %84

92:                                               ; preds = %84
  %93 = load i8*, i8** %8, align 8
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = call i8* @strchr(i8* %94, i8 signext 59)
  store i8* %95, i8** %8, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = call i32 (...) @abort() #3
  unreachable

100:                                              ; preds = %92
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %8, align 8
  store i8 0, i8* %101, align 1
  br label %103

103:                                              ; preds = %108, %100
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = call i64 @ISSPACE(i8 signext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %8, align 8
  br label %103

111:                                              ; preds = %103
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @parse_semantics(i8* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @IA64_DVS_OTHER, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i8*, i8** %8, align 8
  %119 = call i8* @xstrdup(i8* %118)
  br label %121

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %117
  %122 = phi i8* [ %119, %117 ], [ null, %120 ]
  store i8* %122, i8** %10, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @IA64_DV_WAW, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %121
  %127 = load i8*, i8** %11, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = call i64 @strcmp(i8* %127, i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @add_dep(i8* %132, i8* %133, i8* %134, i32 %135, i32 %136, i8* %137, i32 0)
  %139 = load i8*, i8** %7, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load i8*, i8** %10, align 8
  %145 = call i32 @add_dep(i8* %139, i8* %140, i8* %141, i32 %142, i32 %143, i8* %144, i32 1)
  br label %154

146:                                              ; preds = %126, %121
  %147 = load i8*, i8** %7, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i8*, i8** %10, align 8
  %153 = call i32 @add_dep(i8* %147, i8* %148, i8* %149, i32 %150, i32 %151, i8* %152, i32 0)
  br label %154

154:                                              ; preds = %146, %131
  br label %25

155:                                              ; preds = %35, %25
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @fclose(i32* %156)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fail(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @parse_semantics(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @add_dep(i8*, i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
