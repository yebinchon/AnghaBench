; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_spec_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_spec_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spec_path_info = type { i64, i8*, i64, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @spec_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @spec_path(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spec_path_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.spec_path_info*
  store %struct.spec_path_info* %10, %struct.spec_path_info** %6, align 8
  store i64 0, i64* %7, align 8
  store i8 0, i8* %8, align 1
  %11 = load %struct.spec_path_info*, %struct.spec_path_info** %6, align 8
  %12 = getelementptr inbounds %struct.spec_path_info, %struct.spec_path_info* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @IS_ABSOLUTE_PATH(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %96

20:                                               ; preds = %15, %2
  %21 = load %struct.spec_path_info*, %struct.spec_path_info** %6, align 8
  %22 = getelementptr inbounds %struct.spec_path_info, %struct.spec_path_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %7, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load %struct.spec_path_info*, %struct.spec_path_info** %6, align 8
  %32 = getelementptr inbounds %struct.spec_path_info, %struct.spec_path_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.spec_path_info*, %struct.spec_path_info** %6, align 8
  %35 = getelementptr inbounds %struct.spec_path_info, %struct.spec_path_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i32 @memcpy(i8* %30, i32 %33, i64 %37)
  br label %39

39:                                               ; preds = %25, %20
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @is_directory(i8* %40, i32 1)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i8* null, i8** %3, align 8
  br label %96

44:                                               ; preds = %39
  %45 = load %struct.spec_path_info*, %struct.spec_path_info** %6, align 8
  %46 = getelementptr inbounds %struct.spec_path_info, %struct.spec_path_info* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @do_spec_1(i8* %47, i32 1, i32* null)
  %49 = load %struct.spec_path_info*, %struct.spec_path_info** %6, align 8
  %50 = getelementptr inbounds %struct.spec_path_info, %struct.spec_path_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = call i32 @do_spec_1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  br label %55

55:                                               ; preds = %53, %44
  %56 = load %struct.spec_path_info*, %struct.spec_path_info** %6, align 8
  %57 = getelementptr inbounds %struct.spec_path_info, %struct.spec_path_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %55
  %61 = load i8*, i8** %4, align 8
  %62 = call i64 @strlen(i8* %61)
  store i64 %62, i64* %7, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %8, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = sub i64 %69, 1
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @IS_DIR_SEPARATOR(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %60
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %7, align 8
  %78 = sub i64 %77, 1
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8 0, i8* %79, align 1
  br label %80

80:                                               ; preds = %75, %60
  br label %81

81:                                               ; preds = %80, %55
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @do_spec_1(i8* %82, i32 1, i32* null)
  %84 = call i32 @do_spec_1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  %85 = load %struct.spec_path_info*, %struct.spec_path_info** %6, align 8
  %86 = getelementptr inbounds %struct.spec_path_info, %struct.spec_path_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i8, i8* %8, align 1
  %91 = load i8*, i8** %4, align 8
  %92 = load i64, i64* %7, align 8
  %93 = sub i64 %92, 1
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 %90, i8* %94, align 1
  br label %95

95:                                               ; preds = %89, %81
  store i8* null, i8** %3, align 8
  br label %96

96:                                               ; preds = %95, %43, %19
  %97 = load i8*, i8** %3, align 8
  ret i8* %97
}

declare dso_local i32 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @is_directory(i8*, i32) #1

declare dso_local i32 @do_spec_1(i8*, i32, i32*) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
