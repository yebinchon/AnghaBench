; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_print_symbol_info_posix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_print_symbol_info_posix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extended_symbol_info = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extended_symbol_info*, i32*)* @print_symbol_info_posix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_symbol_info_posix(%struct.extended_symbol_info* %0, i32* %1) #0 {
  %3 = alloca %struct.extended_symbol_info*, align 8
  %4 = alloca i32*, align 8
  store %struct.extended_symbol_info* %0, %struct.extended_symbol_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %6 = call i32 @SYM_NAME(%struct.extended_symbol_info* %5)
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @print_symname(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6, i32* %7)
  %9 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %10 = call i32 @SYM_TYPE(%struct.extended_symbol_info* %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %13 = call i32 @SYM_TYPE(%struct.extended_symbol_info* %12)
  %14 = call i64 @bfd_is_undefined_symclass(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %33

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %21 = call i64 @SYM_VALUE(%struct.extended_symbol_info* %20)
  %22 = call i32 @print_value(i32* %19, i64 %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %24 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %25 = call i64 @SYM_SIZE(%struct.extended_symbol_info* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.extended_symbol_info*, %struct.extended_symbol_info** %3, align 8
  %30 = call i64 @SYM_SIZE(%struct.extended_symbol_info* %29)
  %31 = call i32 @print_value(i32* %28, i64 %30)
  br label %32

32:                                               ; preds = %27, %18
  br label %33

33:                                               ; preds = %32, %16
  ret void
}

declare dso_local i32 @print_symname(i8*, i32, i32*) #1

declare dso_local i32 @SYM_NAME(%struct.extended_symbol_info*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @SYM_TYPE(%struct.extended_symbol_info*) #1

declare dso_local i64 @bfd_is_undefined_symclass(i32) #1

declare dso_local i32 @print_value(i32*, i64) #1

declare dso_local i64 @SYM_VALUE(%struct.extended_symbol_info*) #1

declare dso_local i64 @SYM_SIZE(%struct.extended_symbol_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
