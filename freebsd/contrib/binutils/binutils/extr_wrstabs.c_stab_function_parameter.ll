; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_function_parameter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_function_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i32 }

@N_PSYM = common dso_local global i32 0, align 4
@N_RSYM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s:%c%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @stab_function_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_function_parameter(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stab_write_handle*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %16, %struct.stab_write_handle** %10, align 8
  %17 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %18 = call i8* @stab_pop_type(%struct.stab_write_handle* %17)
  store i8* %18, i8** %11, align 8
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %20 [
    i32 128, label %22
    i32 129, label %24
    i32 131, label %26
    i32 130, label %28
  ]

20:                                               ; preds = %4
  %21 = call i32 (...) @abort() #3
  unreachable

22:                                               ; preds = %4
  %23 = load i32, i32* @N_PSYM, align 4
  store i32 %23, i32* %13, align 4
  store i8 112, i8* %14, align 1
  br label %30

24:                                               ; preds = %4
  %25 = load i32, i32* @N_RSYM, align 4
  store i32 %25, i32* %13, align 4
  store i8 80, i8* %14, align 1
  br label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @N_PSYM, align 4
  store i32 %27, i32* %13, align 4
  store i8 118, i8* %14, align 1
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @N_RSYM, align 4
  store i32 %29, i32* %13, align 4
  store i8 97, i8* %14, align 1
  br label %30

30:                                               ; preds = %28, %26, %24, %22
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = load i8*, i8** %11, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = add nsw i64 %32, %34
  %36 = add nsw i64 %35, 3
  %37 = call i64 @xmalloc(i64 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %14, align 1
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %40, i8 signext %41, i8* %42)
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @stab_write_symbol(%struct.stab_write_handle* %46, i32 %47, i32 0, i32 %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %30
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %5, align 4
  br label %58

54:                                               ; preds = %30
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %52
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8 signext, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stab_write_symbol(%struct.stab_write_handle*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
