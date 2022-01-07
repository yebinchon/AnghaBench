; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_is_suppressed_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_is_suppressed_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"_ada_\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"___\00", align 1
@ada_opname_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_suppressed_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_suppressed_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @DEPRECATED_STREQN(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 5
  store i8* %12, i8** %3, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 95
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13
  store i32 1, i32* %2, align 4
  br label %116

26:                                               ; preds = %19
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @strstr(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 88
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %116

38:                                               ; preds = %31, %26
  %39 = load i8*, i8** %5, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8* %46, i8** %5, align 8
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 -1
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %112, %47
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %54, label %115

54:                                               ; preds = %50
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @isupper(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %111

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 88
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 -1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 95
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %110

72:                                               ; preds = %65, %59
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 79
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %2, align 4
  br label %116

78:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %106, %78
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ada_opname_table, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %109

87:                                               ; preds = %79
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ada_opname_table, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ada_opname_table, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = call i64 @DEPRECATED_STREQN(i8* %93, i8* %94, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %87
  br label %110

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %79

109:                                              ; preds = %79
  store i32 1, i32* %2, align 4
  br label %116

110:                                              ; preds = %104, %71
  br label %111

111:                                              ; preds = %110, %54
  br label %112

112:                                              ; preds = %111
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 -1
  store i8* %114, i8** %4, align 8
  br label %50

115:                                              ; preds = %50
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %109, %77, %37, %25
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @DEPRECATED_STREQN(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
