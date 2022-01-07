; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_objdump_print_symname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_objdump_print_symname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i32, i32 (i32, i8*, i8*)* }

@do_demangle = common dso_local global i64 0, align 8
@DMGL_ANSI = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.disassemble_info*, i32*)* @objdump_print_symname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @objdump_print_symname(i32* %0, %struct.disassemble_info* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.disassemble_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.disassemble_info* %1, %struct.disassemble_info** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i8* @bfd_asymbol_name(i32* %9)
  store i8* %10, i8** %8, align 8
  %11 = load i64, i64* @do_demangle, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @DMGL_ANSI, align 4
  %23 = load i32, i32* @DMGL_PARAMS, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @bfd_demangle(i32* %20, i8* %21, i32 %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %28, %19
  br label %31

31:                                               ; preds = %30, %13, %3
  %32 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %33 = icmp ne %struct.disassemble_info* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %36 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %35, i32 0, i32 1
  %37 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %36, align 8
  %38 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %39 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 %37(i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %46

43:                                               ; preds = %31
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %34
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @free(i8* %50)
  br label %52

52:                                               ; preds = %49, %46
  ret void
}

declare dso_local i8* @bfd_asymbol_name(i32*) #1

declare dso_local i8* @bfd_demangle(i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
