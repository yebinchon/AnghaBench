; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_give_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_give_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i8**, i32 }

@switches = common dso_local global %struct.TYPE_2__* null, align 8
@SWITCH_IGNORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@suffix_subst = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @give_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @give_switch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SWITCH_IGNORE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %115

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = call i32 @do_spec_1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @do_spec_1(i8* %28, i32 1, i32* null)
  br label %30

30:                                               ; preds = %21, %18
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i8**, i8*** %35, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %108

38:                                               ; preds = %30
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  store i8** %44, i8*** %5, align 8
  br label %45

45:                                               ; preds = %104, %38
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %107

49:                                               ; preds = %45
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %6, align 8
  %52 = call i32 @do_spec_1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null)
  %53 = load i8*, i8** @suffix_subst, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %100

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strlen(i8* %56)
  store i32 %57, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %86, %55
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %7, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @IS_DIR_SEPARATOR(i8 signext %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %62, %58
  %72 = phi i1 [ false, %58 ], [ %70, %62 ]
  br i1 %72, label %73, label %87

73:                                               ; preds = %71
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 46
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 0, i8* %85, align 1
  store i32 1, i32* %8, align 4
  br label %87

86:                                               ; preds = %73
  br label %58

87:                                               ; preds = %81, %71
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @do_spec_1(i8* %88, i32 1, i32* null)
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 46, i8* %96, align 1
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i8*, i8** @suffix_subst, align 8
  %99 = call i32 @do_spec_1(i8* %98, i32 1, i32* null)
  br label %103

100:                                              ; preds = %49
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @do_spec_1(i8* %101, i32 1, i32* null)
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i32 1
  store i8** %106, i8*** %5, align 8
  br label %45

107:                                              ; preds = %45
  br label %108

108:                                              ; preds = %107, %30
  %109 = call i32 @do_spec_1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null)
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %108, %17
  ret void
}

declare dso_local i32 @do_spec_1(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @IS_DIR_SEPARATOR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
