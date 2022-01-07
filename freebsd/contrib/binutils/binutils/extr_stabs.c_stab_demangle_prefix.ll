; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_demangle_info = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"_\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stab_demangle_info*, i8**, i32)* @stab_demangle_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_demangle_prefix(%struct.stab_demangle_info* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stab_demangle_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.stab_demangle_info* %0, %struct.stab_demangle_info** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %8, align 8
  br label %57

18:                                               ; preds = %3
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  br label %21

21:                                               ; preds = %33, %18
  %22 = load i8*, i8** %8, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 95)
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 95
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  br i1 %34, label %21, label %35

35:                                               ; preds = %33
  %36 = load i8*, i8** %8, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @stab_bad_demangle(i8* %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %4, align 4
  br label %148

43:                                               ; preds = %35
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @strspn(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ugt i32 %48, 2
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = sub i32 %51, 2
  %53 = load i8*, i8** %8, align 8
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %8, align 8
  br label %56

56:                                               ; preds = %50, %43
  br label %57

57:                                               ; preds = %56, %12
  %58 = load i8*, i8** %8, align 8
  %59 = load i8**, i8*** %6, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %58, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %57
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @ISDIGIT(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %62
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 81
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 116
  br i1 %79, label %80, label %85

80:                                               ; preds = %74, %68, %62
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load i8**, i8*** %6, align 8
  store i8* %82, i8** %83, align 8
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %4, align 4
  br label %148

85:                                               ; preds = %74, %57
  %86 = load i8*, i8** %8, align 8
  %87 = load i8**, i8*** %6, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = icmp eq i8* %86, %88
  br i1 %89, label %90, label %132

90:                                               ; preds = %85
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @ISDIGIT(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %132, label %96

96:                                               ; preds = %90
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 116
  br i1 %101, label %102, label %132

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %108, %102
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 95
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %8, align 8
  br label %103

111:                                              ; preds = %103
  %112 = load i8*, i8** %8, align 8
  %113 = call i8* @strstr(i8* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %113, i8** %8, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %111
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %116, %111
  %123 = load i8**, i8*** %6, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @stab_bad_demangle(i8* %124)
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %4, align 4
  br label %148

127:                                              ; preds = %116
  %128 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %129 = load i8**, i8*** %6, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @stab_demangle_function_name(%struct.stab_demangle_info* %128, i8** %129, i8* %130)
  store i32 %131, i32* %4, align 4
  br label %148

132:                                              ; preds = %96, %90, %85
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %140 = load i8**, i8*** %6, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 @stab_demangle_function_name(%struct.stab_demangle_info* %139, i8** %140, i8* %141)
  store i32 %142, i32* %4, align 4
  br label %148

143:                                              ; preds = %132
  %144 = load i8**, i8*** %6, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @stab_bad_demangle(i8* %145)
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %143, %138, %127, %122, %80, %38
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @stab_bad_demangle(i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @stab_demangle_function_name(%struct.stab_demangle_info*, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
