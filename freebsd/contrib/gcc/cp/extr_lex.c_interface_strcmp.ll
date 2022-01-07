; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_lex.c_interface_strcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_lex.c_interface_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.impl_files = type { i8*, %struct.impl_files* }

@impl_file_chain = common dso_local global %struct.impl_files* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @interface_strcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interface_strcmp(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.impl_files*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load %struct.impl_files*, %struct.impl_files** @impl_file_chain, align 8
  store %struct.impl_files* %7, %struct.impl_files** %4, align 8
  br label %8

8:                                                ; preds = %87, %1
  %9 = load %struct.impl_files*, %struct.impl_files** %4, align 8
  %10 = icmp ne %struct.impl_files* %9, null
  br i1 %10, label %11, label %91

11:                                               ; preds = %8
  %12 = load %struct.impl_files*, %struct.impl_files** %4, align 8
  %13 = getelementptr inbounds %struct.impl_files, %struct.impl_files* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %3, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %11
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %11
  br label %87

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %30
  %44 = phi i1 [ false, %30 ], [ %42, %38 ]
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  br label %30

50:                                               ; preds = %43
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %92

59:                                               ; preds = %50
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @strchr(i8* %60, i8 signext 46)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strchr(i8* %64, i8 signext 46)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %59
  br label %87

68:                                               ; preds = %63
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 -1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 46
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 -1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 46
  br i1 %84, label %85, label %86

85:                                               ; preds = %79, %73, %68
  br label %87

86:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %92

87:                                               ; preds = %85, %67, %28
  %88 = load %struct.impl_files*, %struct.impl_files** %4, align 8
  %89 = getelementptr inbounds %struct.impl_files, %struct.impl_files* %88, i32 0, i32 1
  %90 = load %struct.impl_files*, %struct.impl_files** %89, align 8
  store %struct.impl_files* %90, %struct.impl_files** %4, align 8
  br label %8

91:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %86, %58
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
