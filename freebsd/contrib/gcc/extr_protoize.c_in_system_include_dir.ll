; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_in_system_include_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_in_system_include_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.default_include = type { i64 }

@cpp_include_defaults = common dso_local global %struct.default_include* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @in_system_include_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_system_include_dir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.default_include*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @IS_ABSOLUTE_PATH(i8* %5)
  %7 = call i32 @gcc_assert(i32 %6)
  %8 = load %struct.default_include*, %struct.default_include** @cpp_include_defaults, align 8
  store %struct.default_include* %8, %struct.default_include** %4, align 8
  br label %9

9:                                                ; preds = %37, %1
  %10 = load %struct.default_include*, %struct.default_include** %4, align 8
  %11 = getelementptr inbounds %struct.default_include, %struct.default_include* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.default_include*, %struct.default_include** %4, align 8
  %17 = getelementptr inbounds %struct.default_include, %struct.default_include* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.default_include*, %struct.default_include** %4, align 8
  %20 = getelementptr inbounds %struct.default_include, %struct.default_include* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @strlen(i64 %21)
  %23 = call i32 @strncmp(i8* %15, i64 %18, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %14
  %26 = load i8*, i8** %3, align 8
  %27 = load %struct.default_include*, %struct.default_include** %4, align 8
  %28 = getelementptr inbounds %struct.default_include, %struct.default_include* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @strlen(i64 %29)
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @IS_DIR_SEPARATOR(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %41

36:                                               ; preds = %25, %14
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.default_include*, %struct.default_include** %4, align 8
  %39 = getelementptr inbounds %struct.default_include, %struct.default_include* %38, i32 1
  store %struct.default_include* %39, %struct.default_include** %4, align 8
  br label %9

40:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i32 @strncmp(i8*, i64, i64) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
