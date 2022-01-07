; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_wild_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_wild_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"_ada_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @wild_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wild_match(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 5
  %16 = icmp sge i32 %13, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @DEPRECATED_STREQN(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 5
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @DEPRECATED_STREQN(i8* %22, i8* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 5
  %34 = call i64 @is_name_suffix(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %123

37:                                               ; preds = %28, %21, %17, %3
  br label %38

38:                                               ; preds = %121, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %122

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @DEPRECATED_STREQN(i8* %43, i8* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = call i64 @is_name_suffix(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %123

56:                                               ; preds = %48, %42
  br label %57

57:                                               ; preds = %85, %56
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %59, i8** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 46
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 95
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 95
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i1 [ true, %71 ], [ %82, %77 ]
  br label %85

85:                                               ; preds = %83, %65, %62
  %86 = phi i1 [ false, %65 ], [ false, %62 ], [ %84, %83 ]
  br i1 %86, label %57, label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %8, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %123

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 95
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @islower(i8 signext %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %123

104:                                              ; preds = %97
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  store i8* %106, i8** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 2
  store i32 %108, i32* %8, align 4
  br label %121

109:                                              ; preds = %91
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = call i32 @islower(i8 signext %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %123

116:                                              ; preds = %109
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  store i8* %118, i8** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %116, %104
  br label %38

122:                                              ; preds = %38
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %115, %103, %90, %55, %36
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @DEPRECATED_STREQN(i8*, i8*, i32) #1

declare dso_local i64 @is_name_suffix(i8*) #1

declare dso_local i32 @islower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
