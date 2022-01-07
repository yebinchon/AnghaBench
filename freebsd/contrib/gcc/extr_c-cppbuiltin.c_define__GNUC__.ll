; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-cppbuiltin.c_define__GNUC__.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-cppbuiltin.c_define__GNUC__.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@version_string = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"__GNUC__\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"__GNUG__\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"__GNUC_MINOR__\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"__GNUC_PATCHLEVEL__\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @define__GNUC__ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define__GNUC__() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @version_string, align 8
  store i8* %3, i8** %2, align 8
  br label %4

4:                                                ; preds = %17, %0
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = call i32 @ISDIGIT(i8 signext %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi i1 [ false, %4 ], [ %14, %9 ]
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %2, align 8
  br label %4

20:                                               ; preds = %15
  %21 = load i8*, i8** %2, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i8*, i8** %2, align 8
  %27 = load i8*, i8** @version_string, align 8
  %28 = icmp ule i8* %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 -1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i1 [ true, %25 ], [ %34, %29 ]
  br label %37

37:                                               ; preds = %35, %20
  %38 = phi i1 [ false, %20 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @gcc_assert(i32 %39)
  %41 = load i8*, i8** %2, align 8
  store i8* %41, i8** %1, align 8
  br label %42

42:                                               ; preds = %47, %37
  %43 = load i8*, i8** %2, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @ISDIGIT(i8 signext %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %2, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %2, align 8
  br label %42

50:                                               ; preds = %42
  %51 = load i8*, i8** %1, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = load i8*, i8** %1, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @builtin_define_with_value_n(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %57)
  %59 = call i64 (...) @c_dialect_cxx()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load i8*, i8** %1, align 8
  %63 = load i8*, i8** %2, align 8
  %64 = load i8*, i8** %1, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @builtin_define_with_value_n(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %62, i32 %68)
  br label %70

70:                                               ; preds = %61, %50
  %71 = load i8*, i8** %2, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i8*, i8** %2, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @ISDIGIT(i8 signext %78)
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %75, %70
  %82 = phi i1 [ false, %70 ], [ %80, %75 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @gcc_assert(i32 %83)
  %85 = load i8*, i8** %2, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %2, align 8
  store i8* %86, i8** %1, align 8
  br label %87

87:                                               ; preds = %92, %81
  %88 = load i8*, i8** %2, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call i32 @ISDIGIT(i8 signext %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i8*, i8** %2, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %2, align 8
  br label %87

95:                                               ; preds = %87
  %96 = load i8*, i8** %1, align 8
  %97 = load i8*, i8** %2, align 8
  %98 = load i8*, i8** %1, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @builtin_define_with_value_n(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %96, i32 %102)
  %104 = load i8*, i8** %2, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 46
  br i1 %107, label %108, label %133

108:                                              ; preds = %95
  %109 = load i8*, i8** %2, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = call i32 @ISDIGIT(i8 signext %111)
  %113 = call i32 @gcc_assert(i32 %112)
  %114 = load i8*, i8** %2, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %2, align 8
  store i8* %115, i8** %1, align 8
  br label %116

116:                                              ; preds = %121, %108
  %117 = load i8*, i8** %2, align 8
  %118 = load i8, i8* %117, align 1
  %119 = call i32 @ISDIGIT(i8 signext %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i8*, i8** %2, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %2, align 8
  br label %116

124:                                              ; preds = %116
  %125 = load i8*, i8** %1, align 8
  %126 = load i8*, i8** %2, align 8
  %127 = load i8*, i8** %1, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = call i32 @builtin_define_with_value_n(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %125, i32 %131)
  br label %135

133:                                              ; preds = %95
  %134 = call i32 @builtin_define_with_value_n(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %135

135:                                              ; preds = %133, %124
  %136 = load i8*, i8** %2, align 8
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = load i8*, i8** %2, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 32
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load i8*, i8** %2, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 45
  br label %149

149:                                              ; preds = %144, %139, %135
  %150 = phi i1 [ true, %139 ], [ true, %135 ], [ %148, %144 ]
  %151 = zext i1 %150 to i32
  %152 = call i32 @gcc_assert(i32 %151)
  ret void
}

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @builtin_define_with_value_n(i8*, i8*, i32) #1

declare dso_local i64 @c_dialect_cxx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
