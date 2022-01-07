; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_temp_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_temp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pex_obj = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1
@PEX_SUFFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pex_obj*, i32, i8*)* @temp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @temp_file(%struct.pex_obj* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pex_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pex_obj* %0, %struct.pex_obj** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %58

12:                                               ; preds = %3
  %13 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %14 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i8* @make_temp_file(i8* null)
  store i8* %18, i8** %7, align 8
  br label %57

19:                                               ; preds = %12
  %20 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %21 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @strlen(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %24, 6
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %28 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = getelementptr inbounds i32, i32* %32, i64 -6
  %34 = call i64 @strcmp(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %38 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i8* @xstrdup(i32* %39)
  store i8* %40, i8** %7, align 8
  br label %46

41:                                               ; preds = %26, %19
  %42 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %43 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i8* @concat(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %45, i8** %7, align 8
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @mkstemps(i8* %47, i32 0)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @free(i8* %52)
  store i8* null, i8** %4, align 8
  br label %81

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @close(i32 %55)
  br label %57

57:                                               ; preds = %54, %17
  br label %79

58:                                               ; preds = %3
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @PEX_SUFFIX, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %65 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* @make_temp_file(i8* %69)
  store i8* %70, i8** %7, align 8
  br label %77

71:                                               ; preds = %63
  %72 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %73 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i8* @concat(i32* %74, i8* %75, i32* null)
  store i8* %76, i8** %7, align 8
  br label %77

77:                                               ; preds = %71, %68
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %57
  %80 = load i8*, i8** %7, align 8
  store i8* %80, i8** %4, align 8
  br label %81

81:                                               ; preds = %79, %51
  %82 = load i8*, i8** %4, align 8
  ret i8* %82
}

declare dso_local i8* @make_temp_file(i8*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i8* @xstrdup(i32*) #1

declare dso_local i8* @concat(i32*, i8*, i32*) #1

declare dso_local i32 @mkstemps(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
