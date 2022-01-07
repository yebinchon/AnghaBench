; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_arm_pt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_arm_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32 }

@ARM_DEMANGLING = common dso_local global i64 0, align 8
@HP_DEMANGLING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"__pt__\00", align 1
@AUTO_DEMANGLING = common dso_local global i64 0, align 8
@EDG_DEMANGLING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"__tm__\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"__ps__\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"__S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8*, i32, i8**, i8**)* @arm_pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_pt(%struct.work_stuff* %0, i8* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.work_stuff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.work_stuff* %0, %struct.work_stuff** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = load i64, i64* @ARM_DEMANGLING, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* @HP_DEMANGLING, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %17, %5
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @strstr(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load i8**, i8*** %10, align 8
  store i8* %22, i8** %23, align 8
  %24 = icmp ne i8* %22, null
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load i8**, i8*** %10, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 6
  %29 = load i8**, i8*** %11, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i8**, i8*** %11, align 8
  %31 = call i32 @consume_count(i8** %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %150

35:                                               ; preds = %25
  %36 = load i8**, i8*** %11, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = icmp eq i8* %40, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %35
  %47 = load i8**, i8*** %11, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 95
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i8**, i8*** %11, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %53, align 8
  store i32 1, i32* %6, align 4
  br label %150

56:                                               ; preds = %46, %35
  br label %57

57:                                               ; preds = %56, %20, %17
  %58 = load i64, i64* @AUTO_DEMANGLING, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* @EDG_DEMANGLING, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %149

63:                                               ; preds = %60, %57
  %64 = load i8*, i8** %8, align 8
  %65 = call i8* @strstr(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i8**, i8*** %10, align 8
  store i8* %65, i8** %66, align 8
  %67 = icmp ne i8* %65, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %8, align 8
  %70 = call i8* @strstr(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i8**, i8*** %10, align 8
  store i8* %70, i8** %71, align 8
  %72 = icmp ne i8* %70, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = call i8* @strstr(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %76 = load i8**, i8*** %10, align 8
  store i8* %75, i8** %76, align 8
  %77 = icmp ne i8* %75, null
  br i1 %77, label %78, label %110

78:                                               ; preds = %73, %68, %63
  %79 = load i8**, i8*** %10, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 6
  %82 = load i8**, i8*** %11, align 8
  store i8* %81, i8** %82, align 8
  %83 = load i8**, i8*** %11, align 8
  %84 = call i32 @consume_count(i8** %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %150

88:                                               ; preds = %78
  %89 = load i8**, i8*** %11, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = icmp eq i8* %93, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %88
  %100 = load i8**, i8*** %11, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 95
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i8**, i8*** %11, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %106, align 8
  store i32 1, i32* %6, align 4
  br label %150

109:                                              ; preds = %99, %88
  br label %148

110:                                              ; preds = %73
  %111 = load i8*, i8** %8, align 8
  %112 = call i8* @strstr(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i8**, i8*** %10, align 8
  store i8* %112, i8** %113, align 8
  %114 = icmp ne i8* %112, null
  br i1 %114, label %115, label %147

115:                                              ; preds = %110
  %116 = load i8**, i8*** %10, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  %119 = load i8**, i8*** %11, align 8
  store i8* %118, i8** %119, align 8
  %120 = load i8**, i8*** %11, align 8
  %121 = call i32 @consume_count(i8** %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  store i32 0, i32* %6, align 4
  br label %150

125:                                              ; preds = %115
  %126 = load i8**, i8*** %11, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8*, i8** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = icmp eq i8* %130, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %125
  %137 = load i8**, i8*** %11, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 95
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i8**, i8*** %11, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %143, align 8
  store i32 1, i32* %6, align 4
  br label %150

146:                                              ; preds = %136, %125
  br label %147

147:                                              ; preds = %146, %110
  br label %148

148:                                              ; preds = %147, %109
  br label %149

149:                                              ; preds = %148, %60
  store i32 0, i32* %6, align 4
  br label %150

150:                                              ; preds = %149, %142, %124, %105, %87, %52, %34
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @consume_count(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
