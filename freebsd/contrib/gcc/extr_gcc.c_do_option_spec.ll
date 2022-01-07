; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_do_option_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_do_option_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32* }

@configure_default_options = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%(VALUE)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @do_option_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_option_spec(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @configure_default_options, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %117

19:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @configure_default_options, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %22)
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @configure_default_options, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @strcmp(i32* %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %40

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %20

40:                                               ; preds = %35, %20
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @configure_default_options, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %42)
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %117

46:                                               ; preds = %40
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @configure_default_options, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @strlen(i8* %53)
  store i32 %54, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %55 = load i8*, i8** %4, align 8
  store i8* %55, i8** %8, align 8
  br label %56

56:                                               ; preds = %60, %46
  %57 = load i8*, i8** %8, align 8
  %58 = call i8* @strstr(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %58, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %56

65:                                               ; preds = %56
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %72 = sub i32 %70, %71
  %73 = mul i32 %69, %72
  %74 = add i32 %68, %73
  %75 = call i8* @alloca(i32 %74)
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %11, align 8
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %4, align 8
  store i8* %77, i8** %9, align 8
  br label %78

78:                                               ; preds = %82, %65
  %79 = load i8*, i8** %9, align 8
  %80 = call i8* @strstr(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %80, i8** %8, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %111

82:                                               ; preds = %78
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memcpy(i8* %83, i8* %84, i32 %90)
  %92 = load i8*, i8** %12, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = getelementptr inbounds i8, i8* %92, i64 %97
  store i8* %98, i8** %12, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @memcpy(i8* %99, i8* %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i8*, i8** %12, align 8
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %12, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8* %110, i8** %9, align 8
  br label %78

111:                                              ; preds = %78
  %112 = load i8*, i8** %12, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @strcpy(i8* %112, i8* %113)
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @do_self_spec(i8* %115)
  br label %117

117:                                              ; preds = %111, %45, %18
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @do_self_spec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
