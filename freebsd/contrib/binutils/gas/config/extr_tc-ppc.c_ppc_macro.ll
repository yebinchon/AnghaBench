; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_ppc_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_ppc_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerpc_macro = type { i32, i8* }

@.str = private unnamed_addr constant [25 x i8] c"wrong number of operands\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.powerpc_macro*)* @ppc_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc_macro(i8* %0, %struct.powerpc_macro* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.powerpc_macro*, align 8
  %5 = alloca [10 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.powerpc_macro* %1, %struct.powerpc_macro** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %2, %30
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = icmp uge i64 %16, 10
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %33

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds [10 x i8*], [10 x i8*]* %5, i64 0, i64 %23
  store i8* %20, i8** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 44)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %33

30:                                               ; preds = %19
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  store i8 0, i8* %31, align 1
  br label %14

33:                                               ; preds = %29, %18
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.powerpc_macro*, %struct.powerpc_macro** %4, align 8
  %36 = getelementptr inbounds %struct.powerpc_macro, %struct.powerpc_macro* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @as_bad(i32 %40)
  br label %131

42:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  %43 = load %struct.powerpc_macro*, %struct.powerpc_macro** %4, align 8
  %44 = getelementptr inbounds %struct.powerpc_macro, %struct.powerpc_macro* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %86, %42
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 37
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  br label %86

61:                                               ; preds = %51
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call i32 @strtol(i8* %63, i8** %11, i32 10)
  store i32 %64, i32* %10, align 4
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ne i8* %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ult i32 %69, %70
  br label %72

72:                                               ; preds = %68, %61
  %73 = phi i1 [ false, %61 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @know(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [10 x i8*], [10 x i8*]* %5, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %8, align 4
  %85 = load i8*, i8** %11, align 8
  store i8* %85, i8** %9, align 8
  br label %86

86:                                               ; preds = %72, %56
  br label %46

87:                                               ; preds = %46
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, 1
  %90 = call i64 @alloca(i32 %89)
  %91 = inttoptr i64 %90 to i8*
  store i8* %91, i8** %7, align 8
  store i8* %91, i8** %12, align 8
  %92 = load %struct.powerpc_macro*, %struct.powerpc_macro** %4, align 8
  %93 = getelementptr inbounds %struct.powerpc_macro, %struct.powerpc_macro* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %9, align 8
  br label %95

95:                                               ; preds = %126, %87
  %96 = load i8*, i8** %9, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %95
  %101 = load i8*, i8** %9, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 37
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %9, align 8
  %108 = load i8, i8* %106, align 1
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %7, align 8
  store i8 %108, i8* %109, align 1
  br label %126

111:                                              ; preds = %100
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = call i32 @strtol(i8* %113, i8** %11, i32 10)
  store i32 %114, i32* %10, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %10, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [10 x i8*], [10 x i8*]* %5, i64 0, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strcpy(i8* %115, i8* %119)
  %121 = load i8*, i8** %7, align 8
  %122 = call i64 @strlen(i8* %121)
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 %122
  store i8* %124, i8** %7, align 8
  %125 = load i8*, i8** %11, align 8
  store i8* %125, i8** %9, align 8
  br label %126

126:                                              ; preds = %111, %105
  br label %95

127:                                              ; preds = %95
  %128 = load i8*, i8** %7, align 8
  store i8 0, i8* %128, align 1
  %129 = load i8*, i8** %12, align 8
  %130 = call i32 @md_assemble(i8* %129)
  br label %131

131:                                              ; preds = %127, %39
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @know(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @md_assemble(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
