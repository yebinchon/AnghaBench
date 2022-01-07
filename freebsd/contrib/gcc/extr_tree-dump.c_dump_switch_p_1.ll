; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_dump_switch_p_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_dump_switch_p_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_option_value_info = type { i8*, i32 }
%struct.dump_file_info = type { i32, i32, i32*, i32, i32 }

@dump_options = common dso_local global %struct.dump_option_value_info* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"ignoring unknown option %q.*s in %<-fdump-%s%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dump_file_info*, i32)* @dump_switch_p_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_switch_p_1(i8* %0, %struct.dump_file_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dump_file_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dump_option_value_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.dump_file_info* %1, %struct.dump_file_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.dump_file_info*, %struct.dump_file_info** %6, align 8
  %18 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %131

22:                                               ; preds = %16, %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.dump_file_info*, %struct.dump_file_info** %6, align 8
  %28 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.dump_file_info*, %struct.dump_file_info** %6, align 8
  %32 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %29, %26 ], [ %33, %30 ]
  %36 = call i8* @skip_leading_substring(i8* %23, i32 %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %131

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %111, %40
  %43 = load i8*, i8** %9, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %113

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %52, %46
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 45
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  br label %47

55:                                               ; preds = %47
  %56 = load i8*, i8** %9, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 45)
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8* %65, i8** %12, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load %struct.dump_option_value_info*, %struct.dump_option_value_info** @dump_options, align 8
  store %struct.dump_option_value_info* %73, %struct.dump_option_value_info** %11, align 8
  br label %74

74:                                               ; preds = %101, %66
  %75 = load %struct.dump_option_value_info*, %struct.dump_option_value_info** %11, align 8
  %76 = getelementptr inbounds %struct.dump_option_value_info, %struct.dump_option_value_info* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %104

79:                                               ; preds = %74
  %80 = load %struct.dump_option_value_info*, %struct.dump_option_value_info** %11, align 8
  %81 = getelementptr inbounds %struct.dump_option_value_info, %struct.dump_option_value_info* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = load i32, i32* %13, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %79
  %87 = load %struct.dump_option_value_info*, %struct.dump_option_value_info** %11, align 8
  %88 = getelementptr inbounds %struct.dump_option_value_info, %struct.dump_option_value_info* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @memcmp(i8* %89, i8* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %86
  %95 = load %struct.dump_option_value_info*, %struct.dump_option_value_info** %11, align 8
  %96 = getelementptr inbounds %struct.dump_option_value_info, %struct.dump_option_value_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %111

100:                                              ; preds = %86, %79
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.dump_option_value_info*, %struct.dump_option_value_info** %11, align 8
  %103 = getelementptr inbounds %struct.dump_option_value_info, %struct.dump_option_value_info* %102, i32 1
  store %struct.dump_option_value_info* %103, %struct.dump_option_value_info** %11, align 8
  br label %74

104:                                              ; preds = %74
  %105 = load i32, i32* %13, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = load %struct.dump_file_info*, %struct.dump_file_info** %6, align 8
  %108 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @warning(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %105, i8* %106, i32 %109)
  br label %111

111:                                              ; preds = %104, %94
  %112 = load i8*, i8** %12, align 8
  store i8* %112, i8** %9, align 8
  br label %42

113:                                              ; preds = %42
  %114 = load %struct.dump_file_info*, %struct.dump_file_info** %6, align 8
  %115 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %114, i32 0, i32 0
  store i32 -1, i32* %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.dump_file_info*, %struct.dump_file_info** %6, align 8
  %118 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.dump_file_info*, %struct.dump_file_info** %6, align 8
  %122 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %113
  %126 = load %struct.dump_file_info*, %struct.dump_file_info** %6, align 8
  %127 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @dump_enable_all(i32 %128, i32 0)
  br label %130

130:                                              ; preds = %125, %113
  store i32 1, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %39, %21
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i8* @skip_leading_substring(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @warning(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @dump_enable_all(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
