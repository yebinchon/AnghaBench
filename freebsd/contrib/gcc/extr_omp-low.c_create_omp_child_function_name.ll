; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_create_omp_child_function_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_create_omp_child_function_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_decl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"_omp_fn\00", align 1
@tmp_ompfn_id_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_omp_child_function_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_omp_child_function_name() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @current_function_decl, align 4
  %6 = call i32 @DECL_ASSEMBLER_NAME(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i64 @IDENTIFIER_LENGTH(i32 %7)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = add i64 %9, 8
  %11 = trunc i64 %10 to i32
  %12 = call i8* @alloca(i32 %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @IDENTIFIER_POINTER(i32 %14)
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @memcpy(i8* %13, i32 %15, i64 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 46, i8* %24, align 1
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* @tmp_ompfn_id_num, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @tmp_ompfn_id_num, align 4
  %29 = call i32 @ASM_FORMAT_PRIVATE_NAME(i8* %25, i8* %26, i32 %27)
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @get_identifier(i8* %30)
  ret i32 %31
}

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i64 @IDENTIFIER_LENGTH(i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ASM_FORMAT_PRIVATE_NAME(i8*, i8*, i32) #1

declare dso_local i32 @get_identifier(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
