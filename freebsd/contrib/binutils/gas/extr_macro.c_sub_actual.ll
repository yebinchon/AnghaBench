; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_sub_actual.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_sub_actual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_control = type { i32 }
%struct.TYPE_12__ = type { i8*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_12__ }

@macro_strip_at = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.hash_control*, i32, %struct.TYPE_12__*, i32)* @sub_actual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sub_actual(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, %struct.hash_control* %3, i32 %4, %struct.TYPE_12__* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.hash_control*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store %struct.hash_control* %3, %struct.hash_control** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @get_apost_token(i32 %17, %struct.TYPE_12__* %18, %struct.TYPE_12__* %19, i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i64, i64* @macro_strip_at, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %7
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 64
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 64
  br i1 %41, label %42, label %43

42:                                               ; preds = %31, %27
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %16, align 8
  br label %49

43:                                               ; preds = %31, %24, %7
  %44 = load %struct.hash_control*, %struct.hash_control** %11, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = call i32 @sb_terminate(%struct.TYPE_12__* %45)
  %47 = call i64 @hash_find(%struct.hash_control* %44, i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %16, align 8
  br label %49

49:                                               ; preds = %43, %42
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %51 = icmp ne %struct.TYPE_13__* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = call i32 @sb_add_sb(%struct.TYPE_12__* %59, %struct.TYPE_12__* %61)
  br label %68

63:                                               ; preds = %52
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = call i32 @sb_add_sb(%struct.TYPE_12__* %64, %struct.TYPE_12__* %66)
  br label %68

68:                                               ; preds = %63, %58
  br label %93

69:                                               ; preds = %49
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 38
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %74 = call i32 @sb_add_char(%struct.TYPE_12__* %73, i8 signext 38)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = call i32 @sb_add_sb(%struct.TYPE_12__* %75, %struct.TYPE_12__* %76)
  br label %92

78:                                               ; preds = %69
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %84 = call i32 @sb_add_sb(%struct.TYPE_12__* %82, %struct.TYPE_12__* %83)
  br label %91

85:                                               ; preds = %78
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %87 = call i32 @sb_add_char(%struct.TYPE_12__* %86, i8 signext 92)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = call i32 @sb_add_sb(%struct.TYPE_12__* %88, %struct.TYPE_12__* %89)
  br label %91

91:                                               ; preds = %85, %81
  br label %92

92:                                               ; preds = %91, %72
  br label %93

93:                                               ; preds = %92, %68
  %94 = load i32, i32* %15, align 4
  ret i32 %94
}

declare dso_local i32 @get_apost_token(i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @hash_find(%struct.hash_control*, i32) #1

declare dso_local i32 @sb_terminate(%struct.TYPE_12__*) #1

declare dso_local i32 @sb_add_sb(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @sb_add_char(%struct.TYPE_12__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
